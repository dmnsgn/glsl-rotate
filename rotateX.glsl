#pragma glslify: rotation3dX = require(./rotation-3d-x)

vec3 rotateX(vec3 v, float angle) {
  return rotation3dX(angle) * v;
}

#pragma glslify: export(rotateX)
