#pragma glslify: rotate = require(../rotate)
#pragma glslify: rotateX = require(../rotateX)
#pragma glslify: rotateY = require(../rotateY)
#pragma glslify: rotateZ = require(../rotateZ)

#pragma glslify: HALF_PI = require(glsl-constants/HALF_PI)

void main() {
  vec2 p2d = vec2(1.0, 0.0);
  vec3 p3d = vec3(1.0, 0.0, 0.0);

  // 2d rotation
  p2d = rotate(p2d, HALF_PI);

  // 3d rotation
  // arbitrary axis
  vec3 axis = vec3(1.0, 0.0, 0.0);
  vec3 p3dA = rotate(p3d, axis, HALF_PI);

  // X/Y/Z axis
  vec3 p3dX = rotateX(p3d, HALF_PI);
  vec3 p3dY = rotateY(p3d, HALF_PI);
  vec3 p3dZ = rotateZ(p3d, HALF_PI);
}
