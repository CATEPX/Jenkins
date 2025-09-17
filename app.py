from flask import Flask

# Create a Flask app instance
app = Flask(__name__)

# Define a simple route
@app.route('/')
def home():
    return "Hello, World! 🚀 This is my first Flask app."

# Another route example
@app.route('/about')
def about():
    return "This is the About page."

# Run the app
if __name__ == '__main__':
    # debug=True lets you see changes instantly without restarting
    app.run(host='0.0.0.0', port=5000, debug=True)
