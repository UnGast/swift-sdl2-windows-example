add_executable(Application main.swift)

target_compile_options(Application PRIVATE
  $<$<BOOL:BUILD_TESTING>:-enable-testing>)

set_target_properties(Application PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_Swift_MODULE_DIRECTORY})

install(TARGETS Application
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
  COMPONENT lib)
