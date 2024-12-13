# Copyright (c) 2023 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  if [ $PV == "9999" ]; then
    return
  fi
  eapply -p2 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/add-support-for-ppp-on-cellular-device.patch
  eapply -p2 ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/fix-signal-for-the-device-with-no-signal-interface.patch
}
