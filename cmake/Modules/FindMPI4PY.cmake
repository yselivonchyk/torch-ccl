set(MPI4PY_INCLUDE_DIRS $ENV{MPI4PY_INCLUDE_DIRS} CACHE STRING "mpi4py include dir")

if(NOT MPI4PY_INCLUDE_DIRS)
  execute_process(COMMAND
                  "${PYTHON_EXECUTABLE}" "-c" "import mpi4py; print(mpi4py.get_include())"
                  OUTPUT_VARIABLE MPI4PY_INCLUDE_DIRS
                  RESULT_VARIABLE MPI4PY_COMMAND_RESULT
                  OUTPUT_STRIP_TRAILING_WHITESPACE)

  if(MPI4PY_COMMAND_RESULT EQUAL 0)
    if (MPI4PY_INCLUDE_DIRS MATCHES "Traceback")
      message("Did not find MPI4PY. Did you pip install mpi4py before running this ?")
    else ()
      ## successful
      set(MPI4PY_FOUND TRUE)
      set(MPI4PY_INCLUDE_DIRS ${MPI4PY_INCLUDE_DIRS} CACHE STRING "mpi4py include dir")
    endif ()
  endif()
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MPI4PY DEFAULT_MSG MPI4PY_INCLUDE_DIRS)