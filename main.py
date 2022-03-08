from flask import Flask, render_template,request,flash, redirect, url_for, session
import os
from flask_mysqldb import MySQL
from passlib.hash import sha256_crypt


app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = os.environ.get("Mysql_user")
app.config['MYSQL_PASSWORD'] = os.environ.get("Mysql_pass")
app.config['MYSQL_DB'] = 'FightCovid'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
app.secret_key = os.urandom(24)

mysql = MySQL()
mysql.init_app(app)


@app.route('/')
def Home():
    data = 'logged out'
    if 'user' in session:
        data = 'logged in'
    return render_template('Home.html',data=data)



@app.route('/login', methods=['GET','POST'])
def login():
    if 'user' in session:
        flash('Already loged in','danger')
        return redirect('/')

    if request.method == 'POST':
        email = request.form['Email']
        passcode = request.form['Password']
        
        cur = mysql.connection.cursor()
        cur.execute("select Uid,Password from USER where Email = %s",[email])
        data = cur.fetchone()
        cur.close()
        if data:
            password = data['Password']
            uid = data["Uid"]

            if sha256_crypt.verify(passcode,password):
                session['user'] = uid
                flash('Successfully logged in', 'success')
                return redirect('/')
            else:
                flash('Invalid Log In','danger')
        else:
            flash('User not Found','danger')
    
    return render_template('Login.html')

@app.route('/logout')
def logout():
    if 'user'  in session:
        session.pop('user')
        flash('Loged out','danger')
        return redirect('/')
    flash('Please Login First','danger')
    return redirect('/login')

@app.route('/register/', methods=['GET','POST'])
def register():

    if 'user' in session:
        flash('Already loged in','danger')
        return redirect('/')

    if request.method == 'POST':
        email = request.form['Email']
        
        cur = mysql.connection.cursor()
        cur.execute("select * from USER where Email = '{}'".format(email))
        data = cur.fetchone()
        cur.close()
        
        if data:
            flash('This Email is already Registered', 'danger')
            return redirect('/register')
        
        password = sha256_crypt.hash(str(request.form['Password']))
        name = request.form['Name']


        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO USER(Name, Email, Password) VALUES(%s, %s, %s)",(name, email, password))
        mysql.connection.commit()
        
        cur.close()

        
        flash('Registered successfully','success')
        return redirect('/login')
    return render_template("Register.html")

@app.route('/requests', methods=['GET', 'POST'])
def requests():
    if 'user' not in session:
        flash('Please Login First','danger')
        return redirect('/login')
    if request.method == 'POST':
        req = request.form['Requests']
        address = request.form['Address']
        city = request.form['City']
        zipcode = request.form['Zipcode']
        state = request.form['State']
        phone = request.form['Number']

        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO Requests(Uid, Requirnment, Address,city, state, zipcode,Pnumber ) VALUES(%s, %s, %s, %s, %s, %s, %s)",(session['user'], req, address,city,state,zipcode,phone))
        mysql.connection.commit()
        
        cur.close()
    
        flash('Request Sent','success')
        return redirect('/account')
    return render_template('Request.html')


@app.route('/helpothers',methods=['GET','POST'])
def helpothers():
    if 'user' not in session:
        flash('Please Login First','danger')
        return redirect('/login')
    
    if request.method == 'POST':
        location = request.form['Location']
        cur = mysql.connection.cursor()
        cur.execute("Select * from Requests where Address = %s or Zipcode = %s order by Rid desc",(location, location))
        data = cur.fetchall()
        cur.close()
        return render_template('HelpOthers.html',data=data)

    cur = mysql.connection.cursor()
    cur.execute("Select * from Requests order by Rid desc")
    data = cur.fetchall()
    cur.close()

    
    return render_template('HelpOthers.html',data=data)

@app.route('/account')
def account():
    if 'user' not in session:
        flash('Please Login First','danger')
        return redirect('/login')
    
    cur = mysql.connection.cursor()
    cur.execute("Select Requirnment, Rid, Address, city,state,Zipcode,Pnumber from  Requests where Requests.Uid = {}".format(session['user']))
    data = cur.fetchall()
    
    cur.execute("Select Name from USER where Uid = {}".format(session['user']))
    name = cur.fetchone()
    
    cur.close()

    
    return render_template('Account.html',data=data, name = name)

@app.route('/delete/<Rid>')
def delete(Rid):
    if 'user' not in session:
        flash('Please Login First','danger')
        return redirect('/login')
    
    cur = mysql.connection.cursor()
    cur.execute("delete from Requests where Rid = {}".format(Rid))
    mysql.connection.commit()
    cur.close()

    flash('Successfully deleted','success')
    return redirect('/account')


if __name__ == '__main__':
    app.run(debug=True ,host='0.0.0.0')     
