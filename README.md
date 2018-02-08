# glsl-rotate [![frozen](http://badges.github.io/stability-badges/dist/frozen.svg)](http://github.com/badges/stability-badges)

GLSL rotation functions with matrices: 2D and 3D (with X/Y/Z convenience functions).

## Installation

```bash
npm install glsl-rotate
```

[![NPM](https://nodei.co/npm/glsl-rotate.png)](https://nodei.co/npm/glsl-rotate/)

## Usage

```glsl
#pragma glslify: rotate = require(glsl-rotate)
#pragma glslify: rotateX = require(glsl-rotate/rotateX)
#pragma glslify: rotateY = require(glsl-rotate/rotateY)
#pragma glslify: rotateZ = require(glsl-rotate/rotateZ)

const float HALF_PI = 1.570796327;

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
```

## License

MIT. See [license file](https://github.com/dmnsgn/glsl-rotate/blob/master/LICENSE.md).
