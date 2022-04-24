if(this._currentframe == 14)
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
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(12);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 5;
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
         _root.playerhmax = 200;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 200;
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
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(9);
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] += 1.5;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = Math.max(_root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"],1);
         }
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup1))
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = -70;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
         }
      }
   };
}
