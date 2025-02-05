## Louvre output with Gogh's wrapped virtual functions
import std/[logging]
import louvre
import pkg/opengl
import ./[globals]

{.pragma: immutable, codegenDecl: "const $1 $2".}

type
  GoghOutput* {.codegenDecl: FactoryDerivation.} = object of Output
  #  workspaces*: seq[Workspace]

proc initializeGL*(output: ptr GoghOutput) {.virtual.} =
  debug "output: initializing OpenGL (dispatching call to scene)"
  globals.scene.handleInitializeGL(output)
  cast[ptr Output](output).initializeGL()

  #[ var frag = compileFragmentShader("""
precision highp float;

void main()
{
  gl_FragColor = vec4(0, 0, 0, 0);
}
  """)

  var vert = compileVertexShader("""
precision highp float;
attribute vec4 a_Position;

void main()
{
  gl_Position = a_Position;
}
  """)

  var program = glCreateProgram()
  glAttachShader(program, vert)
  glAttachShader(program, frag)

  glLinkProgram(program) ]#

proc moveGL*(output: ptr GoghOutput) {.virtual.} =
  debug "output: moveGL() (dispatching call to scene)"
  globals.scene.handleMoveGL(output)
  cast[ptr Output](output).moveGL()

proc paintGL*(output: ptr GoghOutput) {.virtual.} =
  debug "output: paintGL() (dispatching call to scene)"
  globals.scene.handlePaintGL(output)
  cast[ptr Output](output).paintGL()

proc uninitializeGL*(output: ptr GoghOutput) {.virtual.} =
  debug "output: uninitializing OpenGL (dispatching call to scene)"
  globals.scene.handleUninitializeGL(output)
  cast[ptr Output](output).uninitializeGL()
