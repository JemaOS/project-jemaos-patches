# Copyright (c) 2022 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/001-prefer-to-use-navigator-language-for-i18n.patch
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/002-change-some-zh-CN-i18n-messages.patch
}
