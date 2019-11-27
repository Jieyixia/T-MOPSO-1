function d = GetTargetDist(cost, target_region)

obj_num = length(cost);
% if the solution is within target region
flag = 0;
for i = 1 : obj_num
    if cost(i) >= target_region.lb(i) && cost(i) <= target_region.ub(i)
        continue
    else
        flag = 1;
        break
    end
end

if flag == 0
    d = 0;
    return
end
% else
d = pdist2(cost', target_region.lb, 'minkowski');

end