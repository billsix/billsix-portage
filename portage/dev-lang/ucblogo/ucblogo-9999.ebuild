EAPI=6
WX_GTK_VER="3.0"

inherit autotools

EGIT_COMMIT=3b967a8f6dff8dba329fe79ba639c713d3d465e1
SRC_URI="https://github.com/jrincayc/ucblogo-code/archive/${EGIT_COMMIT}.tar.gz"

DESCRIPTION="Berkeley Logo interpreter"
HOMEPAGE="https://github.com/jrincayc/ucblogo-code"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="amd64 ~ppc64 ~x86 ~amd64-linux ~x86-linux ~x86-macos"

DEPEND="
        x11-libs/wxGTK:${WX_GTK_VER}"
RDEPEND=""


S="${WORKDIR}/${PN}-code-${EGIT_COMMIT}"

src_prepare() {
   eautoreconf
   automake --add-missing --copy >/dev/null 2>&1
   eapply_user
}

src_compile() {
  econf ${myconf}
  emake || die "make failed"
}
