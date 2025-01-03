help([[
]])

prepend_path("MODULEPATH", "/apps/ops/test/spack-stack-1.6.0-nco/envs/nco-intel-19.1.3.304/install/modulefiles/Core")

local stack_python_ver=os.getenv("python_ver") or "3.10.13"
local stack_intel_ver=os.getenv("stack_intel_ver") or "19.1.3.304"
local stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "8.1.9"
local cmake_ver=os.getenv("cmake_ver") or "3.23.1"
local prod_util_ver=os.getenv("prod_util_ver") or "2.0.10"

load(pathJoin("stack-intel", stack_intel_ver))
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))
load(pathJoin("stack-python", stack_python_ver))
load(pathJoin("cmake", cmake_ver))

load("gsiutils_common")

load(pathJoin("prod_util", prod_util_ver))

whatis("Description: GSI utilities environment on WCOSS2")
