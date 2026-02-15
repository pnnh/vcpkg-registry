vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO pnnh/quark
    REF v0.2.0
    SHA512 4c267973b2761960ab210208aef7b5c9c06e918706b173fd19674be22f0b6275b3fd13896e409c5e3b37d6e4bf4827da961039aaf9705e3b637c3743d817936b
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/quark)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")