# EPS Assistant (reconstruction Flutter)

Le dossier `android/` n'est pas versionné : il est généré par le workflow GitHub
(`flutter create` + `scripts/patch_android.sh`) afin de produire le package
`dz.eps.assistant.eps_assistant`.

## Compiler l'APK gratuitement avec GitHub
1. Créez un dépôt GitHub et poussez tout ce dossier.
2. Onglet **Actions** → « Build APK » → *Run workflow* (ou faites un push sur `main`).
3. Téléchargez l'artefact `EPS_Assistant_apk` à la fin de l'exécution.
