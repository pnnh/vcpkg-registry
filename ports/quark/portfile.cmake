vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO pnnh/quark
    REF v0.2.0
    SHA512 303c760dc1c7d383cfda64325adba1b2afd3f9696f7a1d91a4071fc6ea3a5203653c2ef840d4a2e1bafe9fa3ba1920757c0e1395698e586526863b9cf9f9c9c6
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