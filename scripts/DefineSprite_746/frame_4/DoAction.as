if(this._currentframe == 4)
{
   this.colmap._visible = false;
   set("aso#06892",0);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         if(eval("aso#06892") != 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
         }
      }
      eval("aso#06892")++;
   }
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
         if(eval("aso#06892") == 1 || eval("aso#06892") == 4 || eval("aso#06892") == 6 || eval("aso#06892") == 12)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(3);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
         }
         else
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(3);
         }
         if(eval("aso#06892") >= 15)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 0;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(4);
            _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#57167"].gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#88504"].gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")].hunt = 0;
         }
         else
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 200;
         }
      }
      eval("aso#06892")++;
   }
   set("aso#24438",false);
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(Key.isDown(69))
         {
            if(_root["aso#75555"].player0.hitTest(this.but0))
            {
               if(_root["aso#75555"].player0["aso#69566"] > 0)
               {
                  this.but0.gotoAndStop(2);
                  set("aso#24438",true);
               }
            }
         }
         if(eval("aso#24438"))
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
