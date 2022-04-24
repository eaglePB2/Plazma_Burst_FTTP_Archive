if(this._currentframe == 5)
{
   this.but0._visible = false;
   this.colmap._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 100;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(1);
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg1 = 1;
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 400;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(11);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 3;
      }
      eval("aso#06892")++;
   }
   set("aso#24438",false);
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(_root["aso#75555"].player0.hitTest(this.but0) && _root["aso#75555"].player0["aso#69566"] > 0)
         {
            set("aso#24438",true);
         }
         else
         {
            set("aso#24438",false);
         }
         set("aso#06892",0);
         while(eval("aso#06892") < _root.playerstot)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] == true)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg0))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = -200;
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                     _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,this.kill_reg0._y,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                  }
               }
            }
            eval("aso#06892")++;
         }
         if(eval("aso#24438"))
         {
            if(this.colmap.box13._yscale > 0)
            {
               if(this.door1._currentframe == 1 || this.door1._currentframe == 60)
               {
                  this.colmap.box13._yscale = 0;
                  this.door1.gotoAndPlay(2);
               }
            }
         }
         else if(this.colmap.box13._yscale == 0)
         {
            if(this.door1._currentframe == 30)
            {
               this.colmap.box13._yscale = 130;
               this.door1.gotoAndPlay(31);
            }
         }
      }
   };
}
