uniform float uTime;

vec3 colorA = vec3(0.912, 0.834, 0.426);
vec3 colorB = vec3(0.973, 0.669, 1.000);

void main() {
    vec3 color = vec3(0.0);

    float pct = abs(sin(uTime));

    color = mix(colorA, colorB, pct);

    float distanceToCenter = distance(gl_PointCoord, vec2(0.5));
    float strength = (0.05 / distanceToCenter) - 0.05 * 2.0;

    gl_FragColor = vec4(color, strength);
}
