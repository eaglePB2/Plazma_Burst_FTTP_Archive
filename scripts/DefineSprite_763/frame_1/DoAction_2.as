if(this._currentframe == 1)
{
   this.colmap._visible = false;
   hinttot = 4;
   hintok = new Array();
   hmessag = new Array();
   hmessag[0] = "Try to shun enemy\'s shots with jumping and crouch.";
   hmessag[1] = "You can throw grenades with the \'\'G\'\', \'\'ENTER\'\', or \'Q\' button.";
   hmessag[2] = "This is a medikit. Pick it up to restore 25 Hit Points.";
   hmessag[3] = "Do not forget to go to the weapon store.";
   set("aso#87533",0);
   while(eval("aso#87533") < hinttot)
   {
      this["h" + eval("aso#87533")]._visible = false;
      hintok[eval("aso#87533")] = true;
      eval("aso#87533")++;
   }
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 0;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 10;
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
      }
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
         if(_root["aso#56196"].player0.hitTest(this.but0) && _root["aso#56196"].player0["aso#12881"] > 0)
         {
            set("aso#43797",true);
         }
         else
         {
            set("aso#43797",false);
         }
         if(eval("aso#43797"))
         {
            if(this.colmap.box33._yscale > 0)
            {
               if(this.door1._currentframe == 1 || this.door1._currentframe == 60)
               {
                  this.colmap.box33._yscale = 0;
                  this.door1.gotoAndPlay(2);
               }
            }
         }
         else if(this.colmap.box33._yscale == 0)
         {
            if(this.door1._currentframe == 30)
            {
               this.colmap.box33._yscale = 130;
               this.door1.gotoAndPlay(31);
            }
         }
      }
   };
}
