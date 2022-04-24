if(this._currentframe == 5)
{
   this.but0._visible = false;
   this.colmap._visible = false;
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 100;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(1);
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg1 = 1;
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 400;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(2);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(2);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(2);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(2);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(11);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 3;
      }
      eval("aso#87533")++;
   }
   set("aso#43797",false);
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(_root["aso#56196"].player0.hitTest(this.but0) && _root["aso#56196"].player0["aso#12881"] > 0)
         {
            set("aso#43797",true);
         }
         else
         {
            set("aso#43797",false);
         }
         set("aso#87533",0);
         while(eval("aso#87533") < _root.playerstot)
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] == true)
            {
               if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
               {
                  if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg0))
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = -200;
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
                     _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,this.kill_reg0._y,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                  }
               }
            }
            eval("aso#87533")++;
         }
         if(eval("aso#43797"))
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
