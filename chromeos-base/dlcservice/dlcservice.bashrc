# Copyright (c) 2022 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  eapply -p2 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/try_to_copy_dlc_image_from_inactive_slot.patch
  eapply -p2 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/do_not_remove_factory_install_path.patch
}
