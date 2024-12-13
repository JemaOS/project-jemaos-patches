# Copyright (c) 2022 Jema Technology.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_openjema_patches() {
  # USE flag `unibuild` is not used any more in r120 chromeos-config-tools
  # It doesn't mean that `unibuild` is disabled, on the contrary, it assumes `unibuild` is always enabled

  if ! use unibuild; then
    epatch ${OPENJEMA_PATCHES_BASHRC_FILESDIR}/remove_unsupported_commands_for_cros_config_setup_legacy.patch
  fi
}
