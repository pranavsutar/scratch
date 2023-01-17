# CMake generated Testfile for 
# Source directory: /home/admin/ns-allinone-3.37/ns-3.37/scratch
# Build directory: /home/admin/ns-allinone-3.37/ns-3.37/scratch
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-scratch_hello "ns3.37-hello-default")
set_tests_properties(ctest-scratch_hello PROPERTIES  WORKING_DIRECTORY "/home/admin/ns-allinone-3.37/ns-3.37/build/scratch/")
add_test(ctest-scratch_scratch-simulator "ns3.37-scratch-simulator-default")
set_tests_properties(ctest-scratch_scratch-simulator PROPERTIES  WORKING_DIRECTORY "/home/admin/ns-allinone-3.37/ns-3.37/build/scratch/")
add_test(ctest-scratch_subdir_scratch-subdir "ns3.37-scratch-subdir-default")
set_tests_properties(ctest-scratch_subdir_scratch-subdir PROPERTIES  WORKING_DIRECTORY "/home/admin/ns-allinone-3.37/ns-3.37/build/scratch/subdir/")
