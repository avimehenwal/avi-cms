def s():
    from django.contrib.contenttypes.models import ContentType
#     x = ContentType.objects.get(app_label='auth')
#     
#     for item in x:
#         pprint(item)

    from pprint import pprint
    for e in ContentType.objects.filter(app_label='auth'):
        pprint(e.__dict__)
        pprint(dir(e))
