#!/bin/bash

yum install epel-release -y && \
yum install gcc gettext wget git vim screen autoconf libtool automake make pcre-devel asciidoc xmlto c-ares-devel libev-devel libsodium-devel mbedtls-devel -y && \
wget https://copr.fedoraproject.org/coprs/librehat/shadowsocks/repo/epel-7/librehat-shadowsocks-epel-7.repo -O /etc/yum.repos.d/librehat-shadowsocks-epel-7.repo && \
yum install shadowsocks-libev -y

echo '
{
  "server":"0.0.0.0",
  "server_port":21111,
  "password":"ggsddu",
  "timeout":6000,
  "method":"rc4-md5"
}
' > ~/ss.json

echo '
caption always "%{= kw}%-w%{= kG}%{+b}[%n %t]%{-b}%{= kw}%+w %=%d %M %{g}%H%{-}"
shelltitle "$ | bash"
#term screen-256color # 使用256色
#attrcolor b ".I"    # 允许加粗色彩--由于某些原因是必须的
defbce on    # 使用当前背景色来显示删除的字符
' > ~/.screenrc

curl -sL "https://raw.githubusercontent.com/pixystone/devops/master/bashrc" > ~/.bashrc
curl -sL "https://raw.githubusercontent.com/pixystone/devops/master/gitconfig" > ~/.gitconfig
