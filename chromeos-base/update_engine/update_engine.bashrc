cros_pre_src_prepare_jemaos_patches() {
 # eapply ${JEMAOS_PATCHES_BASHRC_FILESDIR}/001-update_engine_jemaos.patch
  eapply ${JEMAOS_PATCHES_BASHRC_FILESDIR}/002-bypass_should_ignore_update_fp_check.patch
  
  # Vérifiez si les modifications du patch sont déjà présentes
  # grep -q "OTANeeded" ~/r114/jemaos/chromium/src/jemaos/misc/jemaos_toggle_ota.cc
  # if [ $? -ne 0 ]; then
    # Si les modifications ne sont pas présentes, appliquez le patch
    # eapply ${JEMAOS_PATCHES_BASHRC_FILESDIR}/003-ota-checker.patch
  # fi
  
  #eapply ${JEMAOS_PATCHES_BASHRC_FILESDIR}/004-local-ota.patch
  # skip_removable patch from r96 was removed here
  # if more patches needed by specified overlay(board), define a new hook with
  # different name in the overlay itself, then load from profile.bashrc of the
  # overlay
}
