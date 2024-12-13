# Copyright (c) 2022 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  eapply -p2 "${OPENJEMA_PATCHES_BASHRC_FILESDIR}/cros_i686_issue.patch"
}
