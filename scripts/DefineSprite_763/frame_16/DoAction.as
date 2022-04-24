if(this._currentframe == 16)
{
   this.fmustdie = false;
   this.bot.run = false;
   this.bot.dead = false;
   this.colmap._visible = false;
   _root["aso#56196"].player1.myi = -1;
   GO = false;
   set("aso#43797",false);
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 2)
      {
         if(eval("aso#87533") == 5 || eval("aso#87533") == 6 || eval("aso#87533") == 7)
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(2);
            _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(2);
            _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(2);
            _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(2);
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 9;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] *= 3;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(5);
            _root["aso#56196"]["player" + eval("aso#87533")].w_upg5 = 2;
         }
      }
      if(eval("aso#87533") == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 0;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 500;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(9);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(13);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(8);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 8;
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 1;
      }
      eval("aso#87533")++;
   }
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(_root["aso#56196"].player1["aso#12881"] <= 0 && !this.fmustdie)
         {
            _root.loose = 1;
         }
         if(_root["aso#56196"].player1["aso#12881"] <= 0 && this.fmustdie)
         {
            _root["aso#56196"].player1.deadtime = 0;
         }
         set("aso#87533",0);
         while(eval("aso#87533") < _root.playerstot)
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] == true)
            {
               if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
               {
                  if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg0) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg1) || _root["aso#56196"]["player" + eval("aso#87533")].hitTest(this.kill_reg2))
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = -100;
                     _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
                  }
               }
            }
            eval("aso#87533")++;
         }
         set("aso#87533",0);
         if(_root["aso#56196"]["player" + eval("aso#87533")].hitTest(_root["aso#56196"].speedup))
         {
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = 0;
            _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = 0;
            if(Key.isDown(38) || Key.isDown(87))
            {
               _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = -4;
            }
            if(Key.isDown(40) || Key.isDown(83))
            {
               _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = 4;
            }
            if(Key.isDown(39) || Key.isDown(32))
            {
               _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = 6;
            }
            else
            {
               _root["aso#56196"]["player" + eval("aso#87533")]._x = _root["aso#56196"].speedup._x + 30;
            }
         }
         set("aso#87533",1);
         if(GO)
         {
            if(_root["aso#56196"]["player" + eval("aso#87533")].hunt == -1 || _root["aso#56196"]["player" + eval("aso#87533")].botaction == 0)
            {
               if(this.bot.run)
               {
                  _root["aso#56196"]["player" + eval("aso#87533")].botaction = 2;
               }
               else
               {
                  if(_root["aso#56196"]["player" + eval("aso#87533")]._x < _root["aso#56196"].player0._x - 100)
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")].botaction = 1;
                  }
                  if(_root["aso#56196"]["player" + eval("aso#87533")]._x > _root["aso#56196"].player0._x + 100)
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")].botaction = 2;
                  }
                  if(_root["aso#56196"]["player" + eval("aso#87533")].botaction == 1 || _root["aso#56196"]["player" + eval("aso#87533")].botaction == 2)
                  {
                     if(_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y + 20,true))
                     {
                        if(_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x + (_root["aso#56196"]["player" + eval("aso#87533")].botaction - 1.5) * _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] * 15,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y - 20,true) || !_root["aso#56196"].colmap.hitTest(_root["aso#56196"]._x + _root["aso#56196"]["player" + eval("aso#87533")]._x + (_root["aso#56196"]["player" + eval("aso#87533")].botaction - 1.5) * _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] * 5,_root["aso#56196"]._y + _root["aso#56196"]["player" + eval("aso#87533")]._y + 100,true))
                        {
                           _root["aso#56196"]["player" + eval("aso#87533")].botaction = 3;
                        }
                     }
                  }
               }
            }
         }
         if(!GO)
         {
            if(_root["aso#56196"].player0.hitTest(_root["aso#56196"].but0))
            {
               GO = true;
            }
         }
         if(_root["aso#56196"].player0.hitTest(_root["aso#56196"].but1))
         {
            _root["aso#56196"].but1.gotoAndStop(2);
         }
         if(this.fmustdie)
         {
            if(_root["aso#56196"].player1["aso#12881"] > -100)
            {
               if(_root["aso#56196"].player1.hitTest(_root["aso#56196"].but4))
               {
                  if(_root["aso#56196"].player0.hitTest(_root["aso#56196"].but4))
                  {
                     _root["aso#56196"].end._x = _root["aso#56196"].player0._x;
                     _root["aso#56196"].end._y = _root["aso#56196"].player0._y;
                  }
               }
               if(Math.random() > 0.95)
               {
                  _root["aso#45610"][_root["aso#56196"].player1["aso#59951"]] = 1;
                  _root["aso#63577"][_root["aso#56196"].player1["aso#59951"]] -= 6;
                  _root["aso#45610"][_root["aso#56196"].player1["aso#16636"]] = 1;
                  _root["aso#63577"][_root["aso#56196"].player1["aso#16636"]] += 6;
                  _root["aso#32240"][_root["aso#56196"].player1["aso#16636"]] += 2;
               }
               if(Math.random() > 0.5)
               {
                  _root["aso#45610"][_root["aso#56196"].player1.a_stand3] = 1;
                  _root["aso#63577"][_root["aso#56196"].player1.a_stand3] -= Math.random() * 2;
               }
            }
            else
            {
               this.fmustdie = false;
               _root["aso#56196"].player1.sou.gotoAndStop(35);
            }
            _root["aso#19841"]("Take an ally to ship with you");
         }
         if(!this.bot.run)
         {
            if(_root["aso#56196"].player0["aso#12881"] > 0)
            {
               if(_root["aso#56196"].player0.hitTest(_root["aso#56196"].but3))
               {
                  this.bot.run = true;
                  _root["aso#56196"].player1.sou.gotoAndStop(40);
               }
            }
         }
         else
         {
            if(_root["aso#56196"].player0["aso#12881"] > 0)
            {
               if(this.bot._x + 300 > _root["aso#56196"].player0)
               {
                  _root["aso#56196"].player0 = this.bot._x + 300;
               }
            }
            if(_root["aso#56196"].player1["aso#12881"] > 0)
            {
               if(this.bot._x + 300 > _root["aso#56196"].player1)
               {
                  _root["aso#56196"].player1 = this.bot._x + 300;
               }
            }
            if(this.bot._currentframe >= 20 && this.bot._currentframe < 50)
            {
               this.bot._x += 3;
               if(!eval("aso#43797"))
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
               if(_root["aso#56196"].player0["aso#12881"] > 0)
               {
                  if(this.bot.arm1.hitTest(_root["aso#56196"].player0))
                  {
                     trace(22);
                     _root["aso#56196"].player0["aso#38229"] += 10;
                     _root["aso#56196"].player0["aso#75555"] -= 15;
                     _root["aso#56196"].player0["aso#12881"] = -200;
                     this.bot.run = false;
                     _root["aso#56196"].player0["aso#15665"] = "body";
                     _root["aso#17057"](_root["aso#56196"].player0._x - 20 + Math.random() * 40,_root["aso#56196"].player0._y - 20 + Math.random() * 40,_root["aso#56196"].player0["aso#20262"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                  }
               }
               if(_root["aso#56196"].player1["aso#12881"] > 0)
               {
                  if(this.bot.arm1.hitTest(_root["aso#56196"].player1))
                  {
                     _root["aso#56196"].player1["aso#38229"] += 30;
                     _root["aso#56196"].player1["aso#75555"] -= 15;
                     _root["aso#56196"].player1["aso#12881"] = 0;
                     _root["aso#56196"].player1["aso#15665"] = "none";
                     _root["aso#17057"](_root["aso#56196"].player1._x - 20 + Math.random() * 40,_root["aso#56196"].player1._y - 20 + Math.random() * 40,_root["aso#56196"].player1["aso#20262"],"shot_head",-4 + Math.random() * 8,-4 + Math.random() * 8);
                     this.fmustdie = true;
                  }
               }
            }
            pl = 0;
            while(pl < _root.pulsmax)
            {
               if(_root["aso#56196"]["pl" + pl]._visible == true)
               {
                  set("aso#81544",_root["aso#56196"]["pl" + pl]);
                  if(this.bot.hitTest(eval("aso#81544")._x + _root["aso#56196"]._x,eval("aso#81544")._y + _root["aso#56196"]._y,true))
                  {
                     _root["aso#76947"](eval("aso#81544")._x,eval("aso#81544")._y,0);
                     _root["aso#76947"](eval("aso#81544")._x,eval("aso#81544")._y,11);
                     _root["aso#56196"]["pl" + pl]._visible = false;
                  }
               }
               pl++;
            }
         }
         if(Key.isDown(69))
         {
            if(_root["aso#56196"].player0.hitTest(this.but2) && _root["aso#56196"].player0["aso#12881"] > 0)
            {
               if(this.door1._currentframe == 30)
               {
                  set("aso#43797",false);
                  this.but2.gotoAndStop(1);
               }
               if(this.door1._currentframe == 1 || this.door1._currentframe == 60 || this.door1._currentframe == 95)
               {
                  set("aso#43797",true);
                  this.but2.gotoAndStop(2);
               }
               trace(this.door1._currentframe);
               trace(eval("aso#43797"));
            }
         }
         if(eval("aso#43797"))
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
