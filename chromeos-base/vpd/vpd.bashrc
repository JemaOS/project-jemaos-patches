# Copyright (c) 2023 Jema Technology.
# Distributed under the license specified in the root directory of this project.

VPD_TEMPLATE="oem_licence.tmp"
cros_pre_src_prepare_openjema_patches() {
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/*.patch
  cp ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/${VPD_TEMPLATE} ${S}
}

cros_pre_src_compile_openjema_patches() {
  cat ${VPD_TEMPLATE} | gzip > "vpd.gz"
}

cros_post_src_install_openjema_patches() {
	insinto /etc/init
  doins ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/check_serial_number.conf
  insinto /usr/share/cros/init
  doins vpd.gz
  doins ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/check_serial_number.sh
}
