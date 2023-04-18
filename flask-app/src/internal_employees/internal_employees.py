from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

internal_employees = Blueprint('internal_employees', __name__)

# Update all order details
@internal_employees.route('/order_details', methods=['PUT'])
def update_order_details():
    new_data = request.get_json()

    cursor = db.get_db().cursor()
    original_od = cursor.execute('select * from order_details')
    original_od.data.update(new_data)
    db.session.commit()

    return f'(original_od) updated to (new_data)'

# Get information about current clients
@internal_employees.route('/current_clients', methods=['GET'])
def get_current_clients():
    cursor = db.get_db().cursor()
    cursor.execute('select * from current_clients')
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
    original_cc = cursor.execute('select * from current_clients')
    original_cc.data.update(new_data)
    db.session.commit()

    return f'(original_cc) updated to (new_data)'

@internal_employees.route('/current_clients', methods=["DELETE"])
def delete_current_clients():
    return f'Marked (current_clients) as no longer clients'