# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="rkbin"

if [[ "$DEVICE" =~ RG351 ]]; then
	PKG_VERSION="0bb1c512492386a72a3a0b5a0e18e49c636577b9"
	#PKG_SHA256="39289966b39c7bd5b2e5031d12f071e1aa80b80dc83c74b8658b3c119b6d5fd5"
elif [[ "$DEVICE" =~ RG552 ]]; then
	PKG_VERSION="b46c088e6f40bb5a2c513af4ab593a21f83c0e83"
	#PKG_SHA256="39289966b39c7bd5b2e5031d12f071e1aa80b80dc83c74b8658b3c119b6d5fd5"
else
	# Version is: Kwiboo/tag:libreelec-ba436b9
	PKG_VERSION="ba436b9d616318a9437895457f6bbef1cc873e2b"
	PKG_SHA256="72c2ef6ec1fe79da7c701056662343b9e1df1cf20e5df10bafc4ec0619ef4578"
fi

PKG_ARCH="arm aarch64"
PKG_LICENSE="nonfree"
PKG_SITE="https://github.com/rockchip-linux/rkbin"
PKG_URL="https://github.com/rockchip-linux/rkbin/archive/$PKG_VERSION.tar.gz"
PKG_LONGDESC="rkbin: Rockchip Firmware and Tool Binaries"
PKG_TOOLCHAIN="manual"
