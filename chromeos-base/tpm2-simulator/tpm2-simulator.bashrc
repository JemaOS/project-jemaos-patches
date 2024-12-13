# Copyright (c) 2022 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  if use arm; then
    eapply -p2 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/tpm2-simulator-0.0.1-fix-arm-policy.patch
  fi

  if use arm64; then
    eapply -p2 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/tpm2-simulator-0.0.1-fix-arm64-policy.patch
  fi
}
