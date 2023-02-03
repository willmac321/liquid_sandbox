## Run liquid template locally

To test liquid templating locally without having ot run on server, here is a simple, yet hacky, implementation. :) 

### Ruby, rbenv and liquid setup  

!! install a virtual ruby manager (similiar to nvm or pyenv) so the OS ruby version does not get overwritten 

install rbenv following the instructions here
https://github.com/rbenv/rbenv

the local ruby server and liquid example was initially pulled from 
https://shopify.github.io/liquid/

after installing rbenv (like nvm)
```
rbenv init 
```   

if using zshrc, if not put in your terminal profile or ide profile to use rbenv

```
echo 'eval "$(rbenv init -- --zsh)"' >> ~/.zshrc
```

Then install rbenv version

``` 
rbenv install -l
rbenv install [version]
rbenv global [version]
```

To check after restarting console
```
ruby --version
```

Then install bundler and gem file

```
gem install bundler
bundle install
```

install nodemon locally
```
npm i
```

In the source folder that holds ./server start dev
```
npm run start
```
this starts nodemon and watches ruby files for changes

### Editing Liquid Template

Variables and data are defined in the example_servlet.rb file, following ruby object syntax.  They are then accessed in the `testcases.liquid` file where liquid sytax is used.

To see changes reload webpage.


