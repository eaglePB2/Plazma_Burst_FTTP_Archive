if(this._currentframe == 2)
{
   _root.main_music1.stop();
   _root.main_music2.stop();
   _root.main_music3.stop();
   _root.main_music4.stop();
   _root.main_music5.stop();
   _root.main_music.stop();
   _root.main_music4.start(0,999);
   _root["aso#75555"].speedup._visible = false;
   this.colmap._visible = false;
   set("aso#06892",0);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
      {
         if(eval("aso#06892") != 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")].opentop = true;
            r = Math.floor(Math.random() * 2.999);
            if(r == 0)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(6);
            }
            if(r == 1)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(7);
            }
            if(r == 2)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(8);
            }
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 140;
         }
      }
      _root["aso#75555"]["player" + (_root.playerstot - 1)]["aso#17057"] = 0;
      eval("aso#06892")++;
   }
   hinttot = 4;
   hintok = new Array();
   hmessag = new Array();
   hmessag[0] = "You can swap Your weapon with numbers.";
   hmessag[1] = "This thing will hoist You.";
   hmessag[2] = "Shoot in the head is the fastest way to kill.";
   hmessag[3] = "You go crouch by \'\'S\'\' button.";
   set("aso#06892",0);
   while(eval("aso#06892") < hinttot)
   {
      this["h" + eval("aso#06892")]._visible = false;
      hintok[eval("aso#06892")] = true;
      eval("aso#06892")++;
   }
   this.onEnterFrame = function()
   {
      set("aso#06892",0);
      while(eval("aso#06892") < hinttot)
      {
         if(hintok[eval("aso#06892")])
         {
            if(this["h" + eval("aso#06892")].hitTest(_root["aso#75555"].player0))
            {
               if(eval("aso#06892") != 3)
               {
                  hintok[eval("aso#06892")] = false;
               }
               _root["aso#95885"](hmessag[eval("aso#06892")]);
            }
         }
         eval("aso#06892")++;
      }
      set("aso#06892",0);
      if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup))
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 2.5;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= 0.99;
      }
   };
}
