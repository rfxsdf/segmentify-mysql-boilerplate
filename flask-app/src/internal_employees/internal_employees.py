from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

internal_employees = Blueprint('internal_employees', __name__)

# Update all order details
@internal_employees.route('/order_details', methods=['PUT'])
def update_order_details():
    new_data = request.get_json()

    cursor = db.get_db().cursor()
    original_od = cursor.execute('select * from Order_Details')
    original_od.data.update(new_data)
    db.session.commit()

    return f'(original_od) updated to (new_data)'

# Get information about current clients
@internal_employees.route('/current_clients', methods=['GET'])
def get_current_clients():
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

# Update all current clients
@internal_employees.route('/current_clients', methods=['PUT'])
def update_current_clients():
    new_data = request.get_json()

    cursor = db.get_db().cursor()
    original_cc = cursor.execute('select * from Current_Clients')
    original_cc.data.update(new_data)
    db.session.commit()

    return f'(original_cc) updated to (new_data)'

@internal_employees.route('/current_clients', methods=["DELETE"])
def delete_current_clients():
    return f'Marked (current_clients) as no longer clients'

@internal_employees.route('/current_clients/<curr_client_id>', methods=["DELETE"])
def delete_client(curr_client_id):
    return f'Deleted (current_clients) with curr_client_id (curr_client_id)'


# Get reports of current clients
@internal_employees.route('/current_clients/reports', methods=['GET'])
def get_report():
    cursor = db.get_db().cursor()
    cursor.execute('select Reports from Current_Clients')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@internal_employees.route('/current_clients/reports', methods=["POST"])
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

    query = 'insert into current_clients (Contact_Name, Company_Name, Contact_Title, Headquarter_Address, Phone, \
            Fax, Demographics, Client_Company_ID, Int_Emp_ID, Curr_Client_ID, Reports) values ("'
    query += contact_name + '", "'
    query += company_name + "', "
    query += contact_title + '", "'
    query += headquarter_address + "', "
    query += phone + '", "'
    query += fax + "', "
    query += demographics + '", "'
    query += str(client_company_id) + "', "
    query += str(int_emp_id) + ", "
    query += str(curr_client_id) + ", "
    query += reports + ')'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Success!'

@internal_employees.route('/current_clients/<curr_client_id>', methods=["PUT"])
def update_reports(curr_client_id):
    new_data = request.get_json()

    cursor = db.get_db().cursor()
    original_price = cursor.execute('select Reports from Current_Clients where Curr_Client_ID = {0}'.format(curr_client_id))
    original_price.data.update(new_data)
    db.session.commit()

    return f'Current client with id (curr_client_id) updated with new report (new_data)'