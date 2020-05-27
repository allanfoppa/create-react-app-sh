#!/bin/bash
SCRIPT_PATH="/path/to/script.sh"

# Here you execute your script
"$SCRIPT_PATH"

# or
. "$SCRIPT_PATH"

# or
source "$SCRIPT_PATH"

# or
bash "$SCRIPT_PATH"

# or
eval '"$SCRIPT_PATH"'

# or
OUTPUT=$("$SCRIPT_PATH")
echo $OUTPUT

# or
OUTPUT=`"$SCRIPT_PATH"`
echo $OUTPUT

# or
("$SCRIPT_PATH")

# or
(exec "$SCRIPT_PATH")

exit 0