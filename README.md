# Plugins
## Adding a package
```
cd ~/dotfiles
git submodule init
git submodule add https://github.com/exampleplugin/exampleplugin.git vim/pack/shapeshed/start/exampleplugin
git add .gitmodules vim/pack/shapeshed/start/exampleplugin
git commit
./install.sh
```

## Updating packages
```
git submodule update --remote --merge
git commit
```

## Removing a package
```
git submodule deinit vim/pack/shapeshed/start/exampleplugin
git rm vim/pack/shapeshed/start/exampleplugin
rm -Rf .git/modules/vim/pack/shapeshed/start/exampleplugin
git commit
```

