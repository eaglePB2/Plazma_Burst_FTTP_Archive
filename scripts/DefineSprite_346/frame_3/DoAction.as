if(this._currentframe == 3)
{
   _root.grenades = 5;
   this.colmap._visible = false;
   _root.wealevel = 3;
   _root.game.player0.gun.gotoAndStop(3);
   i = 1;
   while(i < _root.playerstot)
   {
      if(_root.game["player" + i].char == 0)
      {
         _root.game["player" + i].expir = 1;
         if(i == 2 || i == 4 || i == 10)
         {
            _root.game["player" + i].gun.gotoAndStop(3);
            _root.game["player" + i].head.gotoAndStop(4);
         }
         else
         {
            _root.game["player" + i].gun.gotoAndStop(2);
            _root.game["player" + i].head.gotoAndStop(3);
         }
         _root.game["player" + i].hea *= 1.5;
      }
      i++;
   }
   _root.game.speedup._visible = false;
   _root.game.speedup2._visible = false;
   liftmoving = false;
   this.onEnterFrame = function()
   {
      if(_root.game.player0.hitTest(this.colmap.box10))
      {
         liftmoving = true;
      }
      if(liftmoving)
      {
         if(!this.colmap.box11.hitTest(this.colmap.box10))
         {
            this.colmap.box10._y += 2;
            this.lift._y = this.colmap.box10._y;
            if(_root.game.player0.hea > 0)
            {
               if(_root.game.player0.hitTest(this.colmap.box10))
               {
                  _root.game.player0._y += 2;
                  _root.game.player0.toy += 2;
               }
            }
         }
      }
      i = 0;
      while(i < _root.playerstot)
      {
         if(_root.game["player" + i].active == true)
         {
            if(Key.isDown(69))
            {
               if(_root.game["player" + i].command == 0)
               {
                  if(_root.game["player" + i].hea > 0)
                  {
                     _root.game["player" + i].hunt = 0;
                  }
               }
            }
            if(_root.game["player" + i].hitTest(this.colmap.box12))
            {
               _root.game["player" + i].hea = 0;
            }
            if(_root.game["player" + i].hitTest(_root.game.speedup))
            {
               _root.game["player" + i].toy -= 2.5;
               _root.game["player" + i].toy *= 0.99;
            }
            if(_root.game["player" + i].hitTest(_root.game.speedup2))
            {
               _root.game["player" + i].toy -= 2.5;
               _root.game["player" + i].toy *= 0.99;
            }
         }
         i++;
      }
      a = 0;
      while(a < _root.atotal)
      {
         if(_root.aio[a] == true)
         {
            if(_root.game.speedup.hitTest(_root.ax[a] + _root.game._x,_root.ay[a] + _root.game._y,true) || _root.game.speedup2.hitTest(_root.ax[a] + _root.game._x,_root.ay[a] + _root.game._y,true))
            {
               _root.atoy[a] -= 2.5;
               _root.atoy[a] *= 0.99;
            }
         }
         a++;
      }
   };
}
