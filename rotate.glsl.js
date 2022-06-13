export const dependencies = [
  new URL("./rotation-2d.glsl.js", import.meta.url),
  new URL("./rotation-3d.glsl.js", import.meta.url),
];

export default /* glsl */ `

vec2 rotate(vec2 v, float angle) {
  return rotation2d(angle) * v;
}

vec3 rotate(vec3 v, vec3 axis, float angle) {
  return (rotation3d(axis, angle) * vec4(v, 1.0)).xyz;
}

`;
