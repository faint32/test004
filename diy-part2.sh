#!/bin/bash
#============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

echo "开始 DIY2 配置……"
echo "========================="

# Modify default IP
sed -i 's/192.168.2.1/192.168.1.254/g' package/base-files/files/bin/config_generate

# Modify default password
sed -i 's/root::0:0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/g' package/base-files/files/etc/shadow
sed -i 's/root:::0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0:0:99999:7:::/g' package/base-files/files/etc/shadow

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 设定主题luci-theme-argon
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改主机名
#sed -i 's/OpenWrt/MagicBox/g' package/base-files/files/bin/config_generate

# 设定root密码为password
#sed -i '1d' package/base-files/files/etc/shadow
#sed -i '1i root:$1$H\/ab6bvd$yWkIzUrKuLPTNHY9akBDC0:18988:0:99999:7:::'  package/base-files/files/etc/shadow


