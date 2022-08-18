# jqrc.d

My jq Run Commands Directory

## Install

```
git clone git@github.com:wandersonwhcr/jqrc.d ~/.jqrc.d
ln --symbolic ~/.jqrc.d/main.jq ~/.jq
```

## CamelCase to snake\_case

```console
$ echo '"JohnDoe"' | jq 'camel_to_snake'
"john_doe"

$ echo '{"FooBar": "BazQux"}' | jq 'with_entries(.key |= camel_to_snake)'
{
  "foo_bar": "BazQux"
}
```
