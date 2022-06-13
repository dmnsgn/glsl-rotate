export const dependencies = [
  new URL("./rotation-3d-y.glsl.js", import.meta.url),
];

export default /* glsl */ `

vec3 rotateY(vec3 v, float angle) {
  return rotation3dY(angle) * v;
}

`;
