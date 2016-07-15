///distance_to_origin(object)
var obj = argument[0];
var xx = obj.x - x;
var yy = obj.y - y;
var result = sqrt(sqr(xx) + sqr(yy));

return max(result, -result);
