# from lightgbm import LGBMClassifier
import joblib
import flask
from flask import request

# model = joblib.load('lgbm84.ml')
# age_predict = model.predict([[188,1,1,0,0.0,0,1,0,0,0,1,0]])
# print(str(age_predict))

app = flask.Flask(__name__)
app.config["DEBUG"] = True

# main index page route
@app.route('/')
def home():
    return '<h1>API is working.. </h1>'

@app.route('/predict',methods=['GET'])
def predict():
    model = joblib.load('lgbm84.ml')
    # model.predict([[188,1,1,0,0.0,0,1,0,0,0,1,0]])
    predicted_age_of_marriage = model.predict([[int(request.args['a']),
                            int(request.args['b']),
                            int(request.args['c']),
                            int(request.args['d']),
                            float(request.args['e']),
                            int(request.args['f']),
                            int(request.args['g']),
                            int(request.args['h']),
                            int(request.args['i']),
                            int(request.args['k']),
                            int(request.args['l']),
                            int(request.args['m']),
                           ]])
    return flask.jsonify(str(predicted_age_of_marriage)[1])

if __name__ == "__main__":
    app.run(debug=True)

# http://127.0.0.1:5000/predict?a=188&b=1&c=1&d=0&e=0.0&f=0&g=1&h=0&i=0&k=0&l=1&m=0

# http://127.0.0.1:5000/predict?a=3895&b=1&c=0&d=5&e=52.0&f=7&g=0&h=1&i=0&k=1&l=0&m=0

# http://127.0.0.1:5000/predict?a=1575&b=1&c=1&d=0&e=0.0&f=0&g=1&h=0&i=0&k=0&l=1&m=0
