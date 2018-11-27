EAPI=6

inherit cmake-utils llvm

DESCRIPTION="a programming language prioritizing robustness, optimality, and clarity"
HOMEPAGE="https://ziglang.org/"
SRC_URI="https://ziglang.org/download/${PV}/zig-${PV}.tar.xz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE="+clang"

DEPEND=">=sys-devel/clang-6.0.0
        >=sys-devel/lld-6.0.0
        >=sys-devel/llvm-6.0.0"
RDEPEND=">=sys-devel/clang-6.0.0
         >=sys-devel/lld-6.0.0
         >=sys-devel/llvm-6.0.0"



src_configure() {
        export CC=clang
        export CXX=clang++
	cmake-utils_src_configure
}
