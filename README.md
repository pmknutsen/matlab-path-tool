# matlab-path-tool
Manage paths with multiple Matlab versions


Startup script for Matlab.

Handles allocation of correct paths when multiple releases of Matlab are
installed on the same machine. Saving paths to the default location will
cause paths to be changed in all installed versions. Hence, this script
assumes that you save the path file for each Matlab release separately
as:


```matlab
~/.matlab/matlab_pathdef_VER.m```

where VER is the Matlab release string. For instance:

```matlab
~/.matlab/matlab_pathdef_2012a.m```
```matlab
~/.matlab/matlab_pathdef_2009b.m```
