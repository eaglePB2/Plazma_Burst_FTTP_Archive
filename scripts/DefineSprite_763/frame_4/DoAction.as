if(this._currentframe == 4)
{
   this.colmap._visible = false;
   set("aso#87533",0);
   while(eval("aso#87533") < _root.playerstot)
   {
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         if(eval("aso#87533") != 0)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
         }
      }
      eval("aso#87533")++;
   }
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
         if(eval("aso#87533") == 1 || eval("aso#87533") == 4 || eval("aso#87533") == 6 || eval("aso#87533") == 12)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(3);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
         }
         else
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(2);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(3);
         }
         if(eval("aso#87533") >= 15)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 0;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
            _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(1);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#55775"].gotoAndStop(1);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#87112"].gotoAndStop(1);
            _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(1);
            _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(1);
            _root["aso#56196"]["player" + eval("aso#87533")].hunt = 0;
         }
         else
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 200;
         }
      }
      eval("aso#87533")++;
   }
   set("aso#43797",false);
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(Key.isDown(69))
         {
            if(_root["aso#56196"].player0.hitTest(this.but0))
            {
               if(_root["aso#56196"].player0["aso#12881"] > 0)
               {
                  this.but0.gotoAndStop(2);
                  set("aso#43797",true);
               }
            }
         }
         if(eval("aso#43797"))
         {
            if(this.colmap.box7._yscale > 0)
            {
               if(this.door1._currentframe == 1 || this.door1._currentframe == 60)
               {
                  this.colmap.box7._yscale = 0;
                  this.door1.gotoAndPlay(2);
               }
            }
         }
         else if(this.colmap.box7._yscale == 0)
         {
            if(this.door1._currentframe == 30)
            {
               this.colmap.box7._yscale = 130;
               this.door1.gotoAndPlay(31);
            }
         }
      }
   };
}
