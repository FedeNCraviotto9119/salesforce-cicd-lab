# Crear proyecto
sf project generate --name salesforce-cicd-lab
cd salesforce-cicd-lab

# Obtener manifiesto completo
sf project generate manifest --output-dir ./manifest --from-org {ORG-ALIAS}

# Obtener toda la metadata
sf project retrieve start --manifest manifest/package.xml --target-org {ORG-ALIAS}

# Authenticate orgs
sf org login web https://login.salesforce.com -a {ORG-ALIAS}
sf org login web https://test.salesforce.com -a {ORG-ALIAS}

# Create local Git repository
git init
git add .
git commit -m "Initial Salesforce project"
git branch -M main

git restore --staged filename
Example:
git add MiClase.cls
git restore --staged MiClase.cls

git restore --staged .

git restore filename (CUIDADO CON ESTE - Descarta los cambios locales de un archivo tracked. ¡Cuidado!)

# Create repo in Github 
From web, manually

# Link your Github repo to Local Git repo
git remote add origin https://github.com/{YOUR_USER}/{you_project}.git
git remote add origin https://github.com/FedeNCraviotto9119/salesforce-cicd-lab

Esto equivale a "Registrá este repositorio de GitHub con el alias origin."

Acá el "origin" es por convención, es una manera de llamar al repositorio de Github desde el proyecto. Podría haberlo puesto "github" o "pirulito".

## Verify its linked
git remote -v

## Push code to github
git push -u origin main
push: sube los commits de tu branch local main a GitHub.
-u: configura el seguimiento (upstream) entre main local (main) y origin/main (de Github, que le puse "origin" por convencion).
"Pusheame a origin lo del main local". El upstream va a ser entre esos 2.
Por eso en adelante puedo usar 

git push (porque el upstream ya se seteó)


# Crear y cambiarme a una branch nueva
git switch -c integration

-----Es el viejo git checkout -b integration

Sin la -c solo nos cambiamos a una branch existente

Esto solo crea la branch localmente. Para publicarla en GitHub tenés que ejecutar:
git push -u origin integration


# GITHUB ACCOUNT MANAGER
git config --global credential.https://github.com.useHttpPath true

--global: aplica esta configuración a todos tus repositorios locales.

credential.https://github.com.useHttpPath: indica que Git debe distinguir las credenciales por la URL completa del repositorio, no solamente por github.com.

true: habilita ese comportamiento

Luego usamos este comando para vincular el repo actual a cierto usuario
git config --local credential.username FedeNCraviotto9119

## Verificar que git credential manager esté disponible
git config --show-origin --get-all credential.helper
