from app import app

@app.route('/')
def index():
    return 'Hello ! How are you Andrea ?'
