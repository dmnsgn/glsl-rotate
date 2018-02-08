#pragma glslify: rotation2d = require(./rotation-2d)
#pragma glslify: rotation3d = require(./rotation-3d)

vec2 rotate(vec2 v, float angle) {
	return rotation2d(angle) * v;
}

vec3 rotate(vec3 v, vec3 axis, float angle) {
	return (rotation3d(axis, angle) * vec4(v, 1.0)).xyz;
}

#pragma glslify: export(rotate)
