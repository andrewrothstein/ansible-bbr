#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/cloudfoundry-incubator/bosh-backup-and-restore/releases/download

# https://github.com/cloudfoundry-incubator/bosh-backup-and-restore/releases/download/v1.7.2/bbr-1.7.2-darwin-amd64.sha256

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local platform="${os}-${arch}"
    local url=$MIRROR/v$ver/bbr-${ver}-${platform}.sha256
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -sSL $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver linux amd64
}

dl_ver ${1:-1.9.37}
