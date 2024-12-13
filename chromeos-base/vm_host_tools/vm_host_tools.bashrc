# Copyright (c) 2022 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  if [[ "${PV}" != "9999" ]]; then
    eapply -p1 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/borealis-skip-untrusted-vm-error.patch
    eapply -p1 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/disable_smt.patch
    eapply -p1 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/disable_foz_db_list.patch
    eapply -p1 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/resolve_arc_path.patch
  fi
}
