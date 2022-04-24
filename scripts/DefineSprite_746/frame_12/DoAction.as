if(this._currentframe == 12)
{
   GO = true;
   laseron = true;
   this.colmap._visible = false;
   _root["aso#75555"].player1.myi = -1;
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
                  if(laseron)
                  {
                     if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg0) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg1) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg2))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = -100;
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                        _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                     }
                  }
               }
            }
            eval("aso#06892")++;
         }
         set("aso#06892",0);
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup1) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 2.5;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= 0.99;
         }
         set("aso#06892",1);
         if(GO)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")].hunt == -1 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 0)
            {
               if(_root["aso#75555"].player0._y > 0 && _root["aso#75555"]["player" + eval("aso#06892")]._y < 0)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")].botaction = 1;
               }
               else
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
         }
         if(GO)
         {
            if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].but0))
            {
               GO = false;
            }
         }
         else if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].but1))
         {
            GO = true;
            _root["aso#75555"].but1.gotoAndStop(2);
            laseron = false;
            this.kill_reg0._visible = false;
            this.kill_reg1._visible = false;
            this.kill_reg2._visible = false;
            _root["aso#75555"].player1["aso#69566"] = 5000;
         }
      }
   };
}
