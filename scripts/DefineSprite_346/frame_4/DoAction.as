if(this._currentframe == 4)
{
   _root.grenades = 8;
   this.colmap._visible = false;
   _root.wealevel = 3;
   _root.game.player0.gun.gotoAndStop(3);
   i = 0;
   while(i < _root.playerstot)
   {
      if(_root.game["player" + i].char == 0)
      {
         _root.game["player" + i].gun.gotoAndStop(2);
         if(i != 0)
         {
            _root.game["player" + i].head.gotoAndStop(4);
         }
      }
      i++;
   }
   i = 1;
   while(i < _root.playerstot)
   {
      if(_root.game["player" + i].char == 0)
      {
         _root.game["player" + i].head.gotoAndStop(4);
         _root.game["player" + i].expir = 1;
         if(i == 1 || i == 4 || i == 6 || i == 12)
         {
            _root.game["player" + i].gun.gotoAndStop(3);
            _root.game["player" + i].head.gotoAndStop(4);
         }
         else
         {
            _root.game["player" + i].gun.gotoAndStop(2);
            _root.game["player" + i].head.gotoAndStop(3);
         }
         if(i >= 15)
         {
            _root.game["player" + i].command = 0;
            _root.game["player" + i].head.gotoAndStop(4);
            _root.game["player" + i].body.gotoAndStop(1);
            _root.game["player" + i].leg1.gotoAndStop(1);
            _root.game["player" + i].leg2.gotoAndStop(1);
            _root.game["player" + i].arm1.gotoAndStop(1);
            _root.game["player" + i].arm2.gotoAndStop(1);
            _root.game["player" + i].hunt = 0;
         }
         else
         {
            _root.game["player" + i].hea *= 1.5;
         }
      }
      i++;
   }
   opendor = false;
   this.onEnterFrame = function()
   {
      if(Key.isDown(69))
      {
         if(_root.game.player0.hitTest(this.but0))
         {
            if(_root.game.player0.hea > 0)
            {
               this.but0.gotoAndStop(2);
               opendor = true;
            }
         }
      }
      if(opendor)
      {
         if(this.colmap.box7._yscale > 0)
         {
            this.colmap.box7._yscale -= 0.5;
            this.door1._y -= 0.5;
         }
      }
   };
}
