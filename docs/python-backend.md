# Backend

> cross-platform python

```
pip install psycopg2
# create database in postgresSQL for the first time, django cannot create it
```

## Database

- `migrate` operates on one DB at a time. If you have multiple Database
- How to choose which db to use if we have multiple dbs?
  - `using`

```
python manage.py migrate --database=cloudsql
Author.objects.using('other').all()
```
