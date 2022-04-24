if(this._currentframe == 16)
{
   this.fmustdie = false;
   this.bot.run = false;
   this.bot.dead = false;
   this.colmap._visible = false;
   _root["aso#75555"].player1.myi = -1;
   GO = false;
   set("aso#24438",false);
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 2)
      {
         if(eval("aso#06892") == 5 || eval("aso#06892") == 6 || eval("aso#06892") == 7)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(2);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 9;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] *= 3;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(5);
            _root["aso#75555"]["player" + eval("aso#06892")].w_upg5 = 2;
         }
      }
      if(eval("aso#06892") == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 0;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 500;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(9);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(13);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(8);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 8;
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 1;
      }
      eval("aso#06892")++;
   }
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(_root["aso#75555"].player1["aso#69566"] <= 0 && !this.fmustdie)
         {
            _root.loose = 1;
         }
         if(_root["aso#75555"].player1["aso#69566"] <= 0 && this.fmustdie)
         {
            _root["aso#75555"].player1.deadtime = 0;
         }
         set("aso#06892",0);
         while(eval("aso#06892") < _root.playerstot)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] == true)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg0) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg1) || _root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg2))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = -100;
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                  }
               }
            }
            eval("aso#06892")++;
         }
         set("aso#06892",0);
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root["aso#75555"].speedup))
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = 0;
            if(Key.isDown(38) || Key.isDown(87))
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = -4;
            }
            if(Key.isDown(40) || Key.isDown(83))
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 4;
            }
            if(Key.isDown(39) || Key.isDown(32))
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = 6;
            }
            else
            {
               _root["aso#75555"]["player" + eval("aso#06892")]._x = _root["aso#75555"].speedup._x + 30;
            }
         }
         set("aso#06892",1);
         if(GO)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")].hunt == -1 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 0)
            {
               if(this.bot.run)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")].botaction = 2;
               }
               else
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")]._x < _root["aso#75555"].player0._x - 100)
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")].botaction = 1;
                  }
                  if(_root["aso#75555"]["player" + eval("aso#06892")]._x > _root["aso#75555"].player0._x + 100)
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")].botaction = 2;
                  }
                  if(_root["aso#75555"]["player" + eval("aso#06892")].botaction == 1 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 2)
                  {
                     if(_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y + 20,true))
                     {
                        if(_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x + (_root["aso#75555"]["player" + eval("aso#06892")].botaction - 1.5) * _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] * 15,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y - 20,true) || !_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x + (_root["aso#75555"]["player" + eval("aso#06892")].botaction - 1.5) * _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] * 5,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y + 100,true))
                        {
                           _root["aso#75555"]["player" + eval("aso#06892")].botaction = 3;
                        }
                     }
                  }
               }
            }
         }
         if(!GO)
         {
            if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].but0))
            {
               GO = true;
            }
         }
         if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].but1))
         {
            _root["aso#75555"].but1.gotoAndStop(2);
         }
         if(this.fmustdie)
         {
            if(_root["aso#75555"].player1.hitTest(_root["aso#75555"].but4))
            {
               if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].but4))
               {
                  _root["aso#75555"].end._x = _root["aso#75555"].player0._x;
                  _root["aso#75555"].end._y = _root["aso#75555"].player0._y;
               }
            }
            _root["aso#25830"]("Take an ally to ship with you");
         }
         if(!this.bot.run)
         {
            if(_root["aso#75555"].player0["aso#69566"] > 0)
            {
               if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].but3))
               {
                  this.bot.run = true;
                  _root["aso#75555"].player1.sou.gotoAndStop(40);
               }
            }
         }
         else
         {
            if(_root["aso#75555"].player0["aso#69566"] > 0)
            {
               if(this.bot._x + 300 > _root["aso#75555"].player0)
               {
                  _root["aso#75555"].player0 = this.bot._x + 300;
               }
            }
            if(_root["aso#75555"].player1["aso#69566"] > 0)
            {
               if(this.bot._x + 300 > _root["aso#75555"].player1)
               {
                  _root["aso#75555"].player1 = this.bot._x + 300;
               }
            }
            if(this.bot._currentframe >= 20 && this.bot._currentframe < 50)
            {
               this.bot._x += 3;
               if(!eval("aso#24438"))
               {
                  if(this.bot._x + 300 > -150 && this.bot._x + 300 < -100)
                  {
                     this.bot._x -= 3;
                  }
               }
               if(this.bot._x + 300 > 598)
               {
                  this.bot._x -= 3;
               }
            }
            if(this.bot._currentframe >= 55 && this.bot._currentframe < 70)
            {
               trace(11);
               if(_root["aso#75555"].player0["aso#69566"] > 0)
               {
                  if(this.bot.arm1.hitTest(_root["aso#75555"].player0))
                  {
                     trace(22);
                     _root["aso#75555"].player0["aso#26251"] += 10;
                     _root["aso#75555"].player0["aso#94914"] -= 15;
                     _root["aso#75555"].player0["aso#69566"] = -200;
                     this.bot.run = false;
                     _root["aso#75555"].player0["aso#35024"] = "body";
                     _root["aso#66361"](_root["aso#75555"].player0._x - 20 + Math.random() * 40,_root["aso#75555"].player0._y - 20 + Math.random() * 40,_root["aso#75555"].player0["aso#14273"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                  }
               }
               if(_root["aso#75555"].player1["aso#69566"] > 0)
               {
                  if(this.bot.arm1.hitTest(_root["aso#75555"].player1))
                  {
                     _root["aso#75555"].player1["aso#26251"] += 10;
                     _root["aso#75555"].player1["aso#94914"] -= 15;
                     _root["aso#75555"].player1["aso#69566"] = 0;
                     _root["aso#75555"].player1["aso#35024"] = "none";
                     _root["aso#66361"](_root["aso#75555"].player1._x - 20 + Math.random() * 40,_root["aso#75555"].player1._y - 20 + Math.random() * 40,_root["aso#75555"].player1["aso#14273"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                     this.fmustdie = true;
                  }
               }
            }
            pl = 0;
            while(pl < _root.pulsmax)
            {
               if(_root["aso#75555"]["pl" + pl]._visible == true)
               {
                  set("aso#32240",_root["aso#75555"]["pl" + pl]);
                  if(this.bot.hitTest(eval("aso#32240")._x + _root["aso#75555"]._x,eval("aso#32240")._y + _root["aso#75555"]._y,true))
                  {
                     _root["aso#52991"](eval("aso#32240")._x,eval("aso#32240")._y,0);
                     _root["aso#52991"](eval("aso#32240")._x,eval("aso#32240")._y,11);
                     _root["aso#75555"]["pl" + pl]._visible = false;
                  }
               }
               pl++;
            }
         }
         if(Key.isDown(69))
         {
            if(_root["aso#75555"].player0.hitTest(this.but2) && _root["aso#75555"].player0["aso#69566"] > 0)
            {
               if(this.door1._currentframe == 30)
               {
                  set("aso#24438",false);
                  this.but2.gotoAndStop(1);
               }
               if(this.door1._currentframe == 1 || this.door1._currentframe == 60 || this.door1._currentframe == 95)
               {
                  set("aso#24438",true);
                  this.but2.gotoAndStop(2);
               }
               trace(this.door1._currentframe);
               trace(eval("aso#24438"));
            }
         }
         if(eval("aso#24438"))
         {
            if(this.colmap.box32._yscale > 0)
            {
               if(this.door1._currentframe == 1 || this.door1._currentframe == 60 || this.door1._currentframe == 95)
               {
                  this.colmap.box32._yscale = 0;
                  this.door1.gotoAndPlay(2);
               }
            }
         }
         else if(this.colmap.box32._yscale == 0)
         {
            if(this.door1._currentframe == 30)
            {
               this.colmap.box32._yscale = 301;
               this.door1.gotoAndPlay(31);
               if(this.bot._x + 300 >= -100 && this.bot._x + 300 < 0)
               {
                  if(!this.bot.dead)
                  {
                     this.bot.gotoAndPlay("die");
                  }
                  this.bot.dead = true;
                  this.door1.gotoAndPlay(65);
               }
               else
               {
                  this.door1.gotoAndPlay(31);
               }
            }
         }
      }
   };
}
