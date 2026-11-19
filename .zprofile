
eval "$(/opt/homebrew/bin/brew shellenv)"

# Python 3.13
PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:${PATH}"
export PATH

# OpenJDK
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# User-local binaries
export PATH="$HOME/.local/bin:$PATH"
