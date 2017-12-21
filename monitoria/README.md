# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### 14/12/2017
```rails c```
ctrl l -> limpa a tela
ctrl d -> sai do console
```rails
a1 = Student.new
a1.nome = ..
a1.email = "...."
a1.save
Student.create(nome: "Segundo console", matricula: "232323", email: "console2@ifpb")
Student.where("nome like ?",'%console%')

Subscription.where("semester_id = ?",Semester.where(ano:2017,periodo:2)[0].id).count
 ou
 Subscription.where("semester_id = ?",Semester.where("ano = ? and periodo = ?" , 2017, 2)[0].id).count
 ou
Subscription.where("semester_id = ?",Semester.find_by("ano = ? and periodo = ?" , 2017, 2).id).count

```

```rails -T``` para saber as tasks


### 21/12/2017
* Criação de novas migrations
* drop de colunas - O SQLite só faz o drop da coluna apagando a propria tabela e criando novamente com os dados. Se tiver restrição de chaves ele não consegui apagar a tabela.
* relacionamento has_one
