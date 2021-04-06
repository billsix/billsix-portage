# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{7..9} )

inherit distutils-r1


DESCRIPTION="Module for OpenGL, OpenGL ES, Vulkan, window and input support"
HOMEPAGE="https://github.com/FlorianRhiem/pyGLFW"
SRC_URI="https://github.com/FlorianRhiem/pyGLFW/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~x64-cygwin ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

RDEPEND="media-libs/glfw"

S="${WORKDIR}/pyGLFW-${PV}"

python_prepare_all() {
	distutils-r1_python_prepare_all
}
