function ActivateDrone()
{
   set("aso#06892",this.curdrone);
   this.drones = 38;
   trace(">>> " + eval("aso#06892"));
   if(this.curdrone < this.drones)
   {
      _root["aso#75555"]["dr" + eval("aso#06892")].p0 = _root["aso#21654"](_root["aso#75555"]["dr" + eval("aso#06892")]._x,_root["aso#75555"]["dr" + eval("aso#06892")]._y,0,0);
      _root["aso#75555"]["dr" + eval("aso#06892")].p1 = _root["aso#21654"](_root["aso#75555"]["dr" + eval("aso#06892")]._x,_root["aso#75555"]["dr" + eval("aso#06892")]._y - 19,0,0);
      _root["aso#75555"]["dr" + eval("aso#06892")].p2 = _root["aso#21654"](_root["aso#75555"]["dr" + eval("aso#06892")]._x,_root["aso#75555"]["dr" + eval("aso#06892")]._y + 19,0,0);
      _root["aso#75555"]["dr" + eval("aso#06892")].p3 = _root["aso#21654"](_root["aso#75555"]["dr" + eval("aso#06892")]._x - 23,_root["aso#75555"]["dr" + eval("aso#06892")]._y,0,0);
      _root["aso#75555"]["dr" + eval("aso#06892")].p4 = _root["aso#21654"](_root["aso#75555"]["dr" + eval("aso#06892")]._x + 23,_root["aso#75555"]["dr" + eval("aso#06892")]._y,0,0);
      set("aso#20262",_root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p0,_root["aso#75555"]["dr" + eval("aso#06892")].p1,0));
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p0,_root["aso#75555"]["dr" + eval("aso#06892")].p2,0);
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p0,_root["aso#75555"]["dr" + eval("aso#06892")].p3,0);
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p0,_root["aso#75555"]["dr" + eval("aso#06892")].p4,0);
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p1,_root["aso#75555"]["dr" + eval("aso#06892")].p2,0);
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p3,_root["aso#75555"]["dr" + eval("aso#06892")].p4,0);
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p1,_root["aso#75555"]["dr" + eval("aso#06892")].p2,0);
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p2,_root["aso#75555"]["dr" + eval("aso#06892")].p3,0);
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p3,_root["aso#75555"]["dr" + eval("aso#06892")].p4,0);
      _root["aso#08284"](_root["aso#75555"]["dr" + eval("aso#06892")].p4,_root["aso#75555"]["dr" + eval("aso#06892")].p1,0);
      _root["aso#17057"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] = 2;
      _root["aso#17057"][_root["aso#75555"]["dr" + eval("aso#06892")].p1] = 2;
      _root["aso#17057"][_root["aso#75555"]["dr" + eval("aso#06892")].p2] = 2;
      _root["aso#17057"][_root["aso#75555"]["dr" + eval("aso#06892")].p3] = 2;
      _root["aso#17057"][_root["aso#75555"]["dr" + eval("aso#06892")].p4] = 2;
      _root["aso#75555"]["dr" + eval("aso#06892")].turnon = true;
      _root["aso#75555"]["dr" + eval("aso#06892")]["aso#69566"] = 100;
      _root["aso#75555"]["dr" + eval("aso#06892")]._visible = true;
      _root["aso#51178"](_root["aso#75555"]["dr" + eval("aso#06892")],eval("aso#20262"),0,1);
   }
   this.curdrone++;
}
if(this._currentframe == 11)
{
   this.curdrone = 0;
   set("aso#06892",0);
   while(eval("aso#06892") < this.drones)
   {
      _root["aso#75555"]["dr" + eval("aso#06892")]._visible = false;
      eval("aso#06892")++;
   }
   _root.grenades = 0;
   this.colmap._visible = false;
   _root["aso#75555"].player0["aso#63577"].gotoAndStop(2);
   _root["aso#75555"].player0.w_upg2 = 2;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 1;
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 1;
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 1600;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(3);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(4);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(12);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 5;
      }
      eval("aso#06892")++;
   }
   bgstartx = _root["aso#75555"].backgroundd._x;
   set("aso#18449",0);
   way = 0;
   _root["aso#75555"].player0._alpha = 0;
   _root["aso#75555"].player0["aso#69566"] = 1000;
   _root.playerhmax = 1000;
   swich3 = true;
   swich2 = true;
   swich1 = true;
   swich0 = true;
   this.onEnterFrame = function()
   {
      if(_root.gunpaused)
      {
         if(this._currentframe == 11)
         {
            if(swich2)
            {
               if(way > 300)
               {
                  swich2 = false;
                  this.wavplayer.gotoAndStop(2);
               }
            }
            if(swich0)
            {
               if(way > 1000)
               {
                  swich0 = false;
                  this.ActivateDrone();
                  this.ActivateDrone();
                  this.wavplayer.gotoAndStop(3);
               }
            }
            if(swich1)
            {
               if(way > 15000)
               {
                  swich1 = false;
                  this.ActivateDrone();
                  this.ActivateDrone();
                  this.wavplayer.gotoAndStop(4);
               }
            }
            if(swich3)
            {
               if(way > 21000)
               {
                  this.wavplayer.gotoAndStop(5);
               }
            }
            if(way < 22000)
            {
               if(eval("aso#18449") < 10)
               {
                  set("aso#18449",eval("aso#18449") + 0.1);
               }
               else
               {
                  set("aso#18449",10);
               }
            }
            else if(eval("aso#18449") > 0)
            {
               set("aso#18449",eval("aso#18449") - 0.2);
            }
            else
            {
               set("aso#18449",0);
               this.end._x = _root["aso#75555"].player0._x;
               this.end._y = _root["aso#75555"].player0._y;
            }
            way += eval("aso#18449");
            if(_root["aso#75555"].player0["aso#63577"]._currentframe != 7)
            {
               _root["aso#75555"].player0["aso#63577"].gotoAndStop(7);
            }
            _root["aso#75555"].backgroundd._x -= Math.round(eval("aso#18449"));
            if(_root["aso#75555"].backgroundd._x < bgstartx - 509)
            {
               _root["aso#75555"].backgroundd._x += 509;
            }
            if(_root["aso#75555"].player0["aso#69566"] > 0)
            {
               _root["aso#75555"].player0._x = _root["aso#75555"].jeep._x - 6;
               _root["aso#75555"].player0._y = _root["aso#75555"].jeep._y + 50;
               _root["aso#75555"].player0["aso#26251"] = eval("aso#18449");
               _root["aso#75555"].player0["aso#94914"] = 0;
               _root["aso#75555"].jeep.rl._rotation = _root["aso#75555"].player0["aso#63577"]._rotation / 100 * _root["aso#75555"].player0._xscale;
               _root["aso#75555"].jeep.rl._xscale = _root["aso#75555"].player0._xscale;
            }
            else
            {
               _root["aso#75555"].player0._alpha = 100;
            }
            _root["aso#75555"].jeep.w1._rotation += eval("aso#18449") * 1.6;
            _root["aso#75555"].jeep.w2._rotation += eval("aso#18449") * 1.6;
            _root["aso#75555"].jeep.w1._y = 18.1 + Math.random();
            _root["aso#75555"].jeep.w2._y = 18.1 + Math.random();
            _root["aso#75555"].jeep.carbody._y = -34.3 - Math.random();
            set("aso#06892",0);
            while(eval("aso#06892") < this.drones)
            {
               if(_root["aso#75555"]["dr" + eval("aso#06892")].turnon)
               {
                  if(_root["aso#75555"]["dr" + eval("aso#06892")]["aso#69566"] > 0)
                  {
                     _root["aso#51599"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] *= 0.9;
                     _root["aso#57588"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] *= 0.9;
                     if(_root["aso#82936"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] > 550)
                     {
                        _root["aso#51599"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] -= _root["aso#70537"] * 6;
                     }
                     if(_root["aso#82936"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] > 650)
                     {
                        _root["aso#51599"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] -= _root["aso#70537"] * 6;
                     }
                     if(_root["aso#00903"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] < 0)
                     {
                        _root["aso#57588"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] += 3;
                     }
                     if(_root["aso#00903"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] > 800)
                     {
                        _root["aso#57588"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] -= 3;
                     }
                     set("aso#23046",Math.atan2(_root["aso#75555"]["dr" + eval("aso#06892")]._x - _root["aso#75555"].player0._x,_root["aso#75555"]["dr" + eval("aso#06892")]._y - _root["aso#75555"].player0._y));
                     _root["aso#57588"][_root["aso#75555"]["dr" + eval("aso#06892")].p2] -= Math.sin(eval("aso#23046")) * 5;
                     _root["aso#51599"][_root["aso#75555"]["dr" + eval("aso#06892")].p2] -= Math.cos(eval("aso#23046")) * 5;
                     _root["aso#57588"][_root["aso#75555"]["dr" + eval("aso#06892")].p1] += Math.sin(eval("aso#23046")) * 5;
                     _root["aso#51599"][_root["aso#75555"]["dr" + eval("aso#06892")].p1] += Math.cos(eval("aso#23046")) * 5;
                     if(_root["aso#00903"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] > 0)
                     {
                        if(_root["aso#00903"][_root["aso#75555"]["dr" + eval("aso#06892")].p0] < 800)
                        {
                           set("aso#99090",(- _root["aso#75555"]["dr" + eval("aso#06892")]._rotation) / 180 * 3.141592653589793);
                           set("aso#15665",Math.sin(eval("aso#99090")) * 10);
                           set("aso#41013",Math.cos(eval("aso#99090")) * 10);
                           if(Math.random() > 0.9)
                           {
                              _root["aso#75555"]["dr" + eval("aso#06892")].gotoAndPlay(2);
                              _root["aso#98669"](_root["aso#75555"]["dr" + eval("aso#06892")]._x + eval("aso#41013"),_root["aso#75555"]["dr" + eval("aso#06892")]._y + eval("aso#15665"),2,1,eval("aso#15665"),eval("aso#41013"));
                              _root["aso#98669"](_root["aso#75555"]["dr" + eval("aso#06892")]._x - eval("aso#41013"),_root["aso#75555"]["dr" + eval("aso#06892")]._y - eval("aso#15665"),2,1,eval("aso#15665"),eval("aso#41013"));
                           }
                        }
                     }
                  }
               }
               eval("aso#06892")++;
            }
            pl = 0;
            while(pl < _root.pulsmax)
            {
               if(_root["aso#75555"]["pl" + pl]._visible == true)
               {
                  set("aso#32240",_root["aso#75555"]["pl" + pl]);
                  eval("aso#32240")._x -= eval("aso#18449");
                  if(_root["aso#75555"].jeep.hitTest(eval("aso#32240")._x + _root["aso#75555"]._x,eval("aso#32240")._y + _root["aso#75555"]._y,true))
                  {
                     if(eval("aso#32240")["aso#36416"] != 0)
                     {
                        _root["aso#52991"](eval("aso#32240")._x,eval("aso#32240")._y,0);
                        _root["aso#52991"](eval("aso#32240")._x,eval("aso#32240")._y,11);
                        _root["aso#75555"]["pl" + pl]._visible = false;
                        _root["aso#75555"].player0["aso#69566"] -= 10 * eval("aso#32240")["aso#27643"];
                     }
                  }
                  set("aso#06892",0);
                  while(eval("aso#06892") < this.drones)
                  {
                     if(_root["aso#75555"]["dr" + eval("aso#06892")].turnon)
                     {
                        if(_root["aso#75555"]["dr" + eval("aso#06892")]["aso#69566"] > 0)
                        {
                           if(eval("aso#32240")["aso#36416"] == 0)
                           {
                              if(_root["aso#75555"]["dr" + eval("aso#06892")].hitTest(eval("aso#32240")))
                              {
                                 _root["aso#75555"]["dr" + eval("aso#06892")]["aso#69566"] -= 20 * eval("aso#32240")["aso#27643"];
                                 _root["aso#52991"](eval("aso#32240")._x,eval("aso#32240")._y,11);
                                 _root["aso#52991"](eval("aso#32240")._x,eval("aso#32240")._y,0);
                                 _root["aso#75555"]["pl" + pl]._visible = false;
                                 a = Math.round(Math.random() * 4);
                                 _root["aso#57588"][_root["aso#75555"]["dr" + eval("aso#06892")]["p" + a]] += eval("aso#32240")["aso#15665"] * eval("aso#32240")["aso#27643"];
                                 _root["aso#51599"][_root["aso#75555"]["dr" + eval("aso#06892")]["p" + a]] += eval("aso#32240")["aso#41013"] * eval("aso#32240")["aso#27643"];
                                 if(_root["aso#75555"]["dr" + eval("aso#06892")]["aso#69566"] <= 0)
                                 {
                                    _root.stat_kills++;
                                    _root["aso#75555"]["dr" + eval("aso#06892")].gotoAndPlay(4);
                                    this.ActivateDrone();
                                 }
                              }
                           }
                        }
                     }
                     eval("aso#06892")++;
                  }
               }
               pl++;
            }
            set("aso#06892",1);
            while(eval("aso#06892") < _root.playerstot)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] == true)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] > 0)
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]._x -= eval("aso#18449");
                     if(_root["aso#75555"]["player" + eval("aso#06892")].body.hitTest(_root["aso#75555"].jeep.carbody))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = eval("aso#18449");
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = -1;
                        _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"fall");
                        _root["aso#66361"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 80,_root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"],"fall");
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] <= 100)
                        {
                           _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = -100;
                        }
                        else
                        {
                           _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] -= 100;
                           _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
                        }
                     }
                  }
               }
               eval("aso#06892")++;
            }
            set("aso#95885",0);
            while(eval("aso#95885") < _root.maxef)
            {
               _root["aso#75555"]["p" + eval("aso#95885")]._x -= eval("aso#18449");
               eval("aso#95885")++;
            }
            a = 0;
            while(a < _root["aso#30427"])
            {
               if(_root["aso#70958"][a] == true || _root["aso#70958"][a] == false)
               {
                  _root["aso#00903"][a] -= eval("aso#18449");
               }
               a++;
            }
            set("aso#20262",0);
            while(eval("aso#20262") < _root["aso#39200"])
            {
               if(_root["aso#00903"][_root["aso#90317"][eval("aso#20262")]] > -900)
               {
                  _root["aso#09255"][eval("aso#20262")] = true;
                  _root["aso#61343"][eval("aso#20262")] = 0;
               }
               eval("aso#20262")++;
            }
         }
      }
   };
}
