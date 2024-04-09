# Copyright (c) 2022 Jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_jemaos_patches() {
  if use arm; then
    eapply -p2 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/tpm2-simulator-0.0.1-fix-arm-policy.patch
  fi

  if use arm64; then
    eapply -p2 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/tpm2-simulator-0.0.1-fix-arm64-policy.patch
  fi
}
