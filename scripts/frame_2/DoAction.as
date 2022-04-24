if(_root["aso#67753"] == 2 || _root["aso#67753"] == 0)
{
   _root.main_music1.stop();
   _root.main_music2.stop();
   _root.main_music3.stop();
   _root.main_music4.stop();
   _root.main_music5.stop();
   _root.main_music.stop();
   _root.main_music.start(0,999);
}
_root["aso#67753"] = 1;
_root["aso#42405"]._visible = true;
_root.score._visible = true;
_root.visarea._visible = false;
_root.screenarea._visible = false;
_root.glow._alpha = 0;
_root.stop();
_root.onEnterFrame = function()
{
};
Mouse.show();
_root.gcur._visible = false;
_root.nick2.text = _root["aso#61343"];
_root["aso#42405"].text = "Your Money:  $" + _root.global_money;
