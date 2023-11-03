 var _scale = 2;
 var _guia = display_get_gui_height();
 var _spra = sprite_get_height(Hud) * _scale;
 var _huda = _guia - _spra;
 
 var _guil = (display_get_gui_width() / 2) - 475; 
 
 var _life = o_player.life;
 var _maxlife = o_player.max_life;
 var _stamina = o_player.stamina;
 var _maxstamina = o_player.max_stamina;
 
  //LifeBar
 draw_sprite_ext(Life, 0, _guil, _huda, (_life/_maxlife) * _scale + .2, _scale, 0, c_white, 1);

 //StaminaBar
 draw_sprite_ext(Stamina, 0, _guil, _huda + 16 , (_stamina/_maxstamina) * _scale + .2, _scale, 0, c_white, 1);
 
 //HUD
 draw_sprite_ext(Hud, 0, _guil, _huda, _scale, _scale, 0,c_white,1);