# Copyright (c) 2022 Jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_jemaos_patches() {
  eapply -p2 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/try_to_copy_dlc_image_from_inactive_slot.patch
}
