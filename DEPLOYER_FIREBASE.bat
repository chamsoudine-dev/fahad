@echo off
echo ============================================
echo   DEPLOIEMENT SARKIN WANKA sur FIREBASE
echo ============================================
echo.
echo Etape 1: Connexion a Firebase...
npx firebase-tools@latest login
echo.
echo Etape 2: Deploiement des regles Firestore...
npx firebase-tools@latest deploy --only firestore:rules --project sarkin-wanka
echo.
echo Etape 3: Deploiement complet (Hosting + Regles)...
npx firebase-tools@latest deploy --project sarkin-wanka
echo.
echo ============================================
echo   DEPLOIEMENT TERMINE !
echo   Site disponible sur:
echo   https://sarkin-wanka.web.app
echo ============================================
pause
