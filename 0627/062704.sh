sudo find "$HOME" -type f -exec du \{\} \; | sort -nr | head -n 5
