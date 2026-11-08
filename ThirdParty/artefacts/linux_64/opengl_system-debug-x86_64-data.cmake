########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(opengl_COMPONENT_NAMES "")
if(DEFINED opengl_FIND_DEPENDENCY_NAMES)
  list(APPEND opengl_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES opengl_FIND_DEPENDENCY_NAMES)
else()
  set(opengl_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(opengl_PACKAGE_FOLDER_DEBUG "${CMAKE_CURRENT_LIST_DIR}/../tdm_deploy/opengl")
set(opengl_BUILD_MODULES_PATHS_DEBUG )


set(opengl_INCLUDE_DIRS_DEBUG "/nix/store/7gm24cv1yy7d225qjswxwmr6b02ik884-libglvnd-1.7.0-dev/include")
set(opengl_RES_DIRS_DEBUG )
set(opengl_DEFINITIONS_DEBUG )
set(opengl_SHARED_LINK_FLAGS_DEBUG )
set(opengl_EXE_LINK_FLAGS_DEBUG )
set(opengl_OBJECTS_DEBUG )
set(opengl_COMPILE_DEFINITIONS_DEBUG )
set(opengl_COMPILE_OPTIONS_C_DEBUG )
set(opengl_COMPILE_OPTIONS_CXX_DEBUG )
set(opengl_LIB_DIRS_DEBUG "/nix/store/wwfxbskbriy9w5cyabx4z2sdak6n6jvs-libglvnd-1.7.0/lib")
set(opengl_BIN_DIRS_DEBUG )
set(opengl_LIBRARY_TYPE_DEBUG SHARED)
set(opengl_IS_HOST_WINDOWS_DEBUG 0)
set(opengl_LIBS_DEBUG )
set(opengl_SYSTEM_LIBS_DEBUG GL)
set(opengl_FRAMEWORK_DIRS_DEBUG )
set(opengl_FRAMEWORKS_DEBUG )
set(opengl_BUILD_DIRS_DEBUG )
set(opengl_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(opengl_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${opengl_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${opengl_COMPILE_OPTIONS_C_DEBUG}>")
set(opengl_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${opengl_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${opengl_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${opengl_EXE_LINK_FLAGS_DEBUG}>")


set(opengl_COMPONENTS_DEBUG )