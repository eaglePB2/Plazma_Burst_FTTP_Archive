if(_root.fire && _root["aso#56196"].player0._alpha < 10 && _root["aso#56196"].player0["aso#12881"] > 0)
{
   if(_root.fire)
   {
      set("aso#79731",_root["aso#56196"].jeep.rl._rotation / 180 * 3.141592653589793);
      set("aso#21654",Math.cos(eval("aso#79731")) * 10 / 100 * _root["aso#56196"].player0._xscale);
      set("aso#84328",Math.sin(eval("aso#79731")) * 10 / 100 * _root["aso#56196"].player0._xscale);
      _root["aso#41984"](_root["aso#56196"].jeep._x + _root["aso#56196"].jeep.rl._x,_root["aso#56196"].jeep._y + _root["aso#56196"].jeep.rl._y,0,4,eval("aso#21654"),eval("aso#84328"));
   }
   this.gotoAndPlay(5);
}
else
{
   this.gotoAndPlay(3);
}
