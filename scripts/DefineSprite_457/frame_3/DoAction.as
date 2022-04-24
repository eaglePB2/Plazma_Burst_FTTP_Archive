if(this._currentframe == 3)
{
   _root.main_music1.stop();
   _root.main_music2.stop();
   _root.main_music3.stop();
   _root.main_music4.stop();
   _root.main_music5.stop();
   _root.main_music.stop();
   _root.main_music1.start(0,999);
   this.colmap._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 1;
         if(eval("aso#06892") == 2 || eval("aso#06892") == 4 || eval("aso#06892") == 10)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(3);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(4);
         }
         else
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(3);
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 300;
      }
      eval("aso#06892")++;
   }
   _root["aso#75555"].speedup._visible = false;
   _root["aso#75555"].speedup2._visible = false;
   liftmoving = false;
   this.onEnterFrame = function()
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
            this.lift._y = this.colmap.box10._y;
            if(_root["aso#75555"].player0["aso#32240"] > 0)
            {
               if(_root["aso#75555"].player0.hitTest(this.colmap.box10))
               {
                  _root["aso#75555"].player0._y += 2;
                  _root["aso#75555"].player0["aso#94914"] += 2;
               }
            }
         }
      }
      set("aso#06892",0);
      while(eval("aso#06892") < _root.playerstot)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] == true)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.colmap.box12))
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 0;
            }
            if(eval("aso#06892") == 0)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 2.5;
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= 0.99;
               }
               if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup2))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 2.5;
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= 0.99;
               }
            }
         }
         eval("aso#06892")++;
      }
   };
}
