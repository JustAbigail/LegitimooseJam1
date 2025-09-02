data modify storage jam:temp Text set value [" ", " ", {text: "Game in session"}]
function jam:lobby/sidebar/append_line with storage jam:temp

data modify storage jam:temp Text set value [" ", " ", {text: "Waiting for end"}]
function jam:lobby/sidebar/append_line with storage jam:temp