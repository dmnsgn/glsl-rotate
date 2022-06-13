# glsl-rotate

[![npm version](https://img.shields.io/npm/v/glsl-rotate)](https://www.npmjs.com/package/glsl-rotate)
[![stability-frozen](https://img.shields.io/badge/stability-frozen-brightgreen.svg)](https://www.npmjs.com/package/glsl-rotate)
[![npm minzipped size](https://img.shields.io/bundlephobia/minzip/glsl-rotate)](https://bundlephobia.com/package/glsl-rotate)
[![dependencies](https://img.shields.io/librariesio/release/npm/glsl-rotate)](https://github.com/dmnsgn/glsl-rotate/blob/main/package.json)
[![types](https://img.shields.io/npm/types/glsl-rotate)](https://github.com/microsoft/TypeScript)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-fa6673.svg)](https://conventionalcommits.org)
[![styled with prettier](https://img.shields.io/badge/styled_with-Prettier-f8bc45.svg?logo=prettier)](https://github.com/prettier/prettier)
[![linted with eslint](https://img.shields.io/badge/linted_with-ES_Lint-4B32C3.svg?logo=eslint)](https://github.com/eslint/eslint)
[![license](https://img.shields.io/github/license/dmnsgn/glsl-rotate)](https://github.com/dmnsgn/glsl-rotate/blob/main/LICENSE.md)

GLSL rotation functions with matrices: 2D and 3D (with X/Y/Z convenience functions) available both as ES modules strings and as GLSL files for use with glslify.

[![paypal](https://img.shields.io/badge/donate-paypal-informational?logo=paypal)](https://paypal.me/dmnsgn)
[![coinbase](https://img.shields.io/badge/donate-coinbase-informational?logo=coinbase)](https://commerce.coinbase.com/checkout/56cbdf28-e323-48d8-9c98-7019e72c97f3)
[![twitter](https://img.shields.io/twitter/follow/dmnsgn?style=social)](https://twitter.com/dmnsgn)

## Installation

```bash
npm install glsl-rotate
```

## Usage

### ESM

```js
import * as glslRotate from "glsl-rotate";
import * as glslConstants from "glsl-constants";

const shader = /* glsl */ `
${glslRotate.ROTATE}
${glslRotate.ROTATE_X}
${glslRotate.ROTATE_Y}
${glslRotate.ROTATE_Z}

${glslConstants.HALF_PI}

void main() {
  // ...
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
}`;
```

### glslify

```glsl
#pragma glslify: rotate = require(glsl-rotate/rotate)
#pragma glslify: rotateX = require(glsl-rotate/rotateX)
#pragma glslify: rotateY = require(glsl-rotate/rotateY)
#pragma glslify: rotateZ = require(glsl-rotate/rotateZ)

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
```

## License

MIT. See [license file](https://github.com/dmnsgn/glsl-rotate/blob/main/LICENSE.md).
