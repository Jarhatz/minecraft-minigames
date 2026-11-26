# @s = the player joining; chain them to everyone already chained.
tag @a[tag=ct_done] add ct_pending
function chainedtogether:_join_loop
tag @s add ct_done
