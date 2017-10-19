# rad
Repositório utilizado para estudos realizados na disciplina Desenvolvimento Ágil Para Web (RAD).



## Command line instructions

### Git global setup
```git
git config --global user.name "José Ricardo"
git config --global user.email "zevatron@zevatron.com.br"
```
### Create a new repository
```git
git clone https://gitlab.com/zevatron/teste.git
cd teste
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master
```
### Existing folder
```git
cd existing_folder
git init
git remote add origin https://gitlab.com/zevatron/teste.git
git add .
git commit -m "Initial commit"
git push -u origin master
```
### Existing Git repository
```git
cd existing_repo
git remote add origin https://gitlab.com/zevatron/teste.git
git push -u origin --all
git push -u origin --tags
```
