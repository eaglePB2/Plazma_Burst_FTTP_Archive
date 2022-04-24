function §aso#98669§(num)
{
   to = Math.round((_xmouse - 388) / 397 * 2 + 1);
   if(num == 1)
   {
      _root.opt_eff = to;
      _root.param1.gotoAndStop(_root.opt_eff);
   }
   if(num == 2)
   {
      _root.opt_bot = to;
      _root.param2.gotoAndStop(_root.opt_bot);
   }
   if(num == 3)
   {
      _root.opt_dis = to;
      _root.param3.gotoAndStop(_root.opt_dis);
   }
   if(num == 4)
   {
      _root.opt_vol = to;
      _root.param4.gotoAndStop(_root.opt_vol);
   }
   my_so.data.opt_eff = _root.opt_eff;
   my_so.data.opt_bot = _root.opt_bot;
   my_so.data.opt_dis = _root.opt_dis;
   my_so.data.opt_vol = _root.opt_vol;
}
_root["aso#85720"] = 6;
_root.money._visible = false;
_root.score._visible = false;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
_root.param1.gotoAndStop(_root.opt_eff);
_root.param2.gotoAndStop(_root.opt_bot);
_root.param3.gotoAndStop(_root.opt_dis);
_root.param1.onPress = function()
{
   eval("aso#98669")(1);
};
_root.param2.onPress = function()
{
   eval("aso#98669")(2);
};
_root.param3.onPress = function()
{
   eval("aso#98669")(3);
};
_root.param4.onPress = function()
{
   eval("aso#98669")(4);
};
if(my_so.data.breaking)
{
   _root.chk1.gotoAndStop(1);
}
else
{
   _root.chk1.gotoAndStop(2);
}
if(my_so.data.blood)
{
   _root.chk2.gotoAndStop(1);
}
else
{
   _root.chk2.gotoAndStop(2);
}
if(my_so.data.bg_sou)
{
   _root.chk3.gotoAndStop(1);
}
else
{
   _root.chk3.gotoAndStop(2);
}
if(my_so.data.low_q)
{
   _root.chk4.gotoAndStop(1);
}
else
{
   _root.chk4.gotoAndStop(2);
}
_root.chk1.onPress = function()
{
   if(my_so.data.breaking)
   {
      my_so.data.breaking = false;
   }
   else
   {
      my_so.data.breaking = true;
   }
   if(my_so.data.breaking)
   {
      _root.chk1.gotoAndStop(1);
   }
   else
   {
      _root.chk1.gotoAndStop(2);
   }
};
_root.chk2.onPress = function()
{
   if(my_so.data.blood)
   {
      my_so.data.blood = false;
   }
   else
   {
      my_so.data.blood = true;
   }
   if(my_so.data.blood)
   {
      _root.chk2.gotoAndStop(1);
   }
   else
   {
      _root.chk2.gotoAndStop(2);
   }
};
_root.chk3.onPress = function()
{
   if(my_so.data.bg_sou)
   {
      my_so.data.bg_sou = false;
   }
   else
   {
      my_so.data.bg_sou = true;
   }
   if(my_so.data.bg_sou)
   {
      _root.chk3.gotoAndStop(1);
   }
   else
   {
      _root.chk3.gotoAndStop(2);
   }
};
_root.chk4.onPress = function()
{
   if(my_so.data.low_q)
   {
      my_so.data.low_q = false;
   }
   else
   {
      my_so.data.low_q = true;
   }
   if(my_so.data.low_q)
   {
      _root.chk4.gotoAndStop(1);
   }
   else
   {
      _root.chk4.gotoAndStop(2);
   }
};
_root.onEnterFrame = function()
{
};
