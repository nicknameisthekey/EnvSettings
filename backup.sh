ENVSETTINGSREPO=~/src/EnvSettings

cp -f $HOME/Library/Application\ Support/Code/User/settings.json $ENVSETTINGSREPO/shared/settings.json
cp -f $HOME/.zshrc $ENVSETTINGSREPO/macos/.zshrc

cd $ENVSETTINGSREPO 
git add .
git commit -m "snapshot"
git push origin