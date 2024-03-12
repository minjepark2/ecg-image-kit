#!/bin/bash

basedir="/data1/minjepark/physionet2021/training/ptb-xl/"
# search directories under the basedir and sort

dirs=$(find $basedir -type d -name "g*" | sort)
for dir in $dirs
do
    echo "Processing $dir"
    python gen_ecg_images_from_data_batch.py \
    -i $dir \
    -o ./images/samples \
    -se 42
done

# python gen_ecg_images_from_data_batch.py \
# -i /data1/minjepark/physionet2021/training/ptb-xl/g1 \
# -o ./images/sample \
# -se 42 \
