lut_texture = sprite_get_texture(s_lut, index);
shader_set(sh_lut);
texture_set_stage(lut_sampler, lut_texture);


