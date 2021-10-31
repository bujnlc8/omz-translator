# translator plugin

## Introduction

The `translator plugin` get the translation result from baidu translator. support both chinese and english.

To use it, add `translator` to the plugins array of your zshrc file:

```
plugins=(... translator)
```

## Functions

- tt + [words]: translate the words from english to chinese or from chinese to english

- tZ + [chinese words]: query the result from chinese dictionary.

**if not support the words, it will try to read words from stdin or system clipbodard.**

## Keys

- 'TT': translate the words from system clipbodard.
