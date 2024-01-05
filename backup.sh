ENVSETTINGSREPO=~/src/EnvSettings

cp -f $HOME/Library/Application\ Support/Code/User/settings.json $ENVSETTINGSREPO/shared/settings.json
cp -f $HOME/.zshrc $ENVSETTINGSREPO/macos/.zshrc
cp -f $HOME/Library/Preferences/com.googlecode.iterm2.plist $ENVSETTINGSREPO/macos/iterm2.plist
cp -f /Users/vladislavbarsukov/.config/helix/languages.toml $ENVSETTINGSREPO/macos/helix/languages.toml
cp -f /Users/vladislavbarsukov/.config/helix/config.toml $ENVSETTINGSREPO/macos/helix/config.toml
cp -f /Users/vladislavbarsukov/.config/lsd/config.yaml $ENVSETTINGSREPO/macos/lsd/config.yaml
cp -f /Users/vladislavbarsukov/.zshrc $ENVSETTINGSREPO/macos/.zshrc
cd $ENVSETTINGSREPO 
git add .
git commit -m "snapshot"
git push origin
