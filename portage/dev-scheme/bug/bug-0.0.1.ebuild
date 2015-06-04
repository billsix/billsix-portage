EAPI=4

inherit git-2
inherit autotools

DESCRIPTION="Bill's Utilities for Gambit C."
HOMEPAGE="http://github.com/billsix/bug"

EGIT_REPO_URI="https://github.com/billsix/bug.git"
SRC_URI=""

LICENSE="|| ( LGPL-2.1 Apache-2.0 )"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86 ~amd64-linux ~x86-linux ~x86-macos"

DEPEND=">=dev-scheme/gambit-4.7.6"
RDEPEND=""

EGIT_COMMIT="0.0.1" 
 
src_prepare() {
   eautoreconf
   automake --add-missing --copy >/dev/null 2>&1
}

