#pragma glslify: rotation3dZ = require(./rotation-3d-z)

vec3 rotateZ(vec3 v, float angle) {
  return rotation3dZ(angle) * v;
}

#pragma glslify: export(rotateZ)
