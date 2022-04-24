if(this._currentframe == 8)
{
   this.colmap._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 1;
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 200;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(5);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 600;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(13);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 5;
      }
      eval("aso#06892")++;
   }
   this.onEnterFrame = function()
   {
   };
}
