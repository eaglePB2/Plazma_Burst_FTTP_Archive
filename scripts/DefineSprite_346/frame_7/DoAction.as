if(this._currentframe == 7)
{
   _root.grenades = 2;
   this.colmap._visible = false;
   _root.wealevel = 5;
   _root.game.player0.gun.gotoAndStop(5);
   i = 1;
   while(i < _root.playerstot)
   {
      _root.game["player" + i].expir = 1;
      _root.game["player" + i].command = 1;
      if(_root.game["player" + i].char == 0)
      {
         _root.game["player" + i].hea *= 4;
         _root.game["player" + i].expir = 1;
         _root.game["player" + i].gun.gotoAndStop(4);
         _root.game["player" + i].head.gotoAndStop(4);
      }
      if(_root.game["player" + i].char == 1)
      {
         _root.game["player" + i].hea *= 2;
         _root.game["player" + i].head.gotoAndStop(2);
         _root.game["player" + i].body.gotoAndStop(2);
         _root.game["player" + i].arm1.gotoAndStop(3);
         _root.game["player" + i].arm2.gotoAndStop(3);
         _root.game["player" + i].gun.gotoAndStop(13);
         _root.game["player" + i].legtype = 3;
      }
      i++;
   }
}
