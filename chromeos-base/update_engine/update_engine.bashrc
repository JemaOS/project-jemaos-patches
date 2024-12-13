# Copyright (c) 2022 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  if [[ "$PV" = "9999" ]]; then
    return
  fi
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/001-update_engine_jemaos.patch
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/002-bypass_should_ignore_update_fp_check.patch
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/003-ota-checker.patch
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/004-local-ota.patch
  eapply ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/005-set-is-official-build-false.patch
  # skip_removable patch from r96 was removed here
  # if more patches needed by specified overlay(board), define a new hook with
  # different name in the overlay itself, then load from profile.bashrc of the
  # overlay
}
