from flask import Flask, render_template, request
import re

app = Flask(__name__)

# Route pour l'endpoint /newuser/
@app.route('/newuser/', methods=['GET', 'POST'])
def new_user():
    error = None
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']
        # Validation de l'identifiant, de l'email et du mot de passe avec des regex
        if not re.match(r'^[a-z0-9]{6,10}$', username):
            error = 'L\'identifiant doit contenir au moins 6 caractères, 1 chiffre, 1 majuscule et 1 minuscule.'
        elif not re.match(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$', email):
            error = 'L\'adresse email n\'est pas valide.'
        elif not re.match(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[#%{}@])[a-zA-Z\d#%{}@]{6,15}$', password):
            error = 'Le mot de passe doit contenir au moins 6 caractères, 1 chiffre, 1 majuscule et 1 minuscule.'
        else:
            # Faire quelque chose avec l'identifiant, l'email et le mot de passe valides
            return f'Inscription réussie : identifiant = {username}, email = {email}, mot de passe = {password}'
    return render_template('index.html', error=error)

# Route principale, renvoyant à la page d'accueil
@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)

