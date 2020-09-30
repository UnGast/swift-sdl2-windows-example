
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS true)

add_library(CSDL2 SHARED
  shim.c)

target_include_directories(CSDL2 PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_link_libraries(CSDL2 ${CMAKE_CURRENT_SOURCE_DIR}/lib/x64/SDL2.lib)

install(TARGETS CSDL2
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin)

file(COPY
  lib/x64/SDL2.dll
  lib/x64/SDL2.lib 
  lib/x64/SDL2main.lib DESTINATION ${CMAKE_BINARY_DIR}/bin)