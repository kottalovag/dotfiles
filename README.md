# Setup 
```
git clone https://github.com/kottalovag/happy_setup.git ~/happy_setup
. ~/happy_setup/scripts/ensure_setup.sh
```

# Manual update in the rare case of designated immutabe change anyhow and bashrc-induced pulling fails
```
git --work-tree ~/happy_setup --git-dir ~/happy_setup/.git pull origin master
. ~/happy_setup/scripts/ensure_setup.sh
```
