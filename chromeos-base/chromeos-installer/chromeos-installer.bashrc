# Copyright (c) 2022 Jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

cros_post_src_install_jemaos_mark_clean_overlay() {
  exeinto /usr/sbin
  doexe ${JEMAOS_PATCHES_BASHRC_FILESDIR}/mark_clean_overlay.sh
}

cros_pre_src_prepare_jemaos_patches() {
  eapply -p2 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/postinst.patch
}
