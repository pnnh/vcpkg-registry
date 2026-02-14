vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO pnnh/quark
    REF v0.1.0
    SHA512 51c1f4f31cda9de7355f297d5f75a2773dcac56a3630dc7a48bc6d37c0761a06cd2e6714d9baf60547271ec6e8840a15ee2eb4d81e74e6877d5027c39c6fa602
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