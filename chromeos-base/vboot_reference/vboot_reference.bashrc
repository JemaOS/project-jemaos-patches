# Copyright (c) 2022 jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_jemaos_patches() {
  eapply ${JEMAOS_PATCHES_BASHRC_FILESDIR}/force_set_vm.patch
}