set("aso#41984",_root["aso#75555"].colmap.hitTest(this._x - 20 + _root["aso#75555"]._x,this._y + _root["aso#75555"]._y,true));
set("aso#86691",_root["aso#75555"].colmap.hitTest(this._x + 20 + _root["aso#75555"]._x,this._y + _root["aso#75555"]._y,true));
set("aso#44768",_root["aso#75555"].colmap.hitTest(this._x + _root["aso#75555"]._x,this._y - 20 + _root["aso#75555"]._y,true));
set("aso#55354",_root["aso#75555"].colmap.hitTest(this._x + _root["aso#75555"]._x,this._y + 20 + _root["aso#75555"]._y,true));
if(eval("aso#41984") || eval("aso#86691") || eval("aso#55354") || eval("aso#44768"))
{
   set("aso#28614",0);
   set("aso#59951",0);
   if(eval("aso#41984") != eval("aso#86691"))
   {
      set("aso#59951",0);
      if(eval("aso#41984"))
      {
         set("aso#28614",1);
      }
      else
      {
         set("aso#28614",-1);
      }
   }
   else
   {
      set("aso#28614",0);
      if(eval("aso#55354"))
      {
         set("aso#59951",-1);
      }
      else
      {
         set("aso#59951",1);
      }
   }
   k = 0;
   while(k < _root["aso#94493"] * 0.5 + 1)
   {
      _root["aso#52991"](this._x,this._y,7,5 - Math.random() * 10 + eval("aso#28614") * 5,5 - Math.random() * 10 + eval("aso#59951") * 5);
      k++;
   }
}
else
{
   _root["aso#52991"](this._x,this._y,7);
}
