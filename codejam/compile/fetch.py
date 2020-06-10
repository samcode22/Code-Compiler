import mysql.connector
from mysql.connector import Error
try:
   mySQLconnection = mysql.connector.connect(host='localhost',
                             database='ashish',
                             user='ashish',
                             password='ashish2312#')
   sql_select_Query = "select * from dbtestapp_person"
   cursor = mySQLconnection.cursor()
   cursor.execute(sql_select_Query)
   records = cursor.fetchall()
   print("Total number of rows in python_developers is - ", cursor.rowcount)
   print ("Printing each row's column values i.e.  developer record")
   for row in records:
       print("Id = ", row[0], )
       print("Name = ", row[1])
       print("Data  = ", row[2], "\n")
   cursor.close()
   
except Error as e :
    print ("Error while connecting to MySQL", e)
finally:
    #closing database connection.
  
        print("MySQL connection is closed")
