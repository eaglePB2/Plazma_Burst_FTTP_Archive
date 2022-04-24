_root["aso#85720"] = 10;
_root.money._visible = false;
_root.score._visible = false;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
var main_music_credits = new Sound();
_root.main_music1.attachSound("track1");
_root.main_music2.attachSound("track2");
_root.main_music3.attachSound("track3");
_root.main_music4.attachSound("track4");
_root.main_music_credits.attachSound("credit_loop");
_root.main_music_credits.onSoundComplete = function()
{
   if(_root.my_so.data.music == 2)
   {
      _root.main_music3.start(0,1);
   }
};
_root.visarea._visible = false;
_root.screenarea._visible = false;
_root.glow._alpha = 0;
_root.stop();
_root.onEnterFrame = function()
{
};
Mouse.show();
_root.UpdateMoney();
_root["aso#12039"]();
_root.nick.text = _root["aso#85299"];
