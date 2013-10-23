//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T vs_5_0 /O1 /E VS_RenderHairNoGS_StrandCopies
//    shaders\Source\hairBasic.hlsl /Fo
//    Shaders\Cache\Object\Release\VS_RenderHairNoGS_StrandCopies.obj /Fe
//    Shaders\Cache\Error\VS_RenderHairNoGS_StrandCopies.txt /Fc
//    Shaders\Cache\Assembly\VS_RenderHairNoGS_StrandCopies.asm
//
//
// Buffer Definitions: 
//
// cbuffer cbPerFrame
// {
//
//   float4x4 g_mWorld;                 // Offset:    0 Size:    64 [unused]
//   float4x4 g_mViewProj;              // Offset:   64 Size:    64
//   float4x4 g_mInvViewProj;           // Offset:  128 Size:    64 [unused]
//   float4x4 g_mViewProjLight;         // Offset:  192 Size:    64 [unused]
//   float3 g_vEye;                     // Offset:  256 Size:    12
//   float g_fvFov;                     // Offset:  268 Size:     4 [unused]
//   float4 g_AmbientLightColor;        // Offset:  272 Size:    16 [unused]
//   float4 g_PointLightColor;          // Offset:  288 Size:    16 [unused]
//   float4 g_PointLightPos;            // Offset:  304 Size:    16 [unused]
//   float4 g_MatBaseColor;             // Offset:  320 Size:    16 [unused]
//   float4 g_MatKValue;                // Offset:  336 Size:    16 [unused]
//   float g_FiberAlpha;                // Offset:  352 Size:     4 [unused]
//   float g_HairShadowAlpha;           // Offset:  356 Size:     4 [unused]
//   float g_bExpandPixels;             // Offset:  360 Size:     4
//   float g_FiberRadius;               // Offset:  364 Size:     4
//   float g_fHairKs2;                  // Offset:  368 Size:     4 [unused]
//   float g_fHairEx2;                  // Offset:  372 Size:     4 [unused]
//   float2 g_WinSize;                  // Offset:  376 Size:     8
//   float g_FiberSpacing;              // Offset:  384 Size:     4 [unused]
//   float g_bThinTip;                  // Offset:  388 Size:     4
//   float g_fNearLight;                // Offset:  392 Size:     4 [unused]
//   float g_fFarLight;                 // Offset:  396 Size:     4 [unused]
//   int g_iTechSM;                     // Offset:  400 Size:     4 [unused]
//   int g_bUseCoverage;                // Offset:  404 Size:     4 [unused]
//   int g_bUseAltCoverage;             // Offset:  408 Size:     4 [unused]
//   int g_iStrandCopies;               // Offset:  412 Size:     4
//
// }
//
// Resource bind info for g_GuideHairVertexPositions
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
// Resource bind info for g_GuideHairVertexTangents
// {
//
//   float4 $Element;                   // Offset:    0 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// g_samLinearWrap                   sampler      NA          NA    0        1
// g_txNoise                         texture  float4          2d    5        1
// g_HairIndices                     texture    uint         buf    6        1
// g_HairThicknessCoeffs             texture   float         buf    7        1
// g_GuideHairVertexPositions        texture  struct         r/o    8        1
// g_GuideHairVertexTangents         texture  struct         r/o    9        1
// cbPerFrame                        cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_VertexID              0   x           0   VERTID   uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_POSITION              0   xyzw        0      POS  float   xyzw
// Tangent                  0   xyz         1     NONE  float   xyz 
// TEXCOORD                 0   xyzw        2     NONE  float   xyzw
// TEXCOORD                 1   xyz         3     NONE  float   xyz 
// TEXCOORD                 2   xyz         4     NONE  float   xyz 
// TEXCOORD                 3   xyz         5     NONE  float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { -1.000000, 0, 0, 0},
                              { -1.000000, 0, 0, 0},
                              { 1.000000, 0, 0, 0},
                              { -1.000000, 0, 0, 0},
                              { 1.000000, 0, 0, 0},
                              { 1.000000, 0, 0, 0} }
dcl_constantbuffer cb0[26], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_buffer (uint,uint,uint,uint) t6
dcl_resource_buffer (float,float,float,float) t7
dcl_resource_structured t8, 16 
dcl_resource_structured t9, 16 
dcl_input_sgv v0.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_output o2.xyzw
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output o5.xyz
dcl_temps 6
dcl_indexableTemp x0[2], 4
dcl_indexableTemp x1[2], 4
dcl_indexableTemp x2[2], 4
dcl_indexableTemp x3[2], 4
dcl_indexableTemp x4[2], 4
imul null, r0.x, l(6), cb0[25].w
udiv r0.x, r1.x, v0.x, r0.x
ishl r0.y, r0.x, l(1)
udiv r0.z, null, r1.x, l(6)
ubfe r0.w, l(26), l(5), r0.x
iadd r0.w, r0.w, l(1)
iadd r1.x, r0.z, l(1)
imul null, r0.w, r0.w, r1.x
and r0.w, r0.w, l(511)
utof r0.zw, r0.zzzw
mul r1.x, r0.w, l(0.001953)
mov r1.y, l(0)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t5.xyzw, s0, l(0.000000)
mul r1.xyz, r0.zzzz, r1.xyzx
mad r1.xyz, r1.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
ld_indexable(buffer)(uint,uint,uint,uint) r0.y, r0.yyyy, t6.yxzw
bfi r0.x, l(31), l(1), r0.x, l(1)
ld_indexable(buffer)(uint,uint,uint,uint) r0.x, r0.xxxx, t6.xyzw
mov x0[0].x, l(1.000000)
mov x0[1].x, l(1.000000)
lt r0.z, l(0.000000), cb0[24].y
if_nz r0.z
  ld_indexable(buffer)(float,float,float,float) r0.z, r0.yyyy, t7.yzxw
  mov x0[0].x, r0.z
  ld_indexable(buffer)(float,float,float,float) r0.z, r0.xxxx, t7.yzxw
  mov x0[1].x, r0.z
