# Copyright (c) 2022 jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_jemaos_patches() {
  if [[ "${PV}" != "9999" ]]; then
    eapply -p1 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/borealis-skip-untrusted-vm-error.patch
    eapply -p1 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/disable_smt.patch
    eapply -p1 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/disable_foz_db_list.patch
  fi
}

# cros_pre_src_prepare_jemaos_patches_fix_syntax_error() {
  # the syntax error still exists in r102
  # eapply -p2 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/r96_fix_vm_concierge_if_syntax_error.patch
# }
