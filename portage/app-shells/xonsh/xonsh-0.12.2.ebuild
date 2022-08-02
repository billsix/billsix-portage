# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Xonsh is a Python-powered, cross-platform, Unix-gazing shell language and command prompt."
HOMEPAGE="
	https://xon.sh/
	https://github.com/xonsh/xonsh/
	https://pypi.org/project/xonsh/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86 ~x64-cygwin ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

RDEPEND="dev-python/pygments
         dev-python/setproctitle
         dev-python/prompt_toolkit
         "

python_install_all() {
	distutils-r1_python_install_all
}
