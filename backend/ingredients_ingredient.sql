SELECT i.name, i.notes, c.name FROM public.ingredients_ingredient AS i
INNER JOIN public.ingredients_category AS c
ON i.category_id = c.id;