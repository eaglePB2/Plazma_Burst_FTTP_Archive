if(this._currentframe == 9)
{
   _root["aso#75555"].speedup1._visible = false;
   _root["aso#75555"].speedup2._visible = false;
   this.colmap._visible = false;
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
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 1;
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 600;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(13);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 5;
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
                  if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg0._x + _root["aso#75555"]._x,this.kill_reg0._y + _root["aso#75555"]._y,true) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg1._x + _root["aso#75555"]._x,this.kill_reg1._y + _root["aso#75555"]._y,true))
                  {
                     if(!_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].hitTest(this.kill_reg0._x + _root["aso#75555"]._x,this.kill_reg0._y + _root["aso#75555"]._y,true) && !_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].hitTest(this.kill_reg1._x + _root["aso#75555"]._x,this.kill_reg1._y + _root["aso#75555"]._y,true))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = -200;
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                        _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,this.kill_reg0._y,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                     }
                  }
                  if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg2))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = -200;
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                     _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,this.kill_reg2._y,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                  }
               }
            }
            eval("aso#06892")++;
         }
         set("aso#06892",0);
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup1) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
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
      }
   };
}
