# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit distutils-r1 toolchain-funcs versionator


MY_PV="$(replace_all_version_separators '.')"



DESCRIPTION="Module for OpenGL, OpenGL ES, Vulkan, window and input support"
HOMEPAGE="https://github.com/FlorianRhiem/pyGLFW"
SRC_URI="https://github.com/FlorianRhiem/pyGLFW/archive/v${MY_PV}.tar.gz -> ${P}.tar.gz"


LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="media-libs/glfw"

S="${WORKDIR}/pyGLFW-${MY_PV}"


python_prepare_all() {
	distutils-r1_python_prepare_all
}
