# @see https://gist.github.com/reegnz/5bceb53427008a4ff9367eb8eae97b85
def camel_to_snake:
    gsub("(?!^)(?<upper>[A-Z])"; "_" + .upper)
    | ascii_downcase
;
