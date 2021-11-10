# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

# Copyright (c) 2020 Sebastian Gniazdowski

# According to the Zsh Plugin Standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0=${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}
0=${${(M)0:#/*}:-$PWD/$0}

# Then ${0:h} to get plugin's directory

if [[ ${zsh_loaded_plugins[-1]} != */kinetic-zsh-prompt && -z ${fpath[(r)${0:h}]} ]] {
    fpath+=( "${0:h}" )
}

# Standard hash for plugins, to not pollute the namespace
typeset -gA Plugins
Plugins[KINETIC_DIR]="${0:h}"

# vim:ft=zsh:tw=80:sw=4:sts=4:et:foldmarker=[[[,]]]
