from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Docker! This is a simple Flask app.'

if __name__ == '__main__':
    # Run the application on all available interfaces (0.0.0.0) and port 8000
    app.run(debug=True, host='0.0.0.0', port=8000)

~                                                                                                                    
