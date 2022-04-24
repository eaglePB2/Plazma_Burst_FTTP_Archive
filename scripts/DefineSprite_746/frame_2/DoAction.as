if(this._currentframe == 2)
{
   _root["aso#75555"].speedup._visible = false;
   this.colmap._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].opentop = true;
         r = Math.floor(Math.random() * 2.999);
         if(r == 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(6);
         }
         if(r == 1)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(7);
         }
         if(r == 2)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(8);
         }
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 140;
      }
      if(eval("aso#06892") == 5)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 0;
      }
      eval("aso#06892")++;
   }
   hinttot = 4;
   hintok = new Array();
   hmessag = new Array();
   hmessag[0] = "You can swap Your weapon with numbers and mouse wheel.";
   hmessag[1] = "This thing will hoist You.";
   hmessag[2] = "Shoot in the head is the fastest way to kill.";
   hmessag[3] = "You can go crouch with \'\'S\'\', \'\'Shift\'\', or \'\'Down\'\' button.";
   set("aso#06892",0);
   while(eval("aso#06892") < hinttot)
   {
      this["h" + eval("aso#06892")]._visible = false;
      hintok[eval("aso#06892")] = true;
      eval("aso#06892")++;
   }
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
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
                  _root["aso#25830"](hmessag[eval("aso#06892")]);
               }
            }
            eval("aso#06892")++;
         }
         set("aso#06892",0);
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup))
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
