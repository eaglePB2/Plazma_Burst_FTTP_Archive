if(this._currentframe == 1)
{
   _root.main_music1.stop();
   _root.main_music2.stop();
   _root.main_music3.stop();
   _root.main_music4.stop();
   _root.main_music5.stop();
   _root.main_music.stop();
   _root.main_music5.start(0,999);
   this.colmap._visible = false;
   hinttot = 4;
   hintok = new Array();
   hmessag = new Array();
   hmessag[0] = "Try to shun enemy\'s shots with jumping and crouch.";
   hmessag[1] = "You can throw grenades with \'\'G\'\' button.";
   hmessag[2] = "This is a medikit. Pick it up for restore Hit Points.";
   hmessag[3] = "You can Jump with Pressing \'\'UP\'\' arrow.";
   set("aso#06892",0);
   while(eval("aso#06892") < hinttot)
   {
      this["h" + eval("aso#06892")]._visible = false;
      hintok[eval("aso#06892")] = true;
      eval("aso#06892")++;
   }
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 0;
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 20;
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
   };
}
