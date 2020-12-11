# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake llvm

DESCRIPTION="A robust, optimal, and maintainable programming language"
HOMEPAGE="https://ziglang.org/"
LICENSE="MIT"
SLOT="0"
IUSE="experimental"

if [[ ${PV} == 9999 ]]; then
	EGIT_REPO_URI="https://github.com/ziglang/zig.git"
	inherit git-r3
else
	SRC_URI="https://github.com/ziglang/zig/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

ALL_LLVM_TARGETS=( AArch64 AMDGPU ARM BPF NVPTX X86  AVR Hexagon Lanai
        MSP430 Mips PowerPC RISCV Sparc SystemZ WebAssembly XCore)
ALL_LLVM_TARGETS=( "${ALL_LLVM_TARGETS[@]/#/llvm_targets_}" )
# According to zig's author, zig builds that do not support all targets are not
# supported by the upstream project.
LLVM_TARGET_USEDEPS=${ALL_LLVM_TARGETS[@]}

RDEPEND="
	sys-devel/llvm:11
	!experimental? ( sys-devel/llvm:11[${LLVM_TARGET_USEDEPS// /,}] )
	sys-devel/clang:11
	sys-devel/lld
"

DEPEND="${RDEPEND}"

LLVM_MAX_SLOT=11

llvm_check_deps() {
	has_version "sys-devel/clang:${LLVM_MAX_SLOT}"
}

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	cmake_src_configure
}


mycmakeargs=( -DZIG_PREFER_CLANG_CPP_DYLIB=true )
