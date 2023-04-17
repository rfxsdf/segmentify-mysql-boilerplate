from flask import Blueprint, request, jsonify, make_response
import json
from src import db


current_clients = Blueprint('current_clients', __name__)

# Get all customer information from the DB
@current_clients.route('/customer_information', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select Address, Phone,\
        contact_title, first_name, last_name, demographics, CI_Customer_ID,\
                   O_Order_ID from customer_information')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# # Get customer detail for customer with particular userID
@current_clients.route('/orders', methods=['GET'])
def get_customer():
     cursor = db.get_db().cursor()
     cursor.execute('select * from orders')
     row_headers = [x[0] for x in cursor.description]
     json_data = []
     theData = cursor.fetchall()
     for row in theData:
         json_data.append(dict(zip(row_headers, row)))
     the_response = make_response(jsonify(json_data))
     the_response.status_code = 200
     the_response.mimetype = 'application/json'
     return the_response