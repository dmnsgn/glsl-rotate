#pragma glslify: rotation3dY = require(./rotation-3d-y)

vec3 rotateY(vec3 v, float angle) {
  return rotation3dY(angle) * v;
}

#pragma glslify: export(rotateY)
