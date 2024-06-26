#ifndef XENIA_GPU_D3D12_SHADERS_XENOS_DRAW_HLSLI_
#define XENIA_GPU_D3D12_SHADERS_XENOS_DRAW_HLSLI_

cbuffer xe_system_cbuffer : register(b0) {
  // vec4 0
  uint xe_flags;
  uint xe_vertex_index_endian;
  uint xe_vertex_base_index;
  uint xe_pixel_pos_reg;
  // vec4 1
  float3 xe_ndc_scale;
  float xe_pixel_half_pixel_offset;
  // vec4 2
  float3 xe_ndc_offset;
  int xe_alpha_test;
  // vec4 3
  float2 xe_point_size;
  float2 xe_point_size_min_max;
  // vec4 4
  float2 xe_point_screen_to_ndc;
  float2 xe_ssaa_inv_scale;
  // vec4 5
  float2 xe_alpha_test_range;
  uint xe_edram_pitch_tiles;
  uint xe_edram_depth_base_dwords;
  // vec4 6
  float4 xe_color_exp_bias;
  // vec4 7
  uint4 xe_color_output_map;
  // vec4 8
  uint xe_edram_stencil_reference;
  uint xe_edram_stencil_read_mask;
  uint xe_edram_stencil_write_mask;
  // vec4 9
  uint4 xe_edram_stencil_front;
  // vec4 10
  uint4 xe_edram_stencil_back;
  // vec4 11
  uint4 xe_edram_base_dwords;
  // vec4 12
  uint4 xe_edram_rt_flags;
  // vec4 13
  uint4 xe_edram_rt_pack_width_low;
  // vec4 14
  uint4 xe_edram_rt_pack_offset_low;
  // vec4 15
  uint4 xe_edram_rt_pack_width_high;
  // vec4 16
  uint4 xe_edram_rt_pack_offset_high;
  // vec4 17
  uint4 xe_edram_load_mask_rt01;
  // vec4 18
  uint4 xe_edram_load_mask_rt23;
  // vec4 19
  float4 xe_edram_load_scale_rt01;
  // vec4 20
  float4 xe_edram_load_scale_rt23;
  // vec4 21
  uint4 xe_edram_blend_rt01;
  // vec4 22
  uint4 xe_edram_blend_rt23;
  // vec4 23
  float4 xe_edram_blend_constant;
  // vec4 24
  float4 xe_edram_store_min_rt01;
  // vec4 25
  float4 xe_edram_store_min_rt23;
  // vec4 26
  float4 xe_edram_store_max_rt01;
  // vec4 27
  float4 xe_edram_store_max_rt23;
  // vec4 28
  float4 xe_edram_store_scale_rt01;
  // vec4 29
  float4 xe_edram_store_scale_rt23;
};

struct XeVertex {
  float4 interpolators[16] : TEXCOORD0;
  float3 point_params : TEXCOORD16;
  float4 position : SV_Position;
};

#endif  // XENIA_GPU_D3D12_SHADERS_XENOS_DRAW_HLSLI_
