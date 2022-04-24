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
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 0;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 10;
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
      }
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
         if(_root["aso#75555"].player0.hitTest(this.but0) && _root["aso#75555"].player0["aso#69566"] > 0)
         {
            set("aso#24438",true);
         }
         else
         {
            set("aso#24438",false);
         }
         if(eval("aso#24438"))
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
