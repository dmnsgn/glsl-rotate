export const dependencies = [
  new URL("./rotation-3d-x.glsl.js", import.meta.url),
];

export default /* glsl */ `

vec3 rotateX(vec3 v, float angle) {
  return rotation3dX(angle) * v;
}

`;
