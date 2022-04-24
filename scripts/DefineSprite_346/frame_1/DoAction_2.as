if(this._currentframe == 1)
{
   _root.grenades = 2;
   this.colmap._visible = false;
   _root.wealevel = 1;
   hinttot = 4;
   hintok = new Array();
   hmessag = new Array();
   hmessag[0] = "You can blow up the barrels if your weapon has enough power.";
   hmessag[1] = "You can throw grenades by \'\'ENTER\'\' button.";
   hmessag[2] = "This is a medikit. Pick it up for restore 25 Hit Points.";
   hmessag[3] = "You can Jump by Pressing \'\'UP\'\' arrow.";
   i = 0;
   while(i < hinttot)
   {
      this["h" + i]._visible = false;
      hintok[i] = true;
      i++;
   }
   i = 1;
   while(i < _root.playerstot)
   {
      _root.game["player" + i].hea = 20;
      _root.game["player" + i].opentop = true;
      r = Math.floor(Math.random() * 2.999);
      if(r == 0)
      {
         _root.game["player" + i].head.gotoAndStop(6);
      }
      if(r == 1)
      {
         _root.game["player" + i].head.gotoAndStop(7);
      }
      if(r == 2)
      {
         _root.game["player" + i].head.gotoAndStop(8);
      }
      i++;
   }
   this.onEnterFrame = function()
   {
      i = 0;
      while(i < hinttot)
      {
         if(hintok[i])
         {
            if(this["h" + i].hitTest(_root.game.player0))
            {
               if(i != 3)
               {
                  hintok[i] = false;
               }
               _root.Hint(hmessag[i]);
            }
         }
         i++;
      }
   };
}
