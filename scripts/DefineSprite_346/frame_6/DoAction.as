if(this._currentframe == 6)
{
   _root.grenades = 30;
   this.colmap._visible = false;
   _root.wealevel = 5;
   _root.game.player0.gun.gotoAndStop(4);
   this.h1._visible = false;
   this.h2._visible = false;
   this.h3._visible = false;
   i = 1;
   while(i < _root.playerstot)
   {
      _root.game["player" + i].expir = 1;
      if(_root.game["player" + i].char == 0)
      {
         _root.game["player" + i].hea *= 4;
         _root.game["player" + i].expir = 1;
         _root.game["player" + i].gun.gotoAndStop(3);
         _root.game["player" + i].head.gotoAndStop(4);
      }
      if(_root.game["player" + i].char == 1)
      {
         _root.game["player" + i].hea *= 2;
         _root.game["player" + i].head.gotoAndStop(2);
         _root.game["player" + i].body.gotoAndStop(2);
         _root.game["player" + i].arm1.gotoAndStop(2);
         _root.game["player" + i].arm2.gotoAndStop(2);
         _root.game["player" + i].gun.gotoAndStop(11);
         _root.game["player" + i].legtype = 3;
      }
      i++;
   }
   opendor = false;
   this.onEnterFrame = function()
   {
      if(_root.game.player0.hitTest(this.but0))
      {
         if(_root.game.player0.hea > 0)
         {
            opendor = true;
         }
      }
      if(this.h1.hitTest(_root.game.player0))
      {
         _root.game.player1.hunt = 0;
         _root.game.player2.hunt = 0;
      }
      if(this.h2.hitTest(_root.game.player0))
      {
         _root.game.player3.hunt = 0;
      }
      if(this.h3.hitTest(_root.game.player0))
      {
         _root.game.player5.hunt = 0;
         _root.game.player4.hunt = 0;
      }
   };
}
