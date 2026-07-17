goto() {
    if [ -z "$1" ]; then
        echo "Error: Please provide a directory name."
        echo "Usage: goto <dir-name>"
        return 1
    fi

    local target_dir
    target_dir=$(
        find . -type d -name "$1" \
            -exec test -d "{}/.git" \; \
            -print -quit
    )

    if [ -n "$target_dir" ]; then
        cd "$target_dir" || return 1
    else
        echo "Error: Git repository '$1' not found."
        return 1
    fi
}
