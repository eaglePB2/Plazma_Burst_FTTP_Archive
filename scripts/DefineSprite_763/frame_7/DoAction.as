if(this._currentframe == 7)
{
   this.colmap._visible = false;
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 1;
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 200;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 400;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(2);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(2);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(12);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 3;
      }
      eval("aso#87533")++;
   }
}
