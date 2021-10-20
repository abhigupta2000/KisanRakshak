# from lightgbm import LGBMClassifier
import joblib
import flask
from flask import request

app = flask.Flask(__name__)
app.config["DEBUG"] = True

# main index page route
@app.route('/')
def home():
    return '<h1>API is working.. </h1>'

@app.route('/predict',methods=['GET'])
def predict():
    model = joblib.load('lgbm.ml')
    # model.predict([[188,1,1,0,0.0,0,1,0,0,0,1,0]])
    predict = model.predict([[int(request.args['InsectCount']),
                            int(request.args['CropType']),
                            int(request.args['SoilType']),
                            int(request.args['NDosesWeek']),
                            float(request.args['NWeeksUsed']),
                            int(request.args['NWeeksQuit']),
                            int(request.args['Pest1']),
                            int(request.args['Pest2']),
                            int(request.args['Pest3']),
                            int(request.args['Season1']),
                            int(request.args['Season2']),
                            int(request.args['Season3']),
                           ]])
    return flask.jsonify(str(predict)[1])

if __name__ == "__main__":
    app.run(debug=True)
