//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T vs_5_0 /O1 /E VSPassThrough Shaders\Source\Particle.hlsl /Fo
//    Shaders\Cache\Object\Release\VSPassThrough.obj /Fe
//    Shaders\Cache\Error\VSPassThrough.txt /Fc
//    Shaders\Cache\Assembly\VSPassThrough.asm
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// POSITION                 0   xyz         0     NONE  float   xyz 
// RADIUS                   0   x           1     NONE  float   x   
// COLOR                    0   xyzw        2     NONE  float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// POSITION                 0   xyz         0     NONE  float   xyz 
// RADIUS                   0      w        0     NONE  float      w
// COLOR                    0   xyzw        1     NONE  float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input v0.xyz
dcl_input v1.x
dcl_input v2.xyzw
dcl_output o0.xyz
dcl_output o0.w
dcl_output o1.xyzw
mov o0.xyz, v0.xyzx
mov o0.w, v1.x
mov o1.xyzw, v2.xyzw
ret 
// Approximately 4 instruction slots used