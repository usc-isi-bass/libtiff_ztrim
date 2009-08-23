#!/bin/sh
. ${srcdir:-.}/common.sh
infile="$srcdir/images/rgb-3c-16b.tiff"
outfile="o-tiffcrop-extractz14-rgb-3c-16b.tiff"
f_test_convert "$TIFFCROP -E left -Z1:4,2:4" $infile $outfile
f_tiffinfo_validate $outfile
