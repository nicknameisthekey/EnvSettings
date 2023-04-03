ENVSETTINGSREPO=~/Src/EnvSettings

cp -f $HOME/Library/Application\ Support/Code/User/settings.json $ENVSETTINGSREPO/shared/settings.json

cd $ENVSETTINGSREPO 
git add .
git commit -m "snapshot"
git push origin