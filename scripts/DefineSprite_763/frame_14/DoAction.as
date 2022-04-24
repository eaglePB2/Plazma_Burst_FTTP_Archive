if(this._currentframe == 14)
{
   this.colmap._visible = false;
   _root["aso#56196"].player0.myi = -1;
   _root["aso#56196"].speedup._visible = false;
   _root["aso#56196"].speedup2._visible = false;
   set("aso#87533",0);
   while(eval("aso#87533") < _root.playerstot)
   {
      if(eval("aso#87533") != 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 1;
         if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 200;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(3);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
            _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 2;
         }
         if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 1)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 1600;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(3);
            _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(3);
            _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(4);
            _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(4);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(12);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 5;
         }
      }
      if(eval("aso#87533") == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 0;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(9);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(13);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 8;
         _root.playerhmax = 200;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 200;
      }
      eval("aso#87533")++;
   }
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         set("aso#87533",0);
         while(eval("aso#87533") < _root.playerstot)
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] == true)
            {
               if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
               {
                  if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg0) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg1) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg2))
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = -100;
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
                  }
               }
            }
            eval("aso#87533")++;
         }
         set("aso#87533",0);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(9);
         if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup2))
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] += 1.5;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = Math.max(_root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"],1);
         }
         if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup1))
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = -70;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = 0;
         }
      }
   };
}
