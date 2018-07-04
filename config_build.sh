#!/bin/bash
CUR_DIR=${PWD}
cat $CUR_DIR/.config/i3/config_header \
    $CUR_DIR/.config/i3/config_base \
   	$CUR_DIR/.config/i3/config_footer > $HOME/.config/i3/config
