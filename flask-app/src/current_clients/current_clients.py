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

# Get information on all orders
@current_clients.route('/orders', methods=['GET'])
def get_orders():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Orders')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get all customer demographics information
@current_clients.route('/customer_information/demographics', methods=["GET"])
def get_demographics():
    cursor = db.get_db().cursor()
    cursor.execute('select Demographics from Customer_Information')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get all product ids from client products
@current_clients.route('/client_products/product_id', methods=["GET"])
def get_product_ids():
    cursor = db.get_db().cursor()
    cursor.execute('select Product_ID from Client_Products')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get description of specific products using product_id
@current_clients.route('/client_products/<product_id>', methods=["GET"])
def get_products(product_id):
    cursor = db.get_db().cursor()
    cursor.execute('select * from Client_Products where Product_Id = {0}'.format(product_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Add a new client product
@current_clients.route('/client_products', methods=["POST"])
def add_product():
    the_data = request.json
    current_app.logger.info(the_data)

    name = the_data["CP_Name"]
    price = the_data["Unit_Price"]
    product_id = the_data["Product_ID"]
    cat_id = the_data["Category_ID"]
    cc_id = the_data["Curr_Client_ID"]

    query = 'insert into Client_Products (CP_Name, Unit_Price, Product_ID, Category_ID, Curr_Client_ID) values ("'
    query += name + '", "'
    query += str(price) + '", '
    query += str(product_id) + ", " 
    query += str(cat_id) + ", "
    query += str(cc_id) + ')'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Success!'

# Delete product based on a specific product id
@current_clients.route('/client_products', methods=["DELETE"])
def delete_product():
    id_to_delete = request.json
    current_app.logger.info(id_to_delete)

    query = 'DELETE from Client_Products where Product_Id =' + str(id_to_delete['Product_ID'])
    current_app.logger.info(query)
    
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Deleted product with Product_Id: {0}'.format(id_to_delete['Product_ID'])

# Get unit price of a specific client product
@current_clients.route('/cient_products/<product_id>/unit_price', methods=["GET"])
def get_unitprice(product_id):
    cursor = db.get_db().cursor()
    cursor.execute('select Unit_Price from Client_Products where Product_ID = {0}'.format(product_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Update unit price for a specific product id
@current_clients.route('/client_products/<product_id>', methods=["PUT"])
def update_unitprice(product_id):
    new_price = request.json
    current_app.logger.info(new_price)

    query = 'UPDATE Client_Products SET Unit_Price =' + str(new_price['Unit_Price']) + 'WHERE Product_Id =' + str(product_id)
    current_app.logger.info(query)
    
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Product with ID {0} updated with new unit price ${1}'.format(product_id, new_price["Unit_Price"])

# Get spending analysis of a specific application
@current_clients.route('/applications/<app_id>/spending_analysis', methods=["GET"])
def get_spending_analysis(app_id):
    cursor = db.get_db().cursor()
    cursor.execute('select Spending_Analysis from Applications where App_ID = {0}'.format(app_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get customer report of a specific application
@current_clients.route('/applications/<app_id>/customer_report', methods=["GET"])
def get_customer_report(app_id):
    cursor = db.get_db().cursor()
    cursor.execute('select Customer_Report from Applications where App_ID = {0}'.format(app_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get product report for a specific application
@current_clients.route('/applications/<app_id>/product_report', methods=["GET"])
def get_product_report(app_id):
    cursor = db.get_db().cursor()
    cursor.execute('select Product_Report from Applications where App_ID = {0}'.format(app_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response