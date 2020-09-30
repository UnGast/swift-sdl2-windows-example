add_executable(Application main.swift)

target_link_libraries(Application PRIVATE CSDL2)

set_target_properties(Application PROPERTIES
  Swift_LANGUAGE_VERSION 4.2)

install(TARGETS Application
  DESTINATION bin
  COMPONENT exe)