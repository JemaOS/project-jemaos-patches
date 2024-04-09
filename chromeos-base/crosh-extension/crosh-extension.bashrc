# Copyright (c) 2022 Jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_jemaos_patches() {
  eapply ${JEMAOS_PATCHES_BASHRC_FILESDIR}/001-prefer-to-use-navigator-language-for-i18n.patch
  eapply ${JEMAOS_PATCHES_BASHRC_FILESDIR}/002-change-some-zh-CN-i18n-messages.patch
}
