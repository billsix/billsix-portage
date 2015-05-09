EAPI=4

inherit git-2
inherit autotools

DESCRIPTION="Bill's Utilities for Gambit C."
HOMEPAGE="http://github.com/billsix/bug"

EGIT_REPO_URI="https://github.com/billsix/bug.git"
SRC_URI=""

LICENSE="|| ( LGPL-2.1 Apache-2.0 )"
SLOT="0"

 
src_prepare() {
   eautoreconf
   automake --add-missing --copy >/dev/null 2>&1
}

