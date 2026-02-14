vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO pnnh/quark
    REF v0.1.0
    SHA512 8743fa045587c812077c67902c81613c971837436c74e4426bc14584763425cbadf8384c60a8c9ddd7b02b0d10e1aaef9e591ae6314c515f6f41954483c703da
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