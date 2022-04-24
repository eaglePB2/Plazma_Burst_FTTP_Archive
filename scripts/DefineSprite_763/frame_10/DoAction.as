if(this._currentframe == 10)
{
   this.colmap._visible = false;
   _root["aso#56196"].player3.myi = -1;
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 2;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 200;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 1;
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 600;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(12);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 5;
      }
      if(eval("aso#87533") == 3)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 0;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 500;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(9);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(13);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 8;
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 1;
      }
      eval("aso#87533")++;
   }
}
