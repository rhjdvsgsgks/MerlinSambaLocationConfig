# MerlinSambaLocationConfig

因为梅林并不能手动设置samba每个路径的配置，所以我写了这个脚本，能自动删除根据文件夹生成的路径配置，并且将`/mnt/sda1/sambalocationconfig.conf`中的配置插入到默认配置的后面

## 使用方法

下载`sambalocationconfig.sh`到`/jffs/scripts/`，在`/jffs/scripts/smb.postconf`的第二行(也就是`#!/bin/sh`的下一行)插入`/jffs/scripts/sambalocationconfig.sh`即可，在`/mnt/sda1/sambalocationconfig.conf`中的配置将追加到默认配置后面
