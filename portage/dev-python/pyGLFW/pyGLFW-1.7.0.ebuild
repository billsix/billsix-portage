# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{3_5,3_6} )

inherit distutils-r1


DESCRIPTION="Module for OpenGL, OpenGL ES, Vulkan, window and input support"
HOMEPAGE="https://github.com/FlorianRhiem/pyGLFW"
EGIT_COMMIT=cc0671f0a7d716d8f576382baff423b88b395a57
SRC_URI="https://github.com/FlorianRhiem/pyGLFW/archive/${EGIT_COMMIT}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${PN}-${EGIT_COMMIT}"

python_prepare_all() {
	distutils-r1_python_prepare_all
}
