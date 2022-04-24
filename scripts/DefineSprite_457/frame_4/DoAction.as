if(this._currentframe == 4)
{
   _root.main_music1.stop();
   _root.main_music2.stop();
   _root.main_music3.stop();
   _root.main_music4.stop();
   _root.main_music5.stop();
   _root.main_music.stop();
   _root.main_music2.start(0,999);
   this.colmap._visible = false;
   set("aso#06892",0);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
      {
         if(eval("aso#06892") != 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(4);
         }
      }
      eval("aso#06892")++;
   }
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 1;
         if(eval("aso#06892") == 1 || eval("aso#06892") == 4 || eval("aso#06892") == 6 || eval("aso#06892") == 12)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(3);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(4);
         }
         else
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(3);
         }
         if(eval("aso#06892") >= 15)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] = 0;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(4);
            _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#06471"].gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#37808"].gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(1);
            _root["aso#75555"]["player" + eval("aso#06892")].hunt = 0;
         }
         else
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 300;
         }
      }
      eval("aso#06892")++;
   }
   set("aso#94493",false);
   this.onEnterFrame = function()
   {
      if(Key.isDown(69))
      {
         if(_root["aso#75555"].player0.hitTest(this.but0))
         {
            if(_root["aso#75555"].player0["aso#32240"] > 0)
            {
               this.but0.gotoAndStop(2);
               set("aso#94493",true);
            }
         }
      }
      if(eval("aso#94493"))
      {
         if(this.colmap.box7._yscale > 0)
         {
            this.colmap.box7._yscale = 0;
            this.door1._visible = false;
         }
      }
   };
}
