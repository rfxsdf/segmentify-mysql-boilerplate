from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


current_clients = Blueprint('current_clients', __name__)

# Get all customer information from the DB
@current_clients.route('/customer_information', methods=['GET'])
def get_clients():
    cursor = db.get_db().cursor()
    cursor.execute('select Address, Phone,\
        contact_title, first_name, last_name, demographics, CI_Customer_ID,\
                   O_Order_ID from Customer_Information')
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
def get_orders():
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

@current_clients.route('/customer_information/demographics', methods=["GET"])
def get_demographics():
    cursor = db.get_db().cursor()
    cursor.execute('select Demographics from customer_information')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@current_clients.route('/client_products/<product_id>', methods=["GET"])
def get_products(product_id):
    cursor = db.get_db().cursor()
    cursor.execute('select * from client_products where product_id = {0}'.format(product_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@current_clients.route('/client_products/<product_id>', methods=["POST"])
def add_product():
    the_data = request.json
    current_app.logger.info(the_data)

    name = the_data["CP_Name"]
    price = the_data["Unit_Price"]
    product_id = the_data["Product_ID"]
    cat_id = the_data["Category_ID"]
    cc_id = the_data["Curr_Client_ID"]

    query = 'insert into client_products (name, price, product_id, cat_id, cc_id) values ("'
    query += name + '", "'
    query += str(price) + '", '
    query += product_id + "', "
    query += cat_id + ", "
    query += cc_id + ')'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Success!'

@current_clients.route('/client_products/<product_id>', methods=["DELETE"])
def delete_product(product_id):
    return f'Deleted product with product_id (product_id)'

@current_clients.route('/client_products/unit_price', methods=["GET"])
def get_unitprice():
    cursor = db.get_db().cursor()
    cursor.execute('select Unit_Price from Client_Products')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@current_clients.route('/client_products/<product_id>', methods=["PUT"])
def update_unitprice(product_id):
    new_data = request.get_json()

    cursor = db.get_db().cursor()
    original_price = cursor.execute('select Unit_Price from client_products where product_id = {0}'.format(product_id))
    original_price.data.update(new_data)
    db.session.commit()

    return f'Product with id (product_id) updated with new unit price (new_data)'

@current_clients.route('/applications/spending_analysis', methods=["GET"])
def get_spending_analysis():
    cursor = db.get_db().cursor()
    cursor.execute('select Spending_Analysis from Applications')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@current_clients.route('/applications/customer_report', methods=["GET"])
def get_customer_report():
    cursor = db.get_db().cursor()
    cursor.execute('select Customer_Report from Applications')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@current_clients.route('/applications/product_report', methods=["GET"])
def get_product_report():
    cursor = db.get_db().cursor()
    cursor.execute('select Product_Report from Applications')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response