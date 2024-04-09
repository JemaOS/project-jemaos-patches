# Copyright (c) 2023 jema Innovations Limited and the jemaos Authors.
# Distributed under the license specified in the root directory of this project.

cros_pre_src_prepare_jemaos_patches() {
  if [ ${pv} != '9999' ]; then
  eapply -p1 ${JEMAOS_PATCHES_BASHRC_FILESDIR}/adhd-0.0.7-r3006.patch
  fi
}
