# Copyright (c) 2022 jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

# Copyright 2016 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Ebuild which pulls in any necessary ebuilds as dependencies
or portage actions."

LICENSE="metapackage"
SLOT="0"
KEYWORDS="-* amd64 x86"
S="${WORKDIR}"
IUSE="skl_lpe apl_lpe kbl_lpe cnl_lpe glk_lpe has_private_audio_topology"
# Add dependencies on other ebuilds from within this board overlay
RDEPEND="
	apl_lpe? ( sys-kernel/linux-firmware[linux_firmware_adsp_apl] )
	cnl_lpe? ( sys-kernel/linux-firmware[linux_firmware_adsp_cnl] )
	glk_lpe? ( sys-kernel/linux-firmware[linux_firmware_adsp_glk] )
	kbl_lpe? ( sys-kernel/linux-firmware[linux_firmware_adsp_kbl] )
	!has_private_audio_topology? ( media-libs/lpe-support-topology )
	has_private_audio_topology? ( media-libs/lpe-support-topology-private )
	skl_lpe? ( sys-kernel/linux-firmware[linux_firmware_adsp_skl] )
"
DEPEND="${RDEPEND}"
