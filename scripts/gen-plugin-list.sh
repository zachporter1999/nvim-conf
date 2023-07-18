#!/bin/bash

output_file=docs/plugins.md

if [[ -f $output_file ]]
then
        rm -f $output_file
fi

if [[ ! -d $(dirname $output_file) ]]
then
        mkdir -p $(dirname $output_file)
fi

echo -e "# Plugin List\n" > $output_file
sed -n "s/^.*Plug '\(\S*\)'/* https:\/\/github.com\/\1/gp" init.vim >> $output_file
