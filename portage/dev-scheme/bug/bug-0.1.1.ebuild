EAPI=6

inherit autotools

EGIT_COMMIT=0906c034f96427b6b2de6a14eacd1d084fcec3ff
SRC_URI="https://github.com/billsix/bug/archive/${EGIT_COMMIT}.tar.gz"


DESCRIPTION="Bill's Utilities for Gambit Scheme."
HOMEPAGE="http://github.com/billsix/bug"


LICENSE="|| ( LGPL-2.1 Apache-2.0 )"
SLOT="0"
KEYWORDS="amd64 ~ppc64 ~x86 ~amd64-linux ~x86-linux ~x86-macos"

DEPEND=">=dev-scheme/gambit-4.8"
RDEPEND=""

IUSE="doc"

S="${WORKDIR}/${PN}-${EGIT_COMMIT}"

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

  econf ${myconf}

  emake || die "make failed"
}
