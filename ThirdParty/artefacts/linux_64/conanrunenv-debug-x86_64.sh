script_folder="/home/coldelectrons/projects/thedarkmod-vr/darkmod_src.xr/ThirdParty/artefacts/linux_64"
echo "echo Restoring environment" > "$script_folder/deactivate_conanrunenv-debug-x86_64.sh"
for v in LD_LIBRARY_PATH DYLD_LIBRARY_PATH ALSA_CONFIG_DIR
do
   is_defined="true"
   value=$(printenv $v) || is_defined="" || true
   if [ -n "$value" ] || [ -n "$is_defined" ]
   then
       echo export "$v='$value'" >> "$script_folder/deactivate_conanrunenv-debug-x86_64.sh"
   else
       echo unset $v >> "$script_folder/deactivate_conanrunenv-debug-x86_64.sh"
   fi
done

export LD_LIBRARY_PATH="/nix/store/wwfxbskbriy9w5cyabx4z2sdak6n6jvs-libglvnd-1.7.0/lib:/nix/store/bia0a5iv1i780a2rh10hhab168mmil4h-glu-9.0.3/lib:/nix/store/wwfxbskbriy9w5cyabx4z2sdak6n6jvs-libglvnd-1.7.0/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export DYLD_LIBRARY_PATH="/nix/store/wwfxbskbriy9w5cyabx4z2sdak6n6jvs-libglvnd-1.7.0/lib:/nix/store/bia0a5iv1i780a2rh10hhab168mmil4h-glu-9.0.3/lib:/nix/store/wwfxbskbriy9w5cyabx4z2sdak6n6jvs-libglvnd-1.7.0/lib${DYLD_LIBRARY_PATH:+:$DYLD_LIBRARY_PATH}"
export ALSA_CONFIG_DIR="$script_folder/../tdm_deploy/libalsa/res/alsa"