
ExternalProject_Add(fdm_materials
    GIT_REPOSITORY https://github.com/Robo3D/fdm_materials
    GIT_TAG origin/${TAG_OR_BRANCH}
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX} -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
)

SetProjectDependencies(TARGET fdm_materials DEPENDS Cura)
