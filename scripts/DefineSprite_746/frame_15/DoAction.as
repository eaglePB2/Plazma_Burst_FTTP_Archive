if(this._currentframe == 15)
{
   this.colmap._visible = false;
   _root["aso#75555"].player0.myi = -1;
   _root["aso#75555"].speedup._visible = false;
   _root["aso#75555"].speedup2._visible = false;
   set("aso#06892",0);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(eval("aso#06892") != 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 1;
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 200;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(3);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
            _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 2;
         }
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 1)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 1600;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(3);
            _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(3);
            _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(4);
            _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(4);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 5;
         }
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 2)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(4);
         }
      }
      if(eval("aso#06892") == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 0;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(9);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(13);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 8;
         _root.playerhmax = 600;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 600;
      }
      eval("aso#06892")++;
   }
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         set("aso#06892",0);
         while(eval("aso#06892") < _root.playerstot)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] == true)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup1))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 1.5;
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = Math.max(-10,Math.min(_root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"],10));
                     if(!stand)
                     {
                        if((Key.isDown(65) || Key.isDown(37)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].botaction == 2)
                        {
                           _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] -= 0.2;
                        }
                        if((Key.isDown(68) || Key.isDown(39)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].botaction == 1)
                        {
                           _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] += 0.2;
                        }
                     }
                  }
               }
            }
            eval("aso#06892")++;
         }
         set("aso#06892",0);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(9);
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 1.5;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= 0.99;
            if(!stand)
            {
               if((Key.isDown(65) || Key.isDown(37)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].botaction == 2)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] -= 0.2;
               }
               if((Key.isDown(68) || Key.isDown(39)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].botaction == 1)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] += 0.2;
               }
            }
         }
         if(Key.isDown(69))
         {
            if(_root["aso#75555"].player0.hitTest(this.but0))
            {
               if(_root["aso#75555"].player0["aso#69566"] > 0)
               {
                  this.but0.gotoAndStop(2);
                  this.speedup1._y = 85;
               }
            }
         }
      }
   };
}
