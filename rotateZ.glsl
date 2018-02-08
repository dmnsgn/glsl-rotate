#pragma glslify: rotation3dZ = require(./rotation-3d-z)

vec3 rotateY(vec3 v, float angle) {
	return rotation3dZ(angle) * v;
}

#pragma glslify: export(rotateY)
