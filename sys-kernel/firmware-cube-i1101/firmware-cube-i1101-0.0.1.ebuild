# Copyright (c) 2022 jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

EAPI="5"

DESCRIPTION="empty project"
HOMEPAGE="http://jemaos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"
S=${WORKDIR}
src_install() {
  insinto /lib/firmware/silead
  doins ${FILESDIR}/gsl3692-cube-knote-i1101.fw
  doins ${FILESDIR}/gsl3692-cube-knote-i1102.fw
}
