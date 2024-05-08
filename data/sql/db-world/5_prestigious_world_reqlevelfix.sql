update item_template
set requiredlevel = 0
where requiredlevel = 1 and itemlevel > 30 and not quality = 7;