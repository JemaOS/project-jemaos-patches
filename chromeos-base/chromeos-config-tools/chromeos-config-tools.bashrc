# Copyright (c) 2022 Jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_jemaos_patches() {
  if ! use unibuild; then
    epatch ${JEMAOS_PATCHES_BASHRC_FILESDIR}/remove_unsupported_commands_for_cros_config_setup_legacy.patch
  fi
}
