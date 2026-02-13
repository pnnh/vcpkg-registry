vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO pnnh/quark
    REF 0.1.0
    SHA512 280c1b3ac89ad7ed34e4d6910a2d01b14e4e0d8c7bd30e4fb4de804c90f87e234232f4c25bf991c9160e4160f8d4eb03125260c5e0b44efcc8c0e75233fff372
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTING=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/quark)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")