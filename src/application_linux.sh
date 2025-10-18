#!/bin/zsh

archive_date=$(date +%Y%m%d)
works_date="works_${archive_date}.zip"
works_dir="/home/$(whoami)/myworks"
archive_dir="/home/$(whoami)/archive"

# myworksフォルダをzip圧縮して保存
zip -r "${archive_dir}/${works_date}" "$works_dir"

# 新しいzipファイルを3つ残し、それ以外を削除
ls -1t "${archive_dir}"/*.zip | tail -n +4 | xargs rm -f