-- vector.lua
-- array notation

vec={}

-- get the dot product of two vectors
function vec.dot(a,b)return a[1]*b[1]+a[2]*b[2] end

-- scale a vector
function vec.scl(a,m)return {a[1]*m,a[2]*m}end

-- normalise a vector
function vec.nor(a)
l=vec.len(a)
if l>0 then
return {a[1]/l,a[2]/l}
end
return a
end

-- get the length of a vector
function vec.len(a)return sqrt(abs(a[1])*2+abs(a[2])*2)end

-- set the length of a vector
function vec.set_len(a,len)return vec.scl(vec.nor(a),len)end

-- sub vector 2 from vector 1
function vec.sub(a,b)return {a[1]-b[1],a[2]-b[2]}end

-- add vector 2 to vector 1
function vec.add(a,b)return {a[1]+b[1],a[2]+b[2]}end

-- get the vector for an angle
function vec.from_angle(a)return {sin(a),cos(a)}end