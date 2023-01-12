help([[
]])

prepend_path("MODULEPATH", "/apps/hpc-stack/libs/hpc-stack/modulefiles/stack")

local hpc_ver=os.getenv("hpc_ver") or "1.1.0"
local hpc_intel_ver=os.getenv("hpc_intel_ver") or "2021.3.0"
local hpc_impi_ver=os.getenv("hpc_impi_ver") or "2021.3.0"
local intelpython_ver=os.getenv("anaconda_ver") or "2021.3.0"
local prod_util_ver=os.getenv("prod_util_ver") or "1.2.2"

load(pathJoin("hpc", hpc_ver))
load(pathJoin("hpc-intel", hpc_intel_ver))
load(pathJoin("hpc-impi", hpc_impi_ver))

prepend_path("MODULEPATH", "/contrib/anaconda/modulefiles")

load(pathJoin("intelpython", intelpython_ver))

load("gsiutils_common")

load(pathJoin("prod_util", prod_util_ver))

pushenv("CFLAGS", "-xHOST")
pushenv("FFLAGS", "-xHOST")

whatis("Description: GSI utilities environment on GCP with Intel Compilers")
