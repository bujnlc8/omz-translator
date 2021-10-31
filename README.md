# omz-translator plugin

## Introduction

The `translator plugin` get the translation result from baidu translator. Support both chinese and english.

To use it, clone the repository into `~/.oh-my-zsh/plugins/`, add `omz-translator` to the plugins array of your zshrc file:

```
plugins=(... omz-translator)
```

## Functions

- tt + [words]: translate the words from english to chinese or from chinese to english

- tZ + [chinese words]: query the result from chinese dictionary.

**If not support the words, it will try to read words from stdin or system clipbodard.**

## Keys

- `TT`: translate the words from system clipbodard.


## Attentions

- **Must put the plugin under `~/.oh-my-zsh/plugins/`**

- **To support display the result in dialog, you may need to install the `dialog` utility from [https://invisible-island.net/dialog/dialog.html](https://invisible-island.net/dialog/dialog.html), or it will just echo the result.**
