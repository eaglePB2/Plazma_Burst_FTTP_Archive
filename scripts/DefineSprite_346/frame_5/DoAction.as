if(this._currentframe == 5)
{
   _root.game.player8.say_die = "Radio: Need backup!";
   _root.game.player1.say_vis = "Radio: Reinforcement has arrived.";
   _root.game.player1.say_die = "Radio: a-agh!..";
   _root.game.player2.say_die = "Radio: uagh!..";
   _root.game.player3.say_die = "Radio: agh!..";
   _root.game.player4.say_die = "Radio: ouh-h!..";
   _root.game.player7.say_die = "Radio: uh!..";
   _root.game.player7.say_vis = "Radio: Take this!";
   this.but0._visible = false;
   _root.grenades = 30;
   this.colmap._visible = false;
   _root.wealevel = 4;
   _root.game.player0.gun.gotoAndStop(4);
   i = 1;
   while(i < _root.playerstot)
   {
      _root.game["player" + i].expir = 1;
      if(_root.game["player" + i].char == 0)
      {
         _root.game["player" + i].expir = 0;
         _root.game["player" + i].command = 0;
         _root.game["player" + i].hea = 50;
         _root.game["player" + i].legtype = 4;
         _root.game["player" + i].gun.gotoAndStop(2);
         _root.game["player" + i].body.gotoAndStop(1);
         _root.game["player" + i].arm1.gotoAndStop(1);
         _root.game["player" + i].arm2.gotoAndStop(1);
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
      if(!opendor)
      {
         if(_root.game.player0.hitTest(this.but0))
         {
            if(_root.game.player0.hea > 0)
            {
               opendor = true;
            }
         }
      }
      i = 0;
      while(i < _root.playerstot)
      {
         if(_root.game["player" + i].active == true)
         {
            if(_root.game["player" + i].hea > 0)
            {
               if(_root.game["player" + i].hitTest(this.kill_reg0))
               {
                  _root.game["player" + i].hea = 0;
                  _root.Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,this.kill_reg0._y,2);
               }
               if(_root.game["player" + i].hitTest(this.kill_reg1))
               {
                  _root.game["player" + i].hea = 0;
                  _root.Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,this.kill_reg1._y,2);
               }
            }
         }
         i++;
      }
      if(opendor)
      {
         if(this.colmap.box13._yscale > 0)
         {
            this.colmap.box13._yscale -= 5;
            this.door1._y -= 5;
         }
         else
         {
            opendor = false;
         }
      }
   };
}
