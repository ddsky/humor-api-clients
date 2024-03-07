cmake_minimum_required(VERSION 3.5)

project(humorapi)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Network Gui)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Network Gui)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

add_library(${PROJECT_NAME}
  OAIAnalyze_joke_200_response.h
  OAIGenerate_nonsense_word_200_response.h
  OAIPraise_200_response.h
  OAIRandom_joke_200_response.h
  OAIRandom_meme_200_response.h
  OAIRate_word_200_response.h
  OAISearch_gifs_200_response.h
  OAISearch_gifs_200_response_images_inner.h
  OAISearch_jokes_200_response.h
  OAISearch_jokes_200_response_jokes_inner.h
  OAISearch_memes_200_response.h
  OAISearch_memes_200_response_memes_inner.h
  OAISubmit_joke_200_response.h
  OAIJokesApi.h
  OAIMemesApi.h
  OAIOtherApi.h
  OAIHelpers.h
  OAIHttpRequest.h
  OAIObject.h
  OAIEnum.h
  OAIHttpFileElement.h
  OAIServerConfiguration.h
  OAIServerVariable.h
  OAIOauth.h
  OAIAnalyze_joke_200_response.cpp
  OAIGenerate_nonsense_word_200_response.cpp
  OAIPraise_200_response.cpp
  OAIRandom_joke_200_response.cpp
  OAIRandom_meme_200_response.cpp
  OAIRate_word_200_response.cpp
  OAISearch_gifs_200_response.cpp
  OAISearch_gifs_200_response_images_inner.cpp
  OAISearch_jokes_200_response.cpp
  OAISearch_jokes_200_response_jokes_inner.cpp
  OAISearch_memes_200_response.cpp
  OAISearch_memes_200_response_memes_inner.cpp
  OAISubmit_joke_200_response.cpp
  OAIJokesApi.cpp
  OAIMemesApi.cpp
  OAIOtherApi.cpp
  OAIHelpers.cpp
  OAIHttpRequest.cpp
  OAIHttpFileElement.cpp
  OAIOauth.cpp
  )

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        Qt${QT_VERSION_MAJOR}::Core
        Qt${QT_VERSION_MAJOR}::Network
        Qt${QT_VERSION_MAJOR}::Gui

)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)

install(
    TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
)

install(
    FILES ${HEADER_FILES}
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
)

install(
    FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)

install(
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)
