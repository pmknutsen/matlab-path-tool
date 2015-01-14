## matlab-path-tool
Manage paths with multiple Matlab versions

`matlab-path-tool` is a simple start-up script that works in any Matlab version.

It handles allocation of correct paths when multiple releases of Matlab are installed on the same machine. Saving paths to the default location may cause paths to be changed in all installed versions.

This script assumes that you have saved the path file for each Matlab release separately as:

  `~/.matlab/matlab_pathdef_VER.m`

where `VER` is the Matlab release string. For instance:

  `~/.matlab/matlab_pathdef_2012a.m`
  `~/.matlab/matlab_pathdef_2009b.m`

Place the `startup.m` file included here in your home directory so that it will be loaded first when Matlab starts.
