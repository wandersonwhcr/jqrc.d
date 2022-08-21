# @see https://gist.github.com/reegnz/5bceb53427008a4ff9367eb8eae97b85
def camel_to_snake:
    gsub("(?!^)(?<upper>[A-Z])"; "_" + .upper)
    | ascii_downcase
;

# @see https://github.com/stedolan/jq/issues/2262#issuecomment-860074178
def base64urld:
    gsub("-"; "+") | gsub("_"; "/") | gsub("%3D"; "=") | @base64d
;

def jwtd:
    split(".") as $jwt
    | { "header": $jwt[0], "payload": $jwt[1], "signature": $jwt[2] }
    | .header |= (base64urld | fromjson)
    | .payload |= (base64urld | fromjson)
;
