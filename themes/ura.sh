#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
COLOR_01="#000000"          # HOST
COLOR_02="#c21b6f"          # SYNTAX_STRING
COLOR_03="#6fc21b"          # COMMAND
COLOR_04="#c26f1b"          # COMMAND_COLOR2
COLOR_05="#1b6fc2"          # PATH
COLOR_06="#6f1bc2"          # SYNTAX_VAR
COLOR_07="#1bc26f"          # PROMP
COLOR_08="#808080"          #

COLOR_09="#808080"          #
COLOR_10="#ee84b9"          # COMMAND_ERROR
COLOR_11="#b9ee84"          # EXEC
COLOR_12="#eeb984"          #
COLOR_13="#84b9ee"          # FOLDER
COLOR_14="#b984ee"          #
COLOR_15="#84eeb9"          #
COLOR_16="#e5e5e5"          #

BACKGROUND_COLOR="#feffee"  # Background Color
FOREGROUND_COLOR="#23476a"  # Text
CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
PROFILE_NAME="Ura"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PARENT_PATH="$(dirname "$SCRIPT_PATH")"

# Allow developer to change url to forked url for easier testing
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [ -e "${PARENT_PATH}/apply-colors.sh" ]
then
    source "${PARENT_PATH}/apply-colors.sh"
else
    if [ "$(uname)" = "Darwin" ]; then
        # OSX ships with curl and ancient bash
        (eval "$(curl -so- "${BASE_URL}/apply-colors.sh")")
    else
        # Linux ships with wget
        (eval "$(wget -qO- "${BASE_URL}/apply-colors.sh")")
    fi
fi