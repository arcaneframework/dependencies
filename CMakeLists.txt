cmake_minimum_required(VERSION 3.12.0)

project(ArcDependencies LANGUAGES NONE VERSION 1.0.0)

include(GNUInstallDirs)

set(config_install_dir "${CMAKE_INSTALL_LIBDIR}/cmake")
set(dependencies_install_root "${CMAKE_INSTALL_DATADIR}")
set(generated_dir "${CMAKE_CURRENT_BINARY_DIR}/generated")

install(DIRECTORY nuget_fallback DESTINATION ${dependencies_install_root})
set(NUGET_SOURCES_DIR "${dependencies_install_root}/nuget_fallback")
set(ARCDEPENDENCIES_NUGET_SOURCES_DIR "${CMAKE_CURRENT_SOURCE_DIR}/nuget_fallback" CACHE FILEPATH "Source of nuget packages" FORCE)

message(STATUS "[dependencies] '${ARCDEPENDENCIES_NUGET_SOURCES_DIR}'")

# Configuration
set(project_config_version "${generated_dir}/${PROJECT_NAME}ConfigVersion.cmake")
set(project_config "${generated_dir}/${PROJECT_NAME}Config.cmake")

include(CMakePackageConfigHelpers)
configure_package_config_file(ArcDependenciesConfig.cmake.in ${project_config}
  INSTALL_DESTINATION ${config_install_dir}
  PATH_VARS NUGET_SOURCES_DIR
  )

write_basic_package_version_file(
  ${project_config_version}
  VERSION ${ArcDependencies_VERSION}
  COMPATIBILITY SameMajorVersion)
install(FILES ${project_config_version} ${project_config}
        DESTINATION ${config_install_dir} )
