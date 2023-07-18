#!/bin/bash

config_file=init.vim
output_file=docs/plugins.md

if [[ -f $output_file ]]
then
        rm -f $output_file
fi

if [[ ! -d $(dirname $output_file) ]]
then
        mkdir -p $(dirname $output_file)
fi

parse_config() {
        echo -e "# Plugin List\n" > $output_file


        sed -n "s/^.*Plug '\(\S*\)'/* https:\/\/github.com\/\1/gp" $config_file >> $output_file
}

echo -e "Generating plugin list: $output_file, from $config_file"
parse_config
