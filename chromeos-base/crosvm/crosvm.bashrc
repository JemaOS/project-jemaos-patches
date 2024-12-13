cros_pre_src_prepare_openjema_patches() {
  if [[ "${PV}" != "9999" ]]; then
    eapply -p1 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/001-add-support-pipe-file-as-serial-input.patch
  fi
}
