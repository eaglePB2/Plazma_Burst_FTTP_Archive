if(this._currentframe == 15)
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
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 5;
         }
         if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 2)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(4);
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
         _root.playerhmax = 600;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 600;
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
                  if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup1))
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] -= 1.5;
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = Math.max(-10,Math.min(_root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"],10));
                     if(!stand)
                     {
                        if((Key.isDown(65) || Key.isDown(37)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && _root["aso#56196"]["player" + eval("aso#87533")].botaction == 2)
                        {
                           _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] -= 0.2;
                        }
                        if((Key.isDown(68) || Key.isDown(39)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && _root["aso#56196"]["player" + eval("aso#87533")].botaction == 1)
                        {
                           _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] += 0.2;
                        }
                     }
                  }
               }
            }
            eval("aso#87533")++;
         }
         set("aso#87533",0);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(9);
         if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup2))
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] -= 1.5;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] *= 0.99;
            if(!stand)
            {
               if((Key.isDown(65) || Key.isDown(37)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && _root["aso#56196"]["player" + eval("aso#87533")].botaction == 2)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] -= 0.2;
               }
               if((Key.isDown(68) || Key.isDown(39)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && _root["aso#56196"]["player" + eval("aso#87533")].botaction == 1)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] += 0.2;
               }
            }
         }
         if(Key.isDown(69))
         {
            if(_root["aso#56196"].player0.hitTest(this.but0))
            {
               if(_root["aso#56196"].player0["aso#12881"] > 0)
               {
                  this.but0.gotoAndStop(2);
                  this.speedup1._y = 85;
               }
            }
         }
      }
   };
}
