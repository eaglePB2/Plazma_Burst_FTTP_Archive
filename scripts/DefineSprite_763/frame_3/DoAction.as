if(this._currentframe == 3)
{
   this.colmap._visible = false;
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
         if(eval("aso#87533") == 2 || eval("aso#87533") == 4 || eval("aso#87533") == 10)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(3);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
         }
         else
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(2);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(3);
         }
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 200;
      }
      eval("aso#87533")++;
   }
   _root["aso#56196"].speedup._visible = false;
   _root["aso#56196"].speedup2._visible = false;
   liftmoving = false;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(_root["aso#56196"].player0.hitTest(this.colmap.box10))
         {
            liftmoving = true;
         }
         if(liftmoving)
         {
            if(!this.colmap.box11.hitTest(this.colmap.box10))
            {
               this.colmap.box10._y += 2;
               this.colmap.box30._y += 2;
               this.lift._y = this.colmap.box10._y;
               if(_root["aso#56196"].player0["aso#12881"] > 0)
               {
                  if(_root["aso#56196"].player0.hitTest(this.colmap.box10))
                  {
                     _root["aso#56196"].player0._y += 2;
                     _root["aso#56196"].player0["aso#75555"] = (_root["aso#56196"].player0["aso#75555"] + 2) / 2;
                  }
               }
            }
         }
         set("aso#87533",0);
         while(eval("aso#87533") < _root.playerstot)
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] == true)
            {
               if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.colmap.box12))
               {
                  _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 0;
               }
               if(eval("aso#87533") == 0)
               {
                  if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup2))
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] -= 1.5;
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] *= 0.99;
                     if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup2))
                     {
                        _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = Math.min(_root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"],1);
                     }
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
         if(_root["aso#56196"].player0.hitTest(this.but0) && _root["aso#56196"].player0["aso#12881"] > 0)
         {
            set("aso#43797",true);
         }
         else
         {
            set("aso#43797",false);
         }
         if(eval("aso#43797"))
         {
            if(this.colmap.box31._yscale > 0)
            {
               if(this.door1._currentframe == 1 || this.door1._currentframe == 60)
               {
                  this.colmap.box31._yscale = 0;
                  this.door1.gotoAndPlay(2);
               }
            }
         }
         else if(this.colmap.box31._yscale == 0)
         {
            if(this.door1._currentframe == 30)
            {
               this.colmap.box31._yscale = 130;
               this.door1.gotoAndPlay(31);
            }
         }
      }
   };
}
