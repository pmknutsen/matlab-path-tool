% Startup script for Matlab.
%
% Handles allocation of correct paths when multiple releases of Matlab are
% installed on the same machine. Saving paths to the default location will
% cause paths to be changed in all installed versions. Hence, this script
% assumes that you save the path file for each Matlab release separately
% as:
%
%   ~/.matlab/matlab_pathdef_VER.m
%
% where VER is the Matlab release string. For instance:
%
%   ~/.matlab/matlab_pathdef_2012a.m
%   ~/.matlab/matlab_pathdef_2009b.m
%

% Load correct path file for this release of Matlab
sVer = version('-release');
sPathFile = ['matlab_pathdef_' sVer];
cd('~/.matlab/')
if exist(sPathFile, 'file')
    eval(sprintf('matlabpath(%s)', sPathFile));
else
    sPathFile = 'No path file found for this Matlab release! See ~/startup.m for instructions.';
end
cd ~/Code
format short g
clc
disp(['Paths were loaded from: ~/.matlab/' sPathFile])
