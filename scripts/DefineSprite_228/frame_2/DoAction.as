set("aso#79310",_root["aso#75555"].colmap.hitTest(this._x - 20 + _root["aso#75555"]._x,this._y + _root["aso#75555"]._y,true));
set("aso#30006",_root["aso#75555"].colmap.hitTest(this._x + 20 + _root["aso#75555"]._x,this._y + _root["aso#75555"]._y,true));
set("aso#56746",_root["aso#75555"].colmap.hitTest(this._x + _root["aso#75555"]._x,this._y - 20 + _root["aso#75555"]._y,true));
set("aso#98669",_root["aso#75555"].colmap.hitTest(this._x + _root["aso#75555"]._x,this._y + 20 + _root["aso#75555"]._y,true));
if(eval("aso#79310") || eval("aso#30006") || eval("aso#98669") || eval("aso#56746"))
{
   set("aso#83907",0);
   set("aso#15244",0);
   if(eval("aso#79310") != eval("aso#30006"))
   {
      set("aso#15244",0);
      if(eval("aso#79310"))
      {
         set("aso#83907",1);
      }
      else
      {
         set("aso#83907",-1);
      }
   }
   else
   {
      set("aso#83907",0);
      if(eval("aso#98669"))
      {
         set("aso#15244",-1);
      }
      else
      {
         set("aso#15244",1);
      }
   }
   k = 0;
   while(k < _root["aso#13852"] * 0.5 + 1)
   {
      _root["aso#96306"](this._x,this._y,7,5 - Math.random() * 10 + eval("aso#83907") * 5,5 - Math.random() * 10 + eval("aso#15244") * 5);
      k++;
   }
}
else
{
   _root["aso#96306"](this._x,this._y,7);
}
