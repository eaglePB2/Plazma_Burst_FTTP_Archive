if(this._currentframe == 2)
{
   _root.grenades = 4;
   _root.game.speedup._visible = false;
   this.colmap._visible = false;
   _root.wealevel = 2;
   i = 0;
   while(i < _root.playerstot)
   {
      if(_root.game["player" + i].char == 0)
      {
         _root.game["player" + i].gun.gotoAndStop(2);
         if(i != 0)
         {
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
            _root.game["player" + i].hea *= 0.7;
         }
      }
      _root.game["player" + (_root.playerstot - 1)].expir = 0;
      i++;
   }
   hinttot = 4;
   hintok = new Array();
   hmessag = new Array();
   hmessag[0] = "You can swap Your weapon by Mouse Wheel.";
   hmessag[1] = "This thing will hoist You.";
   hmessag[2] = "Shooting in the head is most effective way to kill.";
   hmessag[3] = "You go crouch by \'\'S\'\' button.";
   i = 0;
   while(i < hinttot)
   {
      this["h" + i]._visible = false;
      hintok[i] = true;
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
      i = 0;
      while(i < _root.playerstot)
      {
         if(_root.game["player" + i].hitTest(_root.game.speedup))
         {
            _root.game["player" + i].toy -= 2.5;
            _root.game["player" + i].toy *= 0.99;
         }
         i++;
      }
      a = 0;
      while(a < _root.atotal)
      {
         if(_root.aio[a] == true)
         {
            if(_root.game.speedup.hitTest(_root.ax[a] + _root.game._x,_root.ay[a] + _root.game._y,true))
            {
               _root.atoy[a] -= 2.5;
               _root.atoy[a] *= 0.99;
            }
         }
         a++;
      }
   };
}
