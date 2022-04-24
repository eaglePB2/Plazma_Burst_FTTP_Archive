if(this._currentframe == 13)
{
   _root["aso#75555"].player1.myi = -1;
   this.colmap._visible = false;
   GO = true;
   _root["aso#75555"].speedup._visible = false;
   _root["aso#75555"].speedup2._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
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
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(12);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 5;
      }
      if(eval("aso#06892") == 1)
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
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(_root["aso#75555"].player1["aso#69566"] <= 0)
         {
            _root.loose = 1;
         }
         set("aso#06892",0);
         while(eval("aso#06892") < _root.playerstot)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] == true)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg0) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg1) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg2))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = -100;
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                  }
               }
            }
            eval("aso#06892")++;
         }
         set("aso#06892",0);
         while(eval("aso#06892") < 2)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
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
            if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup))
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = 0;
               if(Key.isDown(38) || Key.isDown(87))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = -4;
               }
               if(Key.isDown(40) || Key.isDown(83))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 4;
               }
               if(Key.isDown(39) || Key.isDown(32))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = 6;
               }
               else
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]._x = _root["aso#75555"].speedup._x + 30;
               }
            }
            eval("aso#06892")++;
         }
         set("aso#06892",1);
         if(GO)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")].hunt == -1 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 0)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]._x < _root["aso#75555"].player0._x - 100)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")].botaction = 1;
               }
               if(_root["aso#75555"]["player" + eval("aso#06892")]._x > _root["aso#75555"].player0._x + 100)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")].botaction = 2;
               }
               if(_root["aso#75555"]["player" + eval("aso#06892")].botaction == 1 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 2)
               {
                  if(_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y + 20,true))
                  {
                     if(_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x + (_root["aso#75555"]["player" + eval("aso#06892")].botaction - 1.5) * _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] * 15,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y - 20,true) || !_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x + (_root["aso#75555"]["player" + eval("aso#06892")].botaction - 1.5) * _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] * 5,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y + 100,true))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")].botaction = 3;
                     }
                  }
               }
            }
         }
         if(GO)
         {
            if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].but0))
            {
               GO = false;
            }
         }
         else
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]._x < -100)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].botaction = 1;
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")]._x > 100)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].botaction = 2;
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")].botaction == 1 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 2)
            {
               if(_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y + 20,true))
               {
                  if(_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x + (_root["aso#75555"]["player" + eval("aso#06892")].botaction - 1.5) * _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] * 15,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y - 20,true) || !_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x + (_root["aso#75555"]["player" + eval("aso#06892")].botaction - 1.5) * _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] * 5,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y + 100,true))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")].botaction = 3;
                  }
               }
            }
         }
      }
   };
}
