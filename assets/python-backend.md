# Backend

> cross-platform python

```
pip install psycopg2
# create database in postgresSQL for the first time, django cannot create it
```

## Django Goodies

- [ ] https://django-debug-toolbar.readthedocs.io/en/latest/index.html
- [ ] markdown in admin panel
- [ ] load and store database backup from fixtures

## Database

- `migrate` operates on one DB at a time. If you have multiple Database
- How to choose which db to use if we have multiple dbs?
  - using `DB.objects.using('OTHER_DB_NAME')`

```
python manage.py migrate --database=cloudsql
Author.objects.using('other').all()
```

### DB Management

```
# get all models known to django
import django.apps
django.apps.apps.get_models(include_auto_created=True, include_swapped=True)

from django.contrib.contenttypes.models import ContentType
ContentType.objects.get(app_label='auth', model='user')
```

- [iPython vs bPython interpretor difference?](https://stackoverflow.com/questions/4232923/what-are-the-differences-between-ipython-and-bpython)

##### what was the last query sent by django to DB?

```
from django.db import connection

x = Artist.objects.get(name="Eminem")
print connection.queries[-1]
```

## graphQL > REST-API
