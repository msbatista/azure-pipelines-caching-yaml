# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/integer
    REF boost-1.71.0
    SHA512 0899a11cd4ff41a6f70dba0971e973c9316fd60f6d055c8e7d5de24f6aec254a81d7dfa2d80187542d7c8046c685e3ee50adb826b9194a5c5ae982d26b265ff5
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
