#!/bin/bash
CUR_DIR=${PWD}
cat $CUR_DIR/config_header \
    $CUR_DIR/config_base \
   	$CUR_DIR/config_footer > $HOME/.config/i3/config
