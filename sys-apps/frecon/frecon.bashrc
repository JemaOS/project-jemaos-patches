# Copyright (c) 2022 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/frecon_splash_increase_max_splash_images.patch
}
