# Rails Jumpstart

My branch of Jumpstart that adds 

**Note:** Requires Rails 5.2

## Getting Started

Jumpstart is a Rails template, so you pass it in as an option when creating a new app.

#### Creating a new app



```bash

postgres -D /usr/local/pgsql/data >logfile 2>&1 &

rails new jump999 -T -d postgresql -m path/to/jumpstart/template.rb
```

#### Cleaning up

```bash
rails db:drop
spring stop
cd ..
rm -rf myapp
```
