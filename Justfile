# https://github.com/casey/just
# https://github.com/casey/just/blob/master/examples/cross-platform.just
# https://just.systems/man/en/
# just -l # list all recipes by:
# just --help
# just --choose

# Running just with no arguments runs the first recipe in the justfile
# first recipe is the default recipe, this line also acts as RECIPE desc
default:
  @just --list --unsorted --justfile {{justfile()}} # --list-heading $'Customized header line\n' --list-prefix "..."
ls-vars:
  just --evaluate

ling:
  rustlings
  
@hi:
	echo hi {{justfile()}}

# show recipe definition
show recipe:
  just --show {{recipe}}
