if(this._currentframe == 2)
{
   _root["aso#56196"].speedup._visible = false;
   this.colmap._visible = false;
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(2);
         _root["aso#56196"]["player" + eval("aso#87533")].opentop = true;
         r = Math.floor(Math.random() * 2.999);
         if(r == 0)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(6);
         }
         if(r == 1)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(7);
         }
         if(r == 2)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(8);
         }
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 70;
      }
      if(eval("aso#87533") == 5)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 0;
      }
      eval("aso#87533")++;
   }
   hinttot = 4;
   hintok = new Array();
   hmessag = new Array();
   hmessag[0] = "You can swap Your weapon with numbers and mouse wheel.";
   hmessag[1] = "This thing will hoist You.";
   hmessag[2] = "Shoot in the head is the fastest way to kill.";
   hmessag[3] = "You can go crouch with \'\'S\'\', \'\'Shift\'\', or \'\'Down\'\' button.";
   set("aso#87533",0);
   while(eval("aso#87533") < hinttot)
   {
      this["h" + eval("aso#87533")]._visible = false;
      hintok[eval("aso#87533")] = true;
      eval("aso#87533")++;
   }
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         set("aso#87533",0);
         while(eval("aso#87533") < hinttot)
         {
            if(hintok[eval("aso#87533")])
            {
               if(this["h" + eval("aso#87533")].hitTest(_root["aso#56196"].player0))
               {
                  if(eval("aso#87533") != 3)
                  {
                     hintok[eval("aso#87533")] = false;
                  }
                  _root["aso#19841"](hmessag[eval("aso#87533")]);
               }
            }
            eval("aso#87533")++;
         }
         set("aso#87533",0);
         if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup))
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
