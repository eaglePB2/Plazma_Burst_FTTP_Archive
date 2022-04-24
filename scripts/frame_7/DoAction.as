function §aso#68724§(num)
{
   to = Math.round((_xmouse - 388) / 397 * 2 + 1);
   if(num == 1)
   {
      _root["aso#94493"] = to;
      _root.param1.gotoAndStop(_root["aso#94493"]);
   }
   if(num == 2)
   {
      _root["aso#48394"] = to;
      _root.param2.gotoAndStop(_root["aso#48394"]);
   }
   if(num == 3)
   {
      _root["aso#01874"] = to;
      _root.param3.gotoAndStop(_root["aso#01874"]);
   }
   if(num == 4)
   {
      _root["aso#22625"] = to;
      _root.param4.gotoAndStop(_root["aso#22625"]);
   }
   my_so.data["aso#94493"] = _root["aso#94493"];
   my_so.data["aso#48394"] = _root["aso#48394"];
   my_so.data["aso#01874"] = _root["aso#01874"];
   my_so.data["aso#22625"] = _root["aso#22625"];
}
_root["aso#93101"] = 6;
_root["aso#61764"]._visible = false;
_root.score._visible = false;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
_root.param1.gotoAndStop(_root["aso#94493"]);
_root.param2.gotoAndStop(_root["aso#48394"]);
_root.param3.gotoAndStop(_root["aso#01874"]);
_root.param1.onPress = function()
{
   eval("aso#68724")(1);
};
_root.param2.onPress = function()
{
   eval("aso#68724")(2);
};
_root.param3.onPress = function()
{
   eval("aso#68724")(3);
};
_root.param4.onPress = function()
{
   eval("aso#68724")(4);
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
_root.onEnterFrame = function()
{
};
