find_package(LLVM REQUIRED)
set(CMAKE_CXX_FLAGS "-Wall -g3 -O3 -fno-rtti ${LLVM_COMPILE_FLAGS}")

set(LLVM_LINK_COMPONENTS
  Core
  Support
  )

llvm_map_components_to_libnames(REQ_LLVM_LIBRARIES ${LLVM_TARGETS_TO_BUILD}
        core support
)

add_executable(DRace main.cpp tool.cpp cJSON.c)

target_link_libraries(DRace ${REQ_LLVM_LIBRARIES})

