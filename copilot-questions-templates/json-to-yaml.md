give the yaml equivalent while appendding a nice a synthetic name field corresponding to the targeted scopes and a compact reference name for the yaml of the given json in the end

example :
```json
{
    "scope": [
        "punctuation",
        "keyword.operator",
        "meta.brace",
        "support.constant",
        "support.type.object.module.js",
        "meta.group.regexp",
        "string.regexp.js"
    ],
    "settings": {
        "foreground": "#89DDF3"
    }
}
```

gives the following result :

```yaml
punctuation_and_operators: &punc_ops
  name: Punctuation and Operators
  scope:
    - punctuation
    - keyword.operator
    - meta.brace
    - support.constant
    - support.type.object.module.js
    - meta.group.regexp
    - string.regexp.js
  settings:
    foreground: "#89DDF3"
```

now here is the json I want you to translate :

```json

```