endif 
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r2.xyz, r0.y, l(0), t9.xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.zxyz
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r3.xyz, r0.x, l(0), t9.xyzx
dp3 r0.z, r3.xyzx, r3.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r3.zxyz
mov x1[0].xyz, r2.yzxy
mov x1[1].xyz, r3.yzxy
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r0.yzw, r0.y, l(0), t8.xxyz
add r0.yzw, r0.yyzw, r1.xxyz
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r4.xyz, r0.x, l(0), t8.xyzx
add r1.xyz, r1.xyzx, r4.xyzx
mov x2[0].xyz, r0.yzwy
mov x2[1].xyz, r1.xyzx
add r4.xyz, r0.zwyz, -cb0[16].yzxy
dp3 r0.x, r4.xyzx, r4.xyzx
rsq r0.x, r0.x
mul r4.xyz, r0.xxxx, r4.xyzx
mul r5.xyz, r2.xyzx, r4.xyzx
mad r2.xyz, r2.zxyz, r4.yzxy, -r5.xyzx
dp3 r0.x, r2.xyzx, r2.xyzx
rsq r0.x, r0.x
mul r2.xyz, r0.xxxx, r2.xyzx
add r4.xyz, r1.yzxy, -cb0[16].yzxy
dp3 r0.x, r4.xyzx, r4.xyzx
rsq r0.x, r0.x
mul r4.xyz, r0.xxxx, r4.xyzx
mul r5.xyz, r3.xyzx, r4.xyzx
mad r3.xyz, r3.zxyz, r4.yzxy, -r5.xyzx
dp3 r0.x, r3.xyzx, r3.xyzx
rsq r0.x, r0.x
mul r3.xyz, r0.xxxx, r3.xyzx
mov x3[0].xyz, r2.xyzx
mov x3[1].xyz, r3.xyzx
dp3 r4.x, r2.xyzx, cb0[4].xyzx
dp3 r4.y, r2.xyzx, cb0[5].xyzx
dp2 r0.x, r4.xyxx, r4.xyxx
rsq r0.x, r0.x
mul r2.xy, r0.xxxx, r4.xyxx
dp3 r4.x, r3.xyzx, cb0[4].xyzx
dp3 r4.y, r3.xyzx, cb0[5].xyzx
dp2 r0.x, r4.xyxx, r4.xyxx
rsq r0.x, r0.x
mul r2.zw, r0.xxxx, r4.xxxy
mov x4[0].xy, r2.xyxx
mov x4[1].xy, r2.zwzz
lt r0.x, cb0[22].z, l(0.000000)
movc r0.x, r0.x, l(0), l(0.710000)
udiv null, r1.w, v0.x, l(6)
and r2.x, r1.w, l(1)
iadd r2.y, l(5), -r1.w
ult r2.z, r1.w, l(4)
movc r2.x, r2.z, r2.x, r2.y
mov r2.yzw, x2[r2.x + 0].xxyz
mov r3.xyz, x3[r2.x + 0].xyzx
mul r3.xyz, r3.xyzx, icb[r1.w + 0].xxxx
mov r3.w, x0[r2.x + 0].x
mul r3.xyz, r3.wwww, r3.xyzx
mad r4.xyz, r3.xyzx, cb0[22].wwww, r2.yzwy
mov r4.w, l(1.000000)
dp4 r5.x, r4.xyzw, cb0[4].xyzw
dp4 r5.y, r4.xyzw, cb0[5].xyzw
dp4 r5.z, r4.xyzw, cb0[6].xyzw
dp4 r5.w, r4.xyzw, cb0[7].xyzw
div r4.xyzw, r5.xyzw, r5.wwww
mov r3.xy, x4[r2.x + 0].xyxx
mul r3.xy, r0.xxxx, r3.xyxx
div r3.xy, r3.xyxx, cb0[23].wwww
mul r5.xy, r3.xyxx, icb[r1.w + 0].xxxx
mov r5.zw, l(0,0,0,0)
add o0.xyzw, r4.xyzw, r5.xyzw
mov o1.xyz, x1[r2.x + 0].xyzx
mov o2.xyw, l(0,0,0,0)
mov o2.z, r3.w
mov o3.xyz, r2.yzwy
mov o4.xyz, r0.yzwy
mov o5.xyz, r1.xyzx
ret 
// Approximately 107 instruction slots used