# Flask Python Demo for Q4.

## Setup

1. Create a virtual environment:

    ```bash
    python -m venv venv
    ```

2. Activate the virtual environment:

    - For Windows:

        ```bash
        venv\Scripts\activate
        ```

    - For macOS/Linux:

        ```bash
        source venv/bin/activate
        ```

3. Install the project dependencies (only Flask):

    ```bash
    pip install -r requirements.txt
    ```

## Usage

1. Run the Flask application:

    ```bash
    python app.py
    ```

2. Send a POST request to the server. (I used Postman)

    ```curl
    curl --location 'http://127.0.0.1:5000/calculate-shipping-fee' \
    --header 'Content-Type: application/json' \
    --data '{
        "items": [
            {
                "length": 30,
                "width": 20,
                "height": 10,
                "weight": 2,
                "temperature_condition": "Ambient",
                "quantity": 3
            },
            {
                "length": 40,
                "width": 30,
                "height": 20,
                "weight": 6,
                "temperature_condition": "Chill",
                "quantity": 1
            }
        ]
    }
    ```