if(this._currentframe == 8)
{
   _root.currentlevel = 1;
   _root.grenades = 10;
   this.colmap._visible = false;
   _root.wealevel = 1;
   i = 1;
   while(i < 2)
   {
      _root.game["player" + i].command = 0;
      _root.game["player" + i].hea = 200;
      ran = 1;
      _root.game["player" + i].head.gotoAndStop(ran);
      _root.game["player" + i].body.gotoAndStop(ran);
      _root.game["player" + i].arm1.gotoAndStop(ran);
      _root.game["player" + i].arm2.gotoAndStop(ran);
      _root.game["player" + i].gun.gotoAndStop(4);
      _root.game["player" + i].expir = 1;
      _root.game["player" + i].active = true;
      i++;
   }
   i = 1;
   while(i < _root.playerstot)
   {
      _root.game["player" + i].expir = 1;
      i++;
   }
   _root.game.player1.hunt = 2;
   _root.game.player2.hunt = 1;
   _root.game.player3.hunt = 1;
   this.onEnterFrame = function()
   {
   };
}
