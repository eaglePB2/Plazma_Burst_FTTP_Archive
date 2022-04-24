_root["aso#85720"] = 9;
_root.money._visible = false;
_root.score._visible = false;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
_root.main_music1.stop();
_root.main_music2.stop();
_root.main_music3.stop();
_root.main_music4.stop();
_root.main_music_credits.start(0,1);
_root.onEnterFrame = function()
{
   if(_root["aso#85720"] == 9)
   {
      _root.mv.scrllr._y -= 1.3;
      if(_root.mv.scrllr._y < -820)
      {
         _root.main_music_credits.stop();
         _root.main_music_credits.start(_root.main_music_credits.duration / 1000 - 1,1);
         _root.gotoAndStop(2);
      }
   }
};
