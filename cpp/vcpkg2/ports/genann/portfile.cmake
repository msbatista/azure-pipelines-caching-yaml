include(vcpkg_common_functions)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO codeplea/genann
    REF 122243f9449b3e33a4e11450b70c10576d4559d7
    SHA512 d70cb8bc678d80ed3e790866f6060850cf9309eefe90d3ca4d77e28538639a927333d49c4d1af3e81123b8e88224f2f51b74ec41ca22639a276359568652ed15
    HEAD_REF master
)

file(COPY ${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt DESTINATION ${SOURCE_PATH})

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS_RELEASE -DINSTALL_HEADERS=ON
    OPTIONS_DEBUG -DINSTALL_HEADERS=OFF
)

vcpkg_install_cmake()

# Handle copyright
file(COPY ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/genann)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/genann/LICENSE ${CURRENT_PACKAGES_DIR}/share/genann/copyright)

