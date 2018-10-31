# Public setup (syncs from github)
```
git clone https://github.com/kottalovag/happy_setup ~/happy_setup
. ~/happy_setup/scripts/ensure_setup.sh
```

# Company setup
For sake of safety I will setup a personal company repo and sometimes sync it with with the github one. Ask me for the company url. I am David Horvath. ;)
```
git clone <repo url> ~/happy_setup
. ~/happy_setup/scripts/ensure_setup.sh
```

# Manual update 
Perform in the rare case of me changing the designated immutable files anyhow and bashrc-induced pulling fails
```
git --work-tree ~/happy_setup --git-dir ~/happy_setup/.git pull origin master
. ~/happy_setup/scripts/ensure_setup.sh
```
