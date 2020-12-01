# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_RUHMESMEILE_SHOW="${SPACESHIP_RUHMESMEILE_SHOW=true}"
SPACESHIP_RUHMESMEILE_PREFIX="${SPACESHIP_RUHMESMEILE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_RUHMESMEILE_SUFFIX="${SPACESHIP_RUHMESMEILE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_RUHMESMEILE_SYMBOL="${SPACESHIP_RUHMESMEILE_SYMBOL="@"}"
SPACESHIP_RUHMESMEILE_COLOR="${SPACESHIP_RUHMESMEILE_COLOR="105"}"

# ------------------------------------------------------------------------------
# Section
# ----------------------------------------------- -------------------------------

spaceship_ruhmesmeile() {
  [[ $SPACESHIP_RUHMESMEILE_SHOW == false ]] && return

  local ruhmesmeile_workspace=$(pwd | sed "s/.*\/Projects\/\(.*\)\/code\/.*/\1/g")
  [[ -z $ruhmesmeile_workspace ]] && return

  spaceship::section \
    "$SPACESHIP_RUHMESMEILE_COLOR" \
    "$SPACESHIP_RUHMESMEILE_PREFIX" \
    "$SPACESHIP_RUHMESMEILE_SYMBOL$ruhmesmeile_workspace" \
    "$SPACESHIP_RUHMESMEILE_SUFFIX"
}
