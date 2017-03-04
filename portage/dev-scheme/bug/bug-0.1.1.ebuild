EAPI=6

inherit git-r3
inherit autotools

EGIT_REPO_URI="https://github.com/billsix/bug.git"
EGIT_COMMIT="2f958db89b962d3c9d3e77f84eac63a1fa0a12a6"
SRC_URI=""


DESCRIPTION="Bill's Utilities for Gambit Scheme."
HOMEPAGE="http://github.com/billsix/bug"


LICENSE="|| ( LGPL-2.1 Apache-2.0 )"
SLOT="0"
KEYWORDS="amd64 ~ppc64 ~x86 ~amd64-linux ~x86-linux ~x86-macos"

DEPEND=">=dev-scheme/gambit-4.8"
RDEPEND=""

IUSE="doc static"

 
src_prepare() {
   eautoreconf
   automake --add-missing --copy >/dev/null 2>&1
   eapply_user
}

src_compile() {
  local myconf
  if use doc ; then
      myconf="${myconf} --enable-pdf "
  fi

  if use static ; then
      myconf="${myconf} --enable-shared=no"
  fi

  econf ${myconf}

  emake || die "make failed"
}
