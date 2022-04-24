if(this._currentframe == 3)
{
   this.colmap._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
         if(eval("aso#06892") == 2 || eval("aso#06892") == 4 || eval("aso#06892") == 10)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(3);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
         }
         else
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(3);
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 200;
      }
      eval("aso#06892")++;
   }
   _root["aso#75555"].speedup._visible = false;
   _root["aso#75555"].speedup2._visible = false;
   liftmoving = false;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(_root["aso#75555"].player0.hitTest(this.colmap.box10))
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
               if(_root["aso#75555"].player0["aso#69566"] > 0)
               {
                  if(_root["aso#75555"].player0.hitTest(this.colmap.box10))
                  {
                     _root["aso#75555"].player0._y += 2;
                     _root["aso#75555"].player0["aso#94914"] = (_root["aso#75555"].player0["aso#94914"] + 2) / 2;
                  }
               }
            }
         }
         set("aso#06892",0);
         while(eval("aso#06892") < _root.playerstot)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] == true)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.colmap.box12))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 0;
               }
               if(eval("aso#06892") == 0)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 1.5;
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= 0.99;
                     if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = Math.min(_root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"],1);
                     }
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
         if(_root["aso#75555"].player0.hitTest(this.but0) && _root["aso#75555"].player0["aso#69566"] > 0)
         {
            set("aso#24438",true);
         }
         else
         {
            set("aso#24438",false);
         }
         if(eval("aso#24438"))
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
