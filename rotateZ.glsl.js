export const dependencies = [
  new URL("./rotation-3d-z.glsl.js", import.meta.url),
];

export default /* glsl */ `

vec3 rotateZ(vec3 v, float angle) {
  return rotation3dZ(angle) * v;
}

`;
