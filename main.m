
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPEA121
% Project Title: Multi-Objective Particle Swarm Optimization (MOPSO)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

MaxIter = 1;

load seed.mat

func = {'sch', 'fon', 'zdt1', 'zdt2', 'zdt3', 'zdt6', 'zdt4'};  % zdt4无法收敛，kur还没找到真实pareto解

nFunc = numel(func);
time = zeros(MaxIter, nFunc);

gd_save = cell(MaxIter, nFunc);
inverted_gd_save = cell(MaxIter, nFunc);
hv_save = cell(MaxIter, nFunc);
sp_save = cell(MaxIter, nFunc);
delta_save = cell(MaxIter, nFunc);
repository = cell(MaxIter, nFunc);

for func_no = 7:7
    for i = 1 : MaxIter
        tic
        tmopso(seed(i), func{func_no});
        toc
        time(i, func_no) = toc;
    end
    
end
% filename = ['mopso_20190925_nGrid=' num2str(nGrid) '.mat'];
% save(filename, 'func', 'time', 'hv_save', 'gd_save', 'inverted_gd_save', 'sp_save', 'delta_save', 'repository')

