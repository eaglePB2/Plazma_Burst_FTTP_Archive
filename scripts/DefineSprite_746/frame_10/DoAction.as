if(this._currentframe == 10)
{
   this.colmap._visible = false;
   _root["aso#75555"].player3.myi = -1;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 2;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 200;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 1;
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 600;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(12);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 5;
      }
      if(eval("aso#06892") == 3)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 0;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 500;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(9);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(13);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 8;
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 1;
      }
      eval("aso#06892")++;
   }
}
