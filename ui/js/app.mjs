import * as shaders from './gl/shaders.mjs';
import {createShader} from './gl/shaders.mjs';
import {createProgram} from './gl/program.mjs';
import {canvasResize} from './gl/resize.mjs';

(function(module) {
  const app = {};
  app.canvas = document.querySelector('#canvas');

  const gl = canvas.getContext('webgl');
  app.gl = gl;
  if (!gl) throw new Error('No webgl context! UH OH!');

  app.vertexShader = createShader(gl, gl.VERTEX_SHADER, shaders.vertexShader2d);
  app.fragmentShader = createShader(gl, gl.FRAGMENT_SHADER, shaders.fragmentShader2d);

  const program = createProgram(gl, app.vertexShader, app.fragmentShader);
  app.program = program;

  const positionAttributeLocation = gl.getAttribLocation(program, 'a_position');
  app.positionAttributeLocation = positionAttributeLocation;

  const positionBuffer = gl.createBuffer();
  app.positionBuffer = positionBuffer;

  gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);

  let positions = [
    0, 0,
    0, 0.5,
    0.7, 0,
  ];
  gl.bufferData(gl.ARRAY_BUFFER, new Float32Array(positions), gl.STATIC_DRAW);

  canvasResize(app.canvas);
  gl.viewport(0, 0, gl.canvas.width, gl.canvas.height);

  gl.clearColor(0, 0, 0, 0);
  gl.clear(gl.COLOR_BUFFER_BIT);
  gl.useProgram(program);
  gl.enableVertexAttribArray(positionAttributeLocation);

  gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);

  // pointer, size (num dimen), type, normalize (?), stride (enum), offset
  gl.vertexAttribPointer(positionAttributeLocation, 2, gl.FLOAT, false, 0, 0);

  // type of primitive, offset, count (num primitives)
  gl.drawArrays(gl.TRIANGLES, 0, 3);

  module.app = app;
})(window)
