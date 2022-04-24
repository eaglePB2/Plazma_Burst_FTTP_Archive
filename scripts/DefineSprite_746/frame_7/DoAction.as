if(this._currentframe == 7)
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
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 400;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(12);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 3;
      }
      eval("aso#06892")++;
   }
}
