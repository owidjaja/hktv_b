from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/calculate-shipping-fee', methods=['POST'])
def calculate_shipping_fee():
    items = request.json['items']
    total_fee = 0

    for item in items:
        volumetric_weight = (item['length'] * item['width'] * item['height']) / 5000
        weight = max(item['weight'], volumetric_weight)

        if item['temperature_condition'] == 'Ambient':
            if weight <= 5:
                total_fee += item['quantity'] * 10
            else:
                total_fee += item['quantity'] * 15
                
        elif item['temperature_condition'] == 'Chill':
            if weight <= 5:
                total_fee += item['quantity'] * 20
            else:
                total_fee += item['quantity'] * 30

    return jsonify({'total_fee': total_fee})

if __name__ == '__main__':
    app.run(debug=True, host='127.0.0.1', port='5000')