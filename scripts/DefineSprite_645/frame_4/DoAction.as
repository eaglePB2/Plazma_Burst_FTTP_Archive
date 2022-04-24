if(_root.fire && _root["aso#75555"].player0._alpha < 10 && _root["aso#75555"].player0["aso#69566"] > 0)
{
   if(_root.fire)
   {
      set("aso#99090",_root["aso#75555"].jeep.rl._rotation / 180 * 3.141592653589793);
      set("aso#15665",Math.cos(eval("aso#99090")) * 10 / 100 * _root["aso#75555"].player0._xscale);
      set("aso#41013",Math.sin(eval("aso#99090")) * 10 / 100 * _root["aso#75555"].player0._xscale);
      _root["aso#98669"](_root["aso#75555"].jeep._x + _root["aso#75555"].jeep.rl._x,_root["aso#75555"].jeep._y + _root["aso#75555"].jeep.rl._y,0,4,eval("aso#15665"),eval("aso#41013"));
   }
   this.gotoAndPlay(5);
}
else
{
   this.gotoAndPlay(3);
}
