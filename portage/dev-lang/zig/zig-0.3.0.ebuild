EAPI=6

inherit cmake-utils llvm

DESCRIPTION="a programming language prioritizing robustness, optimality, and clarity"
HOMEPAGE="https://ziglang.org/"
SRC_URI="https://ziglang.org/download/${PV}/zig-${PV}.tar.xz"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

IUSE="+clang"

DEPEND=">=sys-devel/clang-7.0.0
        >=sys-devel/lld-7.0.0
        >=sys-devel/llvm-7.0.0"
RDEPEND=">=sys-devel/clang-7.0.0
         >=sys-devel/lld-7.0.0
         >=sys-devel/llvm-7.0.0"



src_configure() {
        export CC=clang
        export CXX=clang++
	cmake-utils_src_configure
}
