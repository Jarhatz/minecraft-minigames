tag @r[tag=ct_todo] add ct_new
tag @a[tag=ct_new] remove ct_todo
execute as @a[tag=ct_new,limit=1] run ct chain @a[tag=ct_tail,limit=1]
tag @a remove ct_tail
tag @a[tag=ct_new] add ct_tail
tag @a remove ct_new
function chainedtogether:_next
