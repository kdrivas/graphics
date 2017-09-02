#version 450

in vec3 coord;

uniform mat4 mvp;
uniform float xmin;
uniform float xmax;
uniform float ymin;
uniform float ymax;
uniform float zmin;
uniform float zmax;


out vec4 f_color;

void main(void){
    gl_Position = mvp * vec4(coord, 1);
    f_color = vec4((coord.x - xmin)/(xmax - xmin), (coord.y - ymin)/(ymax - ymin), (coord.z - zmin)/(zmax - zmin), 1);
}
