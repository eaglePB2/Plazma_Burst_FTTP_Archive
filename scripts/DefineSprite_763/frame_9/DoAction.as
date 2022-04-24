if(this._currentframe == 9)
{
   _root["aso#56196"].speedup1._visible = false;
   _root["aso#56196"].speedup2._visible = false;
   this.colmap._visible = false;
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 1;
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 200;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 1;
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 600;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(13);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 5;
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
                  if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg0._x + _root["aso#56196"]._x,this.kill_reg0._y + _root["aso#56196"]._y,true) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg1._x + _root["aso#56196"]._x,this.kill_reg1._y + _root["aso#56196"]._y,true))
                  {
                     if(!_root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].hitTest(this.kill_reg0._x + _root["aso#56196"]._x,this.kill_reg0._y + _root["aso#56196"]._y,true) && !_root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].hitTest(this.kill_reg1._x + _root["aso#56196"]._x,this.kill_reg1._y + _root["aso#56196"]._y,true))
                     {
                        _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = -200;
                        _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
                        _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,this.kill_reg0._y,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                     }
                  }
                  if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg2))
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = -200;
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
                     _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,this.kill_reg2._y,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                  }
               }
            }
            eval("aso#87533")++;
         }
         set("aso#87533",0);
         if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup1) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup2))
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
      }
   };
}
