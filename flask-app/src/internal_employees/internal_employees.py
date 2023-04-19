from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

internal_employees = Blueprint('internal_employees', __name__)

# Update discount, quantity, and unit price on orders based on order id
@internal_employees.route('/order_details', methods=['PUT'])
def update_order_details():
    new_order_details = request.json
    current_app.logger.info(new_order_details)

    query = 'UPDATE Order_Details SET Quantity =' + \
        str(new_order_details['Quantity']) + ', Discount =' +\
            str(new_order_details["Discount"]) + ', Unit_Price =' +\
                str(new_order_details["Unit_Price"]) + 'WHERE O_Order_ID =' + str(new_order_details["O_Order_ID"])
    current_app.logger.info(query)
    
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    return 'Order ID {0} has new updated quantity of {1}, new updated discount of {2}, and new updated unit price of {3}.'.format(
        new_order_details["O_Order_ID"], new_order_details["Quantity"], new_order_details["Discount"], new_order_details["Unit_Price"])


# Get information on all order details
@internal_employees.route('/order_details', methods=['GET'])
def get_order_details():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Order_Details')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get all demographics information for current_clients
@internal_employees.route('/current_clients/demographics', methods=["GET"])
def get_demographics():
    cursor = db.get_db().cursor()
    cursor.execute('select Demographics from Current_Clients')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response
    

# Get information for specific current_clients based on curr_client_id
@internal_employees.route('/current_clients/<curr_client_id>', methods=['GET'])
def get_current_clients(curr_client_id):
    cursor = db.get_db().cursor()
    cursor.execute('select * from Current_Clients where Curr_Client_ID = {0}'.format(curr_client_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


# Get all current clients
@internal_employees.route('/current_clients', methods=["GET"])
def get_all_curr_clients():
    cursor = db.get_db().cursor()
    cursor.execute('select * from Current_Clients')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Remove a specific current client based on curr_client_id
@internal_employees.route('/current_clients', methods=["DELETE"])
def delete_client():
    id_to_delete = request.json
    current_app.logger.info(id_to_delete)

    query = 'DELETE from Current_Clients where Curr_CLient_ID =' + str(id_to_delete['Curr_Client_ID'])
    current_app.logger.info(query)
    
    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Deleted current client with ID: {0}'.format(id_to_delete['Curr_Client_ID'])


# Update int_emp id on a current client
@internal_employees.route('/current_clients', methods=['PUT'])
def update_current_clients():
    new_data = request.get_json()
    current_app.logger.info(new_data)

    query = 'UPDATE Current_Clients SET Int_Emp_ID =' +\
        str(new_data["Int_Emp_ID"]) + 'WHERE Curr_Client_ID = {0}'.format(str(new_data['Curr_Client_ID']))
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.session.commit()

    return 'Client with ID {0} updated with new information.'.format(new_data["Curr_Client_ID"])


# Get reports of current clients based on client id
@internal_employees.route('/current_clients/<curr_client_id>/reports', methods=['GET'])
def get_report(curr_client_id):
    cursor = db.get_db().cursor()
    cursor.execute('select Reports from Current_Clients where Curr_Client_ID = {0}'.format(curr_client_id))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Add a new client 
@internal_employees.route('/current_clients', methods=["POST"])
def create_report():
    the_data = request.json
    current_app.logger.info(the_data)

    contact_name = the_data["Contact_Name"]
    company_name = the_data["Company_Name"]
    contact_title = the_data["Contact_Title"]
    headquarter_address = the_data["Headquarter_Address"]
    phone = the_data["Phone"]
    fax = the_data["Fax"]
    demographics = the_data["Demographics"]
    client_company_id = the_data["Client_Company_ID"]
    int_emp_id = the_data["Int_Emp_ID"]
    curr_client_id = the_data["Curr_Client_ID"]
    reports = the_data["Reports"]

    query = 'insert into Current_Clients (Contact_Name, Company_Name, Contact_Title, Headquarter_Address, Phone, \
            Fax, Demographics, Client_Company_ID, Int_Emp_ID, Curr_Client_ID, Reports) values ("'
    query += contact_name + '", "'
    query += company_name + '", "' 
    query += contact_title + '", "'
    query += headquarter_address + '", "'
    query += phone + '", "'
    query += fax + '", "'
    query += demographics + '", "'
    query += str(client_company_id) + '", "'
    query += str(int_emp_id) + '", '
    query += str(curr_client_id) + ', "'
    query += reports + '")'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Success!'
