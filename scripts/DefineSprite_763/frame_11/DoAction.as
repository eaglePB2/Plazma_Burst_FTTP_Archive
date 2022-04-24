function ActivateDrone()
{
   set("aso#87533",this.curdrone);
   this.drones = 38;
   trace(">>> " + eval("aso#87533"));
   if(this.curdrone < this.drones)
   {
      _root["aso#56196"]["dr" + eval("aso#87533")].p0 = _root["aso#70958"](_root["aso#56196"]["dr" + eval("aso#87533")]._x,_root["aso#56196"]["dr" + eval("aso#87533")]._y,0,0);
      _root["aso#56196"]["dr" + eval("aso#87533")].p1 = _root["aso#70958"](_root["aso#56196"]["dr" + eval("aso#87533")]._x,_root["aso#56196"]["dr" + eval("aso#87533")]._y - 19,0,0);
      _root["aso#56196"]["dr" + eval("aso#87533")].p2 = _root["aso#70958"](_root["aso#56196"]["dr" + eval("aso#87533")]._x,_root["aso#56196"]["dr" + eval("aso#87533")]._y + 19,0,0);
      _root["aso#56196"]["dr" + eval("aso#87533")].p3 = _root["aso#70958"](_root["aso#56196"]["dr" + eval("aso#87533")]._x - 23,_root["aso#56196"]["dr" + eval("aso#87533")]._y,0,0);
      _root["aso#56196"]["dr" + eval("aso#87533")].p4 = _root["aso#70958"](_root["aso#56196"]["dr" + eval("aso#87533")]._x + 23,_root["aso#56196"]["dr" + eval("aso#87533")]._y,0,0);
      set("aso#06892",_root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p0,_root["aso#56196"]["dr" + eval("aso#87533")].p1,0));
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p0,_root["aso#56196"]["dr" + eval("aso#87533")].p2,0);
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p0,_root["aso#56196"]["dr" + eval("aso#87533")].p3,0);
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p0,_root["aso#56196"]["dr" + eval("aso#87533")].p4,0);
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p1,_root["aso#56196"]["dr" + eval("aso#87533")].p2,0);
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p3,_root["aso#56196"]["dr" + eval("aso#87533")].p4,0);
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p1,_root["aso#56196"]["dr" + eval("aso#87533")].p2,0);
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p2,_root["aso#56196"]["dr" + eval("aso#87533")].p3,0);
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p3,_root["aso#56196"]["dr" + eval("aso#87533")].p4,0);
      _root["aso#88925"](_root["aso#56196"]["dr" + eval("aso#87533")].p4,_root["aso#56196"]["dr" + eval("aso#87533")].p1,0);
      _root["aso#91709"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] = 2;
      _root["aso#91709"][_root["aso#56196"]["dr" + eval("aso#87533")].p1] = 2;
      _root["aso#91709"][_root["aso#56196"]["dr" + eval("aso#87533")].p2] = 2;
      _root["aso#91709"][_root["aso#56196"]["dr" + eval("aso#87533")].p3] = 2;
      _root["aso#91709"][_root["aso#56196"]["dr" + eval("aso#87533")].p4] = 2;
      _root["aso#56196"]["dr" + eval("aso#87533")].turnon = true;
      _root["aso#56196"]["dr" + eval("aso#87533")]["aso#12881"] = 100;
      _root["aso#56196"]["dr" + eval("aso#87533")]._visible = true;
      _root["aso#12460"](_root["aso#56196"]["dr" + eval("aso#87533")],eval("aso#06892"),0,1);
   }
   this.curdrone++;
}
if(this._currentframe == 11)
{
   this.curdrone = 0;
   set("aso#87533",0);
   while(eval("aso#87533") < this.drones)
   {
      _root["aso#56196"]["dr" + eval("aso#87533")]._visible = false;
      eval("aso#87533")++;
   }
   _root.grenades = 0;
   this.colmap._visible = false;
   _root["aso#56196"].player0["aso#44218"].gotoAndStop(2);
   _root["aso#56196"].player0.w_upg2 = 2;
   set("aso#87533",1);
   while(eval("aso#87533") < _root.playerstot)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 1;
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 1;
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 1600;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(3);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(4);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(12);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 5;
      }
      eval("aso#87533")++;
   }
   bgstartx = _root["aso#56196"].backgroundd._x;
   set("aso#95885",0);
   way = 0;
   _root["aso#56196"].player0._alpha = 0;
   _root["aso#56196"].player0["aso#12881"] = 1000;
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
               if(eval("aso#95885") < 10)
               {
                  set("aso#95885",eval("aso#95885") + 0.1);
               }
               else
               {
                  set("aso#95885",10);
               }
            }
            else if(eval("aso#95885") > 0)
            {
               set("aso#95885",eval("aso#95885") - 0.2);
            }
            else
            {
               set("aso#95885",0);
               this.end._x = _root["aso#56196"].player0._x;
               this.end._y = _root["aso#56196"].player0._y;
            }
            way += eval("aso#95885");
            if(_root["aso#56196"].player0["aso#44218"]._currentframe != 7)
            {
               _root["aso#56196"].player0["aso#44218"].gotoAndStop(7);
            }
            _root["aso#56196"].backgroundd._x -= Math.round(eval("aso#95885"));
            if(_root["aso#56196"].backgroundd._x < bgstartx - 509)
            {
               _root["aso#56196"].backgroundd._x += 509;
            }
            if(_root["aso#56196"].player0["aso#12881"] > 0)
            {
               _root["aso#56196"].player0._x = _root["aso#56196"].jeep._x - 6;
               _root["aso#56196"].player0._y = _root["aso#56196"].jeep._y + 50;
               _root["aso#56196"].player0["aso#38229"] = eval("aso#95885");
               _root["aso#56196"].player0["aso#75555"] = 0;
               _root["aso#56196"].jeep.rl._rotation = _root["aso#56196"].player0["aso#44218"]._rotation / 100 * _root["aso#56196"].player0._xscale;
               _root["aso#56196"].jeep.rl._xscale = _root["aso#56196"].player0._xscale;
            }
            else
            {
               _root["aso#56196"].player0._alpha = 100;
            }
            _root["aso#56196"].jeep.w1._rotation += eval("aso#95885") * 1.6;
            _root["aso#56196"].jeep.w2._rotation += eval("aso#95885") * 1.6;
            _root["aso#56196"].jeep.w1._y = 18.1 + Math.random();
            _root["aso#56196"].jeep.w2._y = 18.1 + Math.random();
            _root["aso#56196"].jeep.carbody._y = -34.3 - Math.random();
            set("aso#87533",0);
            while(eval("aso#87533") < this.drones)
            {
               if(_root["aso#56196"]["dr" + eval("aso#87533")].turnon)
               {
                  if(_root["aso#56196"]["dr" + eval("aso#87533")]["aso#12881"] > 0)
                  {
                     _root["aso#63577"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] *= 0.9;
                     _root["aso#69566"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] *= 0.9;
                     if(_root["aso#32240"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] > 550)
                     {
                        _root["aso#63577"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] -= _root["aso#57167"] * 6;
                     }
                     if(_root["aso#32240"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] > 650)
                     {
                        _root["aso#63577"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] -= _root["aso#57167"] * 6;
                     }
                     if(_root["aso#50207"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] < 0)
                     {
                        _root["aso#69566"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] += 3;
                     }
                     if(_root["aso#50207"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] > 800)
                     {
                        _root["aso#69566"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] -= 3;
                     }
                     set("aso#03687",Math.atan2(_root["aso#56196"]["dr" + eval("aso#87533")]._x - _root["aso#56196"].player0._x,_root["aso#56196"]["dr" + eval("aso#87533")]._y - _root["aso#56196"].player0._y));
                     _root["aso#69566"][_root["aso#56196"]["dr" + eval("aso#87533")].p2] -= Math.sin(eval("aso#03687")) * 5;
                     _root["aso#63577"][_root["aso#56196"]["dr" + eval("aso#87533")].p2] -= Math.cos(eval("aso#03687")) * 5;
                     _root["aso#69566"][_root["aso#56196"]["dr" + eval("aso#87533")].p1] += Math.sin(eval("aso#03687")) * 5;
                     _root["aso#63577"][_root["aso#56196"]["dr" + eval("aso#87533")].p1] += Math.cos(eval("aso#03687")) * 5;
                     if(_root["aso#50207"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] > 0)
                     {
                        if(_root["aso#50207"][_root["aso#56196"]["dr" + eval("aso#87533")].p0] < 800)
                        {
                           set("aso#79731",(- _root["aso#56196"]["dr" + eval("aso#87533")]._rotation) / 180 * 3.141592653589793);
                           set("aso#21654",Math.sin(eval("aso#79731")) * 10);
                           set("aso#84328",Math.cos(eval("aso#79731")) * 10);
                           if(Math.random() > 0.9)
                           {
                              _root["aso#56196"]["dr" + eval("aso#87533")].gotoAndPlay(2);
                              _root["aso#41984"](_root["aso#56196"]["dr" + eval("aso#87533")]._x + eval("aso#84328"),_root["aso#56196"]["dr" + eval("aso#87533")]._y + eval("aso#21654"),2,1,eval("aso#21654"),eval("aso#84328"));
                              _root["aso#41984"](_root["aso#56196"]["dr" + eval("aso#87533")]._x - eval("aso#84328"),_root["aso#56196"]["dr" + eval("aso#87533")]._y - eval("aso#21654"),2,1,eval("aso#21654"),eval("aso#84328"));
                           }
                        }
                     }
                  }
               }
               eval("aso#87533")++;
            }
            pl = 0;
            while(pl < _root.pulsmax)
            {
               if(_root["aso#56196"]["pl" + pl]._visible == true)
               {
                  set("aso#81544",_root["aso#56196"]["pl" + pl]);
                  eval("aso#81544")._x -= eval("aso#95885");
                  if(_root["aso#56196"].jeep.hitTest(eval("aso#81544")._x + _root["aso#56196"]._x,eval("aso#81544")._y + _root["aso#56196"]._y,true))
                  {
                     if(eval("aso#81544")["aso#99090"] != 0)
                     {
                        _root["aso#76947"](eval("aso#81544")._x,eval("aso#81544")._y,0);
                        _root["aso#76947"](eval("aso#81544")._x,eval("aso#81544")._y,11);
                        _root["aso#56196"]["pl" + pl]._visible = false;
                        _root["aso#56196"].player0["aso#12881"] -= 10 * eval("aso#81544")["aso#08284"];
                     }
                  }
                  set("aso#87533",0);
                  while(eval("aso#87533") < this.drones)
                  {
                     if(_root["aso#56196"]["dr" + eval("aso#87533")].turnon)
                     {
                        if(_root["aso#56196"]["dr" + eval("aso#87533")]["aso#12881"] > 0)
                        {
                           if(eval("aso#81544")["aso#99090"] == 0)
                           {
                              if(_root["aso#56196"]["dr" + eval("aso#87533")].hitTest(eval("aso#81544")))
                              {
                                 _root["aso#56196"]["dr" + eval("aso#87533")]["aso#12881"] -= 20 * eval("aso#81544")["aso#08284"];
                                 _root["aso#76947"](eval("aso#81544")._x,eval("aso#81544")._y,11);
                                 _root["aso#76947"](eval("aso#81544")._x,eval("aso#81544")._y,0);
                                 _root["aso#56196"]["pl" + pl]._visible = false;
                                 a = Math.round(Math.random() * 4);
                                 _root["aso#69566"][_root["aso#56196"]["dr" + eval("aso#87533")]["p" + a]] += eval("aso#81544")["aso#21654"] * eval("aso#81544")["aso#08284"];
                                 _root["aso#63577"][_root["aso#56196"]["dr" + eval("aso#87533")]["p" + a]] += eval("aso#81544")["aso#84328"] * eval("aso#81544")["aso#08284"];
                                 if(_root["aso#56196"]["dr" + eval("aso#87533")]["aso#12881"] <= 0)
                                 {
                                    _root.stat_kills++;
                                    _root["aso#56196"]["dr" + eval("aso#87533")].gotoAndPlay(4);
                                    this.ActivateDrone();
                                 }
                              }
                           }
                        }
                     }
                     eval("aso#87533")++;
                  }
               }
               pl++;
            }
            set("aso#87533",1);
            while(eval("aso#87533") < _root.playerstot)
            {
               if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] == true)
               {
                  if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] > 0)
                  {
                     _root["aso#56196"]["player" + eval("aso#87533")]._x -= eval("aso#95885");
                     if(_root["aso#56196"]["player" + eval("aso#87533")].body.hitTest(_root["aso#56196"].jeep.carbody))
                     {
                        _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = eval("aso#95885");
                        _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = -1;
                        _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"fall");
                        _root["aso#17057"](_root["aso#56196"]["player" + eval("aso#87533")]._x - 20 + Math.random() * 40,_root["aso#56196"]["player" + eval("aso#87533")]._y - Math.random() * 80,_root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"],"fall");
                        _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
                        if(_root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] <= 100)
                        {
                           _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = -100;
                        }
                        else
                        {
                           _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] -= 100;
                           _root["aso#56196"]["player" + eval("aso#87533")].gotoAndPlay("hurt");
                        }
                     }
                  }
               }
               eval("aso#87533")++;
            }
            set("aso#33211",0);
            while(eval("aso#33211") < _root.maxef)
            {
               _root["aso#56196"]["p" + eval("aso#33211")]._x -= eval("aso#95885");
               eval("aso#33211")++;
            }
            a = 0;
            while(a < _root["aso#54383"])
            {
               if(_root["aso#45610"][a] == true || _root["aso#45610"][a] == false)
               {
                  _root["aso#50207"][a] -= eval("aso#95885");
               }
               a++;
            }
            set("aso#06892",0);
            while(eval("aso#06892") < _root["aso#69145"])
            {
               if(_root["aso#50207"][_root["aso#39621"][eval("aso#06892")]] > -900)
               {
                  _root["aso#13852"][eval("aso#06892")] = true;
                  _root["aso#79310"][eval("aso#06892")] = 0;
               }
               eval("aso#06892")++;
            }
         }
      }
   };
}
