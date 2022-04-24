function §aso#06050§(num)
{
   to = Math.round((_xmouse - 388) / 397 * 2 + 1);
   if(num == 1)
   {
      _root["aso#13852"] = to;
      _root.param1.gotoAndStop(_root["aso#13852"]);
   }
   if(num == 2)
   {
      _root["aso#79731"] = to;
      _root.param2.gotoAndStop(_root["aso#79731"]);
   }
   if(num == 3)
   {
      _root["aso#70537"] = to;
      _root.param3.gotoAndStop(_root["aso#70537"]);
   }
   if(num == 4)
   {
      _root["aso#91288"] = to;
      _root.param4.gotoAndStop(_root["aso#91288"]);
   }
   my_so.data["aso#13852"] = _root["aso#13852"];
   my_so.data["aso#79731"] = _root["aso#79731"];
   my_so.data["aso#70537"] = _root["aso#70537"];
   my_so.data["aso#91288"] = _root["aso#91288"];
}
_root["aso#67753"] = 6;
_root["aso#42405"]._visible = false;
_root.score._visible = false;
_root.stop();
Mouse.show();
_root.gcur._visible = false;
_root.param1.gotoAndStop(_root["aso#13852"]);
_root.param2.gotoAndStop(_root["aso#79731"]);
_root.param3.gotoAndStop(_root["aso#70537"]);
_root.onEnterFrame = function()
{
   _root.param1.onPress = function()
   {
      eval("aso#06050")(1);
   };
   _root.param2.onPress = function()
   {
      eval("aso#06050")(2);
   };
   _root.param3.onPress = function()
   {
      eval("aso#06050")(3);
   };
   _root.param4.onPress = function()
   {
      eval("aso#06050")(4);
   };
};
