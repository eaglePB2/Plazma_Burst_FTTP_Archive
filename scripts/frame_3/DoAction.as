function Dist2D(p1x, p1y, p2x, p2y)
{
   return Math.sqrt(Math.pow(p1x - p2x,2) + Math.pow(p1y - p2y,2));
}
function Effect(x, y, typ, pntox, pntoy)
{
   if(pntox == undefined)
   {
      pntox = 0;
   }
   if(pntoy == undefined)
   {
      pntoy = 0;
   }
   tr = 1;
   if(typ == 0)
   {
      tr = 1;
   }
   if(typ == 1)
   {
      tr = 3;
   }
   if(typ == 2)
   {
      tr = 10;
   }
   if(typ == 3)
   {
      tr = 1;
   }
   if(typ == 4)
   {
      tr = 2;
   }
   if(typ == 5)
   {
      tr = 3;
   }
   if(typ == 6)
   {
      tr = 1;
   }
   if(typ == 7)
   {
      tr = 2;
   }
   if(typ == 1 || typ == 2)
   {
      tr *= bloodlevel;
   }
   ti = 0;
   while(ti < tr)
   {
      if(typ == 0)
      {
         duplicateMovieClip(_root.game.iskra,"p" + nextef,16384 + (nextef + 200));
      }
      if(typ == 1 || typ == 2)
      {
         duplicateMovieClip(_root.game.blood,"p" + nextef,16384 + (nextef + 200));
      }
      if(typ == 3)
      {
         duplicateMovieClip(_root.game.gilza,"p" + nextef,16384 + (nextef + 200));
      }
      if(typ == 4)
      {
         duplicateMovieClip(_root.game.gilza2,"p" + nextef,16384 + (nextef + 200));
      }
      if(typ == 5)
      {
         duplicateMovieClip(_root.game.bloodm,"p" + nextef,16384 + (nextef + 200));
      }
      if(typ == 6)
      {
         duplicateMovieClip(_root.game.smoke,"p" + nextef,16384 + (nextef + 200));
      }
      if(typ == 7)
      {
         duplicateMovieClip(_root.game.rock,"p" + nextef,16384 + (nextef + 200));
      }
      if(ti == 0 || typ == 7)
      {
         _root.game["p" + nextef].gotoAndPlay(1);
      }
      else
      {
         _root.game["p" + nextef].gotoAndPlay(3 + Math.floor(Math.random() * 5));
      }
      _root.game["p" + nextef]._x = x;
      _root.game["p" + nextef]._y = y;
      _root.game["p" + nextef].tox = pntox;
      _root.game["p" + nextef].toy = pntoy;
      if(tr != 1 && typ != 7)
      {
         _root.game["p" + nextef]._x = x - 4 + Math.random() * 8;
         _root.game["p" + nextef]._y = y - 4 + Math.random() * 8;
      }
      nextef += 1;
      ti++;
   }
   if(nextef > maxef)
   {
      nextef = 0;
   }
}
function Draw()
{
   i = 0;
   while(i < mcto_tot)
   {
      if(aio[chP[mcto_ch[i]]] == true || aio[chC[mcto_ch[i]]] == true)
      {
         mcto_mc[i]._xscale = Math.abs(mcto_mc[i]._xscale) * mcto_filp[i];
         mcto_mc[i]._x = ax[chP[mcto_ch[i]]];
         mcto_mc[i]._y = ay[chP[mcto_ch[i]]];
         mcto_mc[i]._rotation = mcto_an[i] - Math.atan2(ax[chP[mcto_ch[i]]] - ax[chC[mcto_ch[i]]],ay[chP[mcto_ch[i]]] - ay[chC[mcto_ch[i]]]) / 3.141592653589793 * 180;
      }
      i++;
   }
}
function CreatePoint(x, y, sx, sy, rad)
{
   ax[atotal] = x;
   ay[atotal] = y;
   atox[atotal] = sx;
   atoy[atotal] = sy;
   aio[atotal] = true;
   if(rad != undefined)
   {
      arad[atotal] = rad;
   }
   else
   {
      arad[atotal] = 0;
   }
   atotal++;
   return atotal - 1;
}
function Connect(a, a2, type, di)
{
   chP[chtotal] = a;
   chC[chtotal] = a2;
   if(di != undefined)
   {
      chdef[chtotal] = di;
   }
   else
   {
      chdef[chtotal] = Dist2D(ax[a],ay[a],ax[a2],ay[a2]);
   }
   chdamp[chtotal] = 0.1;
   chtypa[chtotal] = type;
   chio[chtotal] = true;
   chtotal++;
   return chtotal - 1;
}
function LinkMcTo(mc, ch, pan, flip)
{
   mcto_mc[mcto_tot] = mc;
   mcto_ch[mcto_tot] = ch;
   mcto_an[mcto_tot] = pan;
   mcto_filp[mcto_tot] = flip;
   mcto_tot++;
}
function ObjectPos(mc)
{
   var _loc1_ = {x:mc._x,y:mc._y};
   mc._parent.localToGlobal(_loc1_);
   return _loc1_;
}
function ToObjectPos(pox, poy, mc)
{
   var _loc1_ = {x:pox,y:poy};
   mc._parent.globalToLocal(_loc1_);
   return _loc1_;
}
function Kill(i)
{
   _root.game["player" + i].sou.gotoAndStop(10 + Math.round(Math.random() * 2));
   if(i != 0)
   {
      _root.stat_kills++;
      if(_root.game["player" + i].say_die != undefined)
      {
         Hint2(_root.game["player" + i].say_die);
      }
   }
   if(_root.game["player" + i].char == 0)
   {
      size_body = 4;
      size_head = 7;
      size_arm = 8;
      size_subarm = 3;
      size_subleg = 4;
   }
   if(_root.game["player" + i].char == 1)
   {
      size_body = 4;
      size_head = 5;
      size_arm = 15;
      size_subarm = 10;
      size_subleg = 5;
   }
   speedx = _root.game["player" + i].tox;
   speedy = _root.game["player" + i].toy;
   p_body = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].body._x,_root.game["player" + i]._y + _root.game["player" + i].body._y,speedx * 1.2,speedy * 1.2,size_body);
   if(_root.game["player" + i].hea > -5)
   {
      p_arm1 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].arm1._x,_root.game["player" + i]._y + _root.game["player" + i].arm1._y,speedx * 1.1,speedy * 1.1,size_arm);
   }
   else
   {
      p_arm1 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].arm1._x,_root.game["player" + i]._y + _root.game["player" + i].arm1._y,speedx * 1.1 - _root.game["player" + i]._xscale / 5,speedy * 1.1 - 20,size_arm);
   }
   an1 = _root.game["player" + i].legs.upper1._rotation;
   an2 = _root.game["player" + i].legs.upper2._rotation;
   _root.game["player" + i].legs.gotoAndStop(1);
   _root.game["player" + i].legs.leg1._rotation = an1;
   _root.game["player" + i].legs.leg2._rotation = an2;
   if(_root.game["player" + i].hea > -10)
   {
      p_subleg1 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].legs.leg1._x + _root.game["player" + i].legs._x - Math.sin(_root.game["player" + i].legs.leg1._rotation / 180 * 3.141592653589793) * 35,_root.game["player" + i]._y + _root.game["player" + i].legs.leg1._y + _root.game["player" + i].legs._y + Math.cos(_root.game["player" + i].legs.leg1._rotation / 180 * 3.141592653589793) * (35 - size_subleg),speedx * 1.3,speedy * 1.3,size_subleg);
      p_subleg2 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].legs.leg2._x + _root.game["player" + i].legs._x - Math.sin(_root.game["player" + i].legs.leg2._rotation / 180 * 3.141592653589793) * 35,_root.game["player" + i]._y + _root.game["player" + i].legs.leg2._y + _root.game["player" + i].legs._y + Math.cos(_root.game["player" + i].legs.leg2._rotation / 180 * 3.141592653589793) * (35 - size_subleg),speedx * 0.8,speedy * 0.8,size_subleg);
   }
   else
   {
      p_subleg1 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].legs.leg1._x + _root.game["player" + i].legs._x - Math.sin(_root.game["player" + i].legs.leg1._rotation / 180 * 3.141592653589793) * 35,_root.game["player" + i]._y + _root.game["player" + i].legs.leg1._y + _root.game["player" + i].legs._y + Math.cos(_root.game["player" + i].legs.leg1._rotation / 180 * 3.141592653589793) * (35 - size_subleg),speedx * 0.7,speedy * 0,7,size_subleg);
      p_subleg2 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].legs.leg2._x + _root.game["player" + i].legs._x - Math.sin(_root.game["player" + i].legs.leg2._rotation / 180 * 3.141592653589793) * 35,_root.game["player" + i]._y + _root.game["player" + i].legs.leg2._y + _root.game["player" + i].legs._y + Math.cos(_root.game["player" + i].legs.leg2._rotation / 180 * 3.141592653589793) * (35 - size_subleg),speedx * 0.9,speedy * 0.9,size_subleg);
   }
   _root.game["player" + i].a_stand1 = p_subleg1;
   _root.game["player" + i].a_stand2 = p_subleg2;
   _root.game["player" + i].legs._x = 0;
   _root.game["player" + i].legs._y = 0;
   p_subarm1 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].arm1._x - Math.sin(_root.game["player" + i].arm1._rotation / 180 * 3.141592653589793) * 26,_root.game["player" + i]._y + _root.game["player" + i].arm1._y + Math.cos(_root.game["player" + i].arm1._rotation / 180 * 3.141592653589793) * 26,speedx * 1.4,speedy * 1.4,size_subarm);
   p_subarm2 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].arm2._x - Math.sin(_root.game["player" + i].arm2._rotation / 180 * 3.141592653589793) * 26,_root.game["player" + i]._y + _root.game["player" + i].arm2._y + Math.cos(_root.game["player" + i].arm2._rotation / 180 * 3.141592653589793) * 26,speedx,speedy,size_subarm);
   p_head = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].head._x,_root.game["player" + i]._y + _root.game["player" + i].head._y,speedx,speedy,size_head);
   _root.game["player" + i].a_stand3 = p_head;
   if(_root.game["player" + i].hea > -10)
   {
      p_subhead = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].head._x + Math.sin(_root.game["player" + i].head._rotation / 180 * 3.141592653589793) * 8,_root.game["player" + i]._y + _root.game["player" + i].head._y - Math.cos(_root.game["player" + i].head._rotation / 180 * 3.141592653589793) * 8,speedx,speedy,size_head);
   }
   else
   {
      p_subhead = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].head._x + Math.sin(_root.game["player" + i].head._rotation / 180 * 3.141592653589793) * 8,_root.game["player" + i]._y + _root.game["player" + i].head._y - Math.cos(_root.game["player" + i].head._rotation / 180 * 3.141592653589793) * 8,speedx * 2,speedy * 2,size_head);
   }
   if(_root.game["player" + i].char == 0)
   {
      p_gun = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].gun._x,_root.game["player" + i]._y + _root.game["player" + i].gun._y,speedx * 0.5,speedy * 0.5);
      sc = _root.game["player" + i].gun._xscale / 100;
      p_subgun = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].gun._x - Math.sin((_root.game["player" + i].gun._rotation - 90) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch1._x * sc - Math.sin((_root.game["player" + i].gun._rotation + 180) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch1._y * sc,_root.game["player" + i]._y + _root.game["player" + i].gun._y + Math.cos((_root.game["player" + i].gun._rotation - 90) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch1._x * sc - Math.cos((_root.game["player" + i].gun._rotation + 180) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch1._y * sc,speedx * 0.5,speedy * 0.5);
      p_subgun2 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].gun._x - Math.sin((_root.game["player" + i].gun._rotation - 90) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch2._x * sc - Math.sin((_root.game["player" + i].gun._rotation + 180) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch2._y * sc,_root.game["player" + i]._y + _root.game["player" + i].gun._y + Math.cos((_root.game["player" + i].gun._rotation - 90) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch2._x * sc - Math.cos((_root.game["player" + i].gun._rotation + 180) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch2._y * sc,speedx * 0.5,speedy * 0.5);
      p_subgun3 = CreatePoint(_root.game["player" + i]._x + _root.game["player" + i].gun._x - Math.sin((_root.game["player" + i].gun._rotation - 90) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch3._x * sc - Math.sin((_root.game["player" + i].gun._rotation + 180) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch3._y * sc,_root.game["player" + i]._y + _root.game["player" + i].gun._y + Math.cos((_root.game["player" + i].gun._rotation - 90) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch3._x * sc - Math.cos((_root.game["player" + i].gun._rotation + 180) / 180 * 3.141592653589793) * _root.game["player" + i].gun.anch3._y * sc,speedx * 0.5,speedy * 0.5);
   }
   else
   {
      _root.game["player" + i].gun._visible = false;
   }
   aof[p_body] = i;
   aof[p_arm1] = i;
   aof[p_subleg1] = i;
   aof[p_subleg2] = i;
   aof[p_subarm1] = i;
   aof[p_subarm2] = i;
   if(_root.game["player" + i].char == 0)
   {
      aof[p_gun] = -1;
      aof[p_subgun] = -1;
   }
   aof[p_head] = i;
   aof[p_subhead] = i;
   Connect(p_body,p_arm1,0);
   ch_leg1 = Connect(p_body,p_subleg1,0);
   ch_leg2 = Connect(p_body,p_subleg2,0);
   ch_head = Connect(p_body,p_head,0);
   Connect(p_arm1,p_head,0);
   ch_head2 = Connect(p_head,p_subhead,0);
   ch_arm1 = Connect(p_arm1,p_subarm1,0);
   ch_arm2 = Connect(p_arm1,p_subarm2,0);
   Connect(p_subleg2,p_subleg1,2,40);
   Connect(p_subleg2,p_subleg1,1,5);
   Connect(p_subarm2,p_subarm1,1,5);
   if(_root.game["player" + i].char == 0)
   {
      ch_gun = Connect(p_gun,p_subgun,0);
      Connect(p_subgun,p_subgun2,0);
      Connect(p_subgun,p_subgun3,0);
      Connect(p_subgun2,p_subgun3,0);
      Connect(p_gun,p_subgun2,0);
      Connect(p_gun,p_subgun3,0);
   }
   Connect(p_arm1,p_subleg2,1,50);
   Connect(p_arm1,p_subleg1,1,50);
   Connect(p_body,p_subhead,1,35);
   if(_root.game["player" + i].char == 0)
   {
      Connect(p_subarm1,p_gun,3);
      Connect(p_subarm2,p_gun,3);
   }
   flip = _root.game["player" + i]._xscale / 100;
   if(flip < 0)
   {
      ax[p_body] -= _root.game["player" + i]._x;
      ax[p_body] *= -1;
      ax[p_body] += _root.game["player" + i]._x;
      ax[p_arm1] -= _root.game["player" + i]._x;
      ax[p_arm1] *= -1;
      ax[p_arm1] += _root.game["player" + i]._x;
      ax[p_subleg1] -= _root.game["player" + i]._x;
      ax[p_subleg1] *= -1;
      ax[p_subleg1] += _root.game["player" + i]._x;
      ax[p_subleg2] -= _root.game["player" + i]._x;
      ax[p_subleg2] *= -1;
      ax[p_subleg2] += _root.game["player" + i]._x;
      ax[p_subarm1] -= _root.game["player" + i]._x;
      ax[p_subarm1] *= -1;
      ax[p_subarm1] += _root.game["player" + i]._x;
      ax[p_subarm2] -= _root.game["player" + i]._x;
      ax[p_subarm2] *= -1;
      ax[p_subarm2] += _root.game["player" + i]._x;
      ax[p_head] -= _root.game["player" + i]._x;
      ax[p_head] *= -1;
      ax[p_head] += _root.game["player" + i]._x;
      ax[p_subhead] -= _root.game["player" + i]._x;
      ax[p_subhead] *= -1;
      ax[p_subhead] += _root.game["player" + i]._x;
      if(_root.game["player" + i].char == 0)
      {
         ax[p_gun] -= _root.game["player" + i]._x;
         ax[p_gun] *= -1;
         ax[p_gun] += _root.game["player" + i]._x;
         ax[p_subgun] -= _root.game["player" + i]._x;
         ax[p_subgun] *= -1;
         ax[p_subgun] += _root.game["player" + i]._x;
         ax[p_subgun2] -= _root.game["player" + i]._x;
         ax[p_subgun2] *= -1;
         ax[p_subgun2] += _root.game["player" + i]._x;
         ax[p_subgun3] -= _root.game["player" + i]._x;
         ax[p_subgun3] *= -1;
         ax[p_subgun3] += _root.game["player" + i]._x;
      }
   }
   _root.game["player" + i]._x = 0;
   _root.game["player" + i]._y = 0;
   LinkMcTo(_root.game["player" + i].body,ch_head,0,flip);
   LinkMcTo(_root.game["player" + i].legs.toe,ch_head,0,flip);
   LinkMcTo(_root.game["player" + i].legs.leg1,ch_leg1,180,flip);
   LinkMcTo(_root.game["player" + i].legs.leg2,ch_leg2,180,flip);
   LinkMcTo(_root.game["player" + i].arm1,ch_arm1,180,flip);
   LinkMcTo(_root.game["player" + i].arm2,ch_arm2,180,flip);
   LinkMcTo(_root.game["player" + i].head,ch_head2,0,flip);
   if(_root.game["player" + i].char == 0)
   {
      if(flip > 0)
      {
         LinkMcTo(_root.game["player" + i].gun,ch_gun,-90,flip);
      }
      else
      {
         LinkMcTo(_root.game["player" + i].gun,ch_gun,90,flip);
      }
   }
   _root.game["player" + i]._xscale = 100;
}
function Fire(px, py, mast, power, spx, spy)
{
   ok = true;
   ip = 0;
   while(ip < pulstot && ok)
   {
      if(_root.game["pl" + ip]._visible == false)
      {
         ok = false;
         ini = ip;
      }
      ip++;
   }
   if(ok)
   {
      ini = pulstot;
   }
   duplicateMovieClip(_root.game.plazma,"pl" + ini,16384 + (-100 + ini));
   _root.game["pl" + ini].life = 0;
   _root.game["pl" + ini]._x = px + spx;
   _root.game["pl" + ini]._y = py + spy;
   _root.game["pl" + ini].power = power;
   _root.game["pl" + ini].spx = spx;
   _root.game["pl" + ini].spy = spy;
   _root.game["pl" + ini].master = mast;
   _root.game["pl" + ini].gotoAndStop(_root.game["player" + mast].gun._currentframe);
   _root.game["pl" + ini]._rotation = Math.atan2(spy,spx) / 3.141592653589793 * 180;
   if(ok)
   {
      pulstot++;
      if(pulstot >= pulsmax)
      {
         pulstot = 0;
      }
   }
}
function HTrace(x1, y1, x2, y2)
{
   ok = true;
   an1 = - Math.atan2(x1 - x2,y1 - y2) - 1.5707963267948966;
   tracex = Math.cos(an1) * 10;
   tracey = Math.sin(an1) * 10;
   tracx = x1;
   tracy = y1;
   dst = Math.floor(Dist2D(x1,y1,x2,y2) / 10);
   z = 0;
   while(z < dst && ok == true)
   {
      tracx += tracex;
      tracy += tracey;
      if(_root.game.colmap.hitTest(tracx + _root.game._x,tracy + _root.game._y,true))
      {
         ok = false;
      }
      z++;
   }
   return ok;
}
function finish()
{
   if(_root.game.player0.hea > 0)
   {
      _root.gotoAndStop(4);
   }
}
function Stuk(hor, ver, a)
{
   hor = Math.abs(hor) * 0.5;
   ver = Math.abs(ver) * 0.5;
   if(hor > ver + 2)
   {
      _root.game["player" + aof[a]].sou.gotoAndStop(9);
   }
   else
   {
      if(ver > 2)
      {
         if(ver <= 3)
         {
            _root.game["player" + aof[a]].sou.gotoAndStop(7);
         }
      }
      if(ver > 3)
      {
         if(ver <= 4)
         {
            _root.game["player" + aof[a]].sou.gotoAndStop(6);
         }
      }
      if(ver > 4)
      {
         _root.game["player" + aof[a]].sou.gotoAndStop(8);
      }
   }
}
function Hint(mess)
{
   hinttim = mess.length * 2 + 10;
   _root.hint.htmlText = "Hint: " + mess;
}
function Hint2(mess)
{
   hinttim = mess.length * 2 + 10;
   _root.hint.htmlText = mess;
}
_root.money._visible = false;
_root.frm = 2;
_root.stop();
_root.game.gotoAndStop(_root.currentlevel);
_root.stat_kills = 0;
_root.stat_headshots = 0;
_root.stat_shots = 0;
gravity = 1;
grenades = 0;
sitmax = 8;
ax = new Array();
ay = new Array();
atox = new Array();
atoy = new Array();
aio = new Array();
aof = new Array();
arad = new Array();
screenX = 800;
screenY = 400;
playerhmax = 200;
hscreenX = 400;
hscreenY = 200;
activitytim = 0;
fire = false;
hinttim = 0;
gtotal = 0;
chtypa = new Array();
chP = new Array();
chC = new Array();
chdef = new Array();
chdamp = new Array();
chio = new Array();
chtsilp = new Array();
bounce = 0.5;
friction = 0.4;
var mcto_ch = new Array();
var mcto_mc = new Array();
var mcto_an = new Array();
var mcto_filp = new Array();
var mcto_tot = 0;
_root.game.blood._visible = false;
_root.game.bloodm._visible = false;
_root.game.iskra._visible = false;
_root.game.blood.gotoAndStop(1);
_root.game.bloodm.gotoAndStop(1);
_root.game.iskra.gotoAndStop(1);
_root.game.men._visible = false;
_root.game.enemy._visible = false;
_root.game.end._visible = false;
_root.game.gilza._visible = false;
_root.game.gilza2._visible = false;
_root.game.gilza.disabled = true;
_root.game.gilza2.disabled = true;
_root.game.smoke._visible = false;
_root.game.rock._visible = false;
boxestotal = 0;
barrelstotal = 0;
heatotal = 0;
b = 0;
while(b < 100)
{
   if(_root.game.colmap["box" + b])
   {
      boxestotal += 1;
   }
   else
   {
      b = 100;
   }
   b++;
}
b = 0;
while(b < 100)
{
   if(_root.game["barrel" + b])
   {
      barrelstotal += 1;
   }
   else
   {
      b = 100;
   }
   b++;
}
b = 0;
while(b < 100)
{
   if(_root.game["medikit" + b])
   {
      heatotal += 1;
   }
   else
   {
      b = 100;
   }
   b++;
}
playerstot = 0;
monsterstot = 0;
i = 0;
while(i < 100)
{
   if(_root.game["start" + i])
   {
      playerstot += 1;
      _root.game["start" + i]._visible = false;
   }
   else
   {
      i = 100;
   }
   i++;
}
i = 0;
while(i < 100)
{
   if(_root.game["mon" + i])
   {
      monsterstot += 1;
      _root.game["mon" + i]._visible = false;
   }
   else
   {
      i = 100;
   }
   i++;
}
nextef = 0;
maxef = 128;
bloodlevel = 2;
atotal = 0;
chtotal = 0;
i = 0;
while(i < playerstot)
{
   if(i == 0 && monstermode)
   {
      duplicateMovieClip(_root.game.enemy,"player" + i,16384 + i);
   }
   else
   {
      duplicateMovieClip(_root.game.men,"player" + i,16384 + i);
   }
   _root.game["player" + i].filters = _root.game.men.filters;
   _root.game["player" + i]._x = _root.game["start" + i]._x;
   _root.game["player" + i]._y = _root.game["start" + i]._y;
   _root.game["player" + i].getdown = false;
   if(i == 0)
   {
      _root.game["player" + i].getdown = true;
   }
   _root.game["player" + i].opentop = false;
   _root.game["player" + i].gun.gotoAndStop(1);
   if(i == 0)
   {
      _root.game["player" + i].hea = playerhmax;
   }
   else
   {
      _root.game["player" + i].hea = 100;
   }
   _root.game["player" + i].sit = 0;
   _root.game["player" + i].tox = 0;
   _root.game["player" + i].toy = 0;
   _root.game["player" + i].dead = false;
   _root.game["player" + i].active = false;
   _root.game["player" + i].gotoAndPlay(2);
   _root.game["player" + i]._visible = false;
   if(i == 0)
   {
      _root.game["player" + i].legtype = 4;
   }
   else
   {
      _root.game["player" + i].legtype = 1;
   }
   if(i == 0)
   {
      _root.game["player" + i].command = 0;
   }
   else
   {
      _root.game["player" + i].command = 1;
   }
   _root.game["player" + i].char = 0;
   _root.game["player" + i].head.gotoAndStop(_root.game["player" + i].command + 1);
   _root.game["player" + i].body.gotoAndStop(_root.game["player" + i].command + 1);
   _root.game["player" + i].arm1.gotoAndStop(_root.game["player" + i].command + 1);
   _root.game["player" + i].arm2.gotoAndStop(_root.game["player" + i].command + 1);
   _root.game["player" + i].hunt = -1;
   if(i == 0 && monstermode)
   {
      _root.game["player" + i].command = 2;
      _root.game["player" + i].char = 1;
      _root.game["player" + i].gotoAndPlay(2);
      _root.game["player" + i].head.gotoAndStop(1);
      _root.game["player" + i].body.gotoAndStop(1);
      _root.game["player" + i].arm1.gotoAndStop(1);
      _root.game["player" + i].arm2.gotoAndStop(1);
      _root.game["player" + i].gun.gotoAndStop(10);
   }
   _root.game["start" + i].unloadMovie();
   i++;
}
i = playerstot;
while(i < playerstot + monsterstot)
{
   duplicateMovieClip(_root.game.enemy,"player" + i,16384 + i);
   _root.game["player" + i].filters = _root.game.men.filters;
   _root.game["player" + i]._x = _root.game["mon" + (i - playerstot)]._x;
   _root.game["player" + i]._y = _root.game["mon" + (i - playerstot)]._y;
   _root.game["player" + i].hea = 300;
   _root.game["player" + i].expir = 1;
   _root.game["player" + i].sit = 0;
   _root.game["player" + i].tox = 0;
   _root.game["player" + i].toy = 0;
   _root.game["player" + i].dead = false;
   _root.game["player" + i].active = false;
   _root.game["player" + i].gotoAndPlay(2);
   _root.game["player" + i].gun.gotoAndStop(10);
   _root.game["player" + i]._visible = false;
   _root.game["player" + i].opentop = false;
   _root.game["player" + i].command = 2;
   _root.game["player" + i].char = 1;
   _root.game["player" + i].legtype = 2;
   _root.game["player" + i].head.gotoAndStop(1);
   _root.game["player" + i].body.gotoAndStop(1);
   _root.game["player" + i].arm1.gotoAndStop(1);
   _root.game["player" + i].arm2.gotoAndStop(1);
   _root.game["player" + i].hunt = -1;
   _root.game["start" + i].unloadMovie();
   i++;
}
playerstot += monsterstot;
_root.game.plazma._visible = false;
pulstot = 0;
pulsmax = 32;
_root.glow._visible = false;
_root.glow._alpha = 0;
_root.game._x = - _root.game.player0.body._x - _root.game.player0._x + hscreenX;
_root.game._y = - _root.game.player0.body._y - _root.game.player0._y + hscreenY;
pspeed = 6;
_root.onEnterFrame = function()
{
   if(_root.frm == 2)
   {
   }
   smestx = hscreenX - _xmouse;
   smesty = hscreenY - _ymouse;
   _root.game._x = Math.round((- _root.game.player0.body._x + smestx - _root.game.player0._x + hscreenX + _root.game._x * 10) / 11);
   _root.game._y = Math.round((- _root.game.player0.body._y + smesty - _root.game.player0._y + hscreenY + _root.game._y * 10) / 11);
   hinttim -= 1;
   if(hinttim < 0)
   {
      _root.hint.text = "";
   }
   activitytim -= 1;
   if(activitytim < -1)
   {
      activitytim = 10;
   }
   pl = 0;
   while(pl < pulsmax)
   {
      if(_root.game["pl" + pl]._visible == true)
      {
         pula = _root.game["pl" + pl];
         pula._x += pula.spx * pspeed;
         pula._y += pula.spy * pspeed;
         pula.life++;
         if(pula.life > 40)
         {
            pula._visible = false;
         }
         i2 = 0;
         while(i2 < playerstot)
         {
            if(_root.game["player" + i2].dead && pula._x < _root.game["player" + i2].body._x + 400 && pula._x > _root.game["player" + i2].body._x - 400 && pula._y < _root.game["player" + i2].body._y + 400 && pula._y > _root.game["player" + i2].body._y - 400 || !_root.game["player" + i2].dead && pula._x < _root.game["player" + i2]._x + 200 && pula._x > _root.game["player" + i2]._x - 200 && pula._y < _root.game["player" + i2]._y + 100 && pula._y > _root.game["player" + i2]._y - 300)
            {
               if(_root.game["player" + i2].hea <= 0 || _root.game["player" + pula.master].command == _root.game["player" + i2].command && _root.game["player" + i2].command != 0 || _root.game["player" + pula.master].command != _root.game["player" + i2].command)
               {
                  if(pula.master != i2)
                  {
                     step = pspeed - 1;
                     while(step >= 0)
                     {
                        if(_root.game["player" + i2].hitTest(pula._x - pula.spx * step + _root.game._x,pula._y - pula.spy * step + _root.game._y,true))
                        {
                           if(pula.power >= 0.2)
                           {
                              type = 1;
                              if(_root.game["player" + i2].hea <= 0 && _root.game["player" + i2].dead)
                              {
                                 mindis = 0;
                                 mini = -1;
                                 a = 0;
                                 while(a < atotal)
                                 {
                                    dis = Dist2D(ax[a],ay[a],pula._x,pula._y);
                                    if(dis < mindis || mini == -1)
                                    {
                                       mindis = dis;
                                       mini = a;
                                    }
                                    a++;
                                 }
                                 if(mindis < 100)
                                 {
                                    atox[mini] += pula.spx * pula.power;
                                    atoy[mini] += pula.spy * pula.power;
                                    aio[mini] = true;
                                 }
                              }
                              if(_root.game["player" + i2].head.hitTest(pula._x - pula.spx * step + _root.game._x,pula._y - pula.spy * step + _root.game._y,true))
                              {
                                 if(pula.master == 0)
                                 {
                                    if(_root.game["player" + i2].hea > 0)
                                    {
                                       Hint2("Headshot!");
                                       _root.stat_headshots += 1;
                                    }
                                 }
                                 if(_root.game["player" + i2].opentop)
                                 {
                                    _root.game["player" + i2].hea -= 200 * pula.power;
                                 }
                                 else
                                 {
                                    _root.game["player" + i2].hea -= 70 * pula.power;
                                 }
                                 type = 2;
                              }
                              else if(_root.game["player" + i2].body.hitTest(pula._x - pula.spx * step + _root.game._x,pula._y - pula.spy * step + _root.game._y,true))
                              {
                                 _root.game["player" + i2].hea -= 30 * pula.power;
                              }
                              else if(_root.game["player" + i2].arm1.hitTest(pula._x - pula.spx * step + _root.game._x,pula._y - pula.spy * step + _root.game._y,true) || _root.game["player" + i2].arm2.hitTest(pula._x - pula.spx * step + _root.game._x,pula._y - pula.spy * step + _root.game._y,true))
                              {
                                 _root.game["player" + i2].hea -= 30 * pula.power;
                              }
                              else if(_root.game["player" + i2].legs.hitTest(pula._x - pula.spx * step + _root.game._x,pula._y - pula.spy * step + _root.game._y,true))
                              {
                                 _root.game["player" + i2].hea -= 40 * pula.power;
                              }
                              else if(_root.game["player" + i2].gun.hitTest(pula._x - pula.spx * step + _root.game._x,pula._y - pula.spy * step + _root.game._y,true))
                              {
                                 type = 0;
                              }
                              if(_root.game["player" + i2].char == 1)
                              {
                                 type = 5;
                              }
                              _root.game["player" + i2].tnoise += 10 * pula.power;
                              Effect(pula._x - pula.spx * step,pula._y - pula.spy * step,type,pula.spx * pula.power * 3,pula.spy * pula.power * 3);
                              if(_root.game["player" + i2].hea > 0)
                              {
                                 if(type != 0)
                                 {
                                    _root.game["player" + i2].gotoAndPlay("hurt");
                                 }
                                 if(_root.game["player" + i2].command != 0 || _root.game["player" + pula.master].command != 0)
                                 {
                                    _root.game["player" + i2].hunt = pula.master;
                                 }
                                 _root.game["player" + i2].active = true;
                              }
                              else if(!_root.game["player" + i2].dead)
                              {
                                 pula._x -= pula.spx * step;
                                 pula._y -= pula.spy * step;
                              }
                              if(_root.game["player" + i2].hea > 0)
                              {
                                 i3 = 0;
                                 while(i3 < playerstot)
                                 {
                                    if(i2 != i3 && i3 != pula.master)
                                    {
                                       if(_root.game["player" + i2].command == _root.game["player" + i3].command)
                                       {
                                          if(_root.game["player" + i3].hea > 0)
                                          {
                                             if(_root.game["player" + i3].active == true)
                                             {
                                                if(Math.abs(_root.game["player" + i2]._x - _root.game["player" + i3]._x) < hscreenX)
                                                {
                                                   if(Math.abs(_root.game["player" + i2]._y - _root.game["player" + i3]._y) < hscreenY)
                                                   {
                                                      _root.game["player" + i3].hunt = pula.master;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    i3++;
                                 }
                              }
                              _root.game["player" + i2].tox += pula.spx * 0.5 * pula.power;
                              _root.game["player" + i2].toy += pula.spy * 0.5 * pula.power;
                           }
                           else
                           {
                              pula._visible = false;
                           }
                           pula.power -= 0.5;
                           if(pula.power < 0.2)
                           {
                              pula._visible = false;
                           }
                        }
                        step--;
                     }
                  }
               }
            }
            i2++;
         }
         if(_root.game.TestShot(pula._x,pula._y))
         {
            Effect(pula._x,pula._y,0);
            pula._visible = false;
         }
         if(_root.game.colmap.hitTest(pula._x + _root.game._x,pula._y + _root.game._y,true))
         {
            Effect(pula._x,pula._y,0);
            pula.power -= 1;
            if(pula.power < 0.2)
            {
               pula._visible = false;
            }
         }
         if(pula._y > 1000)
         {
            Effect(pula._x,pula._y,0);
            pula._visible = false;
         }
         b = 0;
         while(b < barrelstotal)
         {
            if(_root.game["barrel" + b]._currentframe < 4)
            {
               if(_root.game["barrel" + b].hitTest(pula))
               {
                  Effect(pula._x,pula._y,0);
                  hur = Math.floor(pula.power * 2);
                  if(_root.game["barrel" + b]._currentframe + hur > 3)
                  {
                     _root.game["barrel" + b].gotoAndPlay(4);
                  }
                  else
                  {
                     _root.game["barrel" + b].gotoAndStop(_root.game["barrel" + b]._currentframe + hur);
                  }
                  pula.power -= 0.5;
                  if(pula.power < 0.2)
                  {
                     pula._visible = false;
                  }
               }
            }
            b++;
         }
      }
      pl++;
   }
   _root.playerhealth.text = Math.max(Math.round(_root.game.player0.hea / playerhmax * 100),0);
   _root.playergr.text = grenades;
   if(_root.game.player0.hea > 0)
   {
      if(_root.game.player0.hitTest(_root.game.end))
      {
         finish();
      }
      if(_root.game.player0.hea < playerhmax)
      {
         b = 0;
         while(b < heatotal)
         {
            if(_root.game["medikit" + b]._currentframe == 1)
            {
               if(_root.game.player0.hitTest(_root.game["medikit" + b]))
               {
                  _root.game["medikit" + b].gotoAndPlay(2);
                  _root.game.player0.hea = Math.min(playerhmax,_root.game.player0.hea + 50);
               }
            }
            b++;
         }
      }
   }
   else
   {
      _root.glow._visible = true;
      _root.glow._alpha += 1;
      if(_root.glow._alpha > 100)
      {
         _root.glow._visible = false;
         _root.gotoAndStop(5);
      }
   }
   i = 0;
   while(i < playerstot)
   {
      if(_root.game["player" + i].hea > 0)
      {
         if(_root.game["player" + i].active == true)
         {
            an = _root.game["player" + i].body._rotation / 180 * 3.141592653589793;
            an2 = Math.atan2(_root.game["player" + i].body.headbone._y,_root.game["player" + i].body.headbone._x) - 1.5707963267948966;
            dis = Dist2D(_root.game["player" + i].body.headbone._x,_root.game["player" + i].body.headbone._y,0,0);
            plx = Math.sin(an + an2) * dis;
            ply = Math.cos(an + an2) * dis;
            _root.game["player" + i].head._x = _root.game["player" + i].body._x - plx;
            _root.game["player" + i].head._y = _root.game["player" + i].body._y + ply;
            an = _root.game["player" + i].body._rotation / 180 * 3.141592653589793;
            an2 = Math.atan2(_root.game["player" + i].body.armbone._y,_root.game["player" + i].body.armbone._x) - 1.5707963267948966;
            dis = Dist2D(_root.game["player" + i].body.armbone._x,_root.game["player" + i].body.armbone._y,0,0);
            plx = Math.sin(an + an2) * dis;
            ply = Math.cos(an + an2) * dis;
            _root.game["player" + i].arm1._x = _root.game["player" + i].body._x - plx;
            _root.game["player" + i].arm1._y = _root.game["player" + i].body._y + ply;
            _root.game["player" + i].arm2._x = _root.game["player" + i].body._x - plx + 1.5;
            _root.game["player" + i].arm2._y = _root.game["player" + i].body._y + ply;
            an = _root.game["player" + i].arm2._rotation / 180 * 3.141592653589793;
            an2 = Math.atan2(_root.game["player" + i].arm2.wea._y,_root.game["player" + i].arm2.wea._x) - 1.5707963267948966;
            dis = Dist2D(_root.game["player" + i].arm2.wea._x,_root.game["player" + i].arm2.wea._y,0,0);
            plx = Math.sin(an + an2) * dis;
            ply = Math.cos(an + an2) * dis;
            _root.game["player" + i].gun._x = _root.game["player" + i].arm2._x - plx;
            _root.game["player" + i].gun._y = _root.game["player" + i].arm2._y + ply;
         }
      }
      if(_root.game["player" + i].active == false)
      {
         if(_root.game["player" + i].hitTest(_root.visarea))
         {
            _root.game["player" + i].active = true;
         }
         else if(_root.game["player" + i].hunt == -1)
         {
            _root.game["player" + i].active = false;
            _root.game["player" + i]._visible = false;
         }
      }
      else
      {
         if(!_root.game["player" + i]._visible)
         {
            _root.game["player" + i]._visible = true;
         }
         if(_root.game["player" + i].hunt != -1)
         {
            if(_root.game["player" + i].say_vis != undefined)
            {
               Hint2(_root.game["player" + i].say_vis);
               _root.game["player" + i].say_vis = undefined;
            }
         }
      }
      if(_root.game["player" + i].hea > 0)
      {
         if(_root.game["player" + i].active == true)
         {
            i2 = 0;
            while(i2 < playerstot)
            {
               if(_root.game["player" + i2].active)
               {
                  if(_root.game["player" + i2].hea > 0)
                  {
                     if(i != i2)
                     {
                        if(_root.game["player" + i].command != 0 || _root.game["player" + i2].command != 0)
                        {
                           if(_root.game["player" + i]._y > _root.game["player" + i2]._y - 100)
                           {
                              if(_root.game["player" + i]._y < _root.game["player" + i2]._y + 100)
                              {
                                 if(_root.game["player" + i]._x > _root.game["player" + i2]._x - 40)
                                 {
                                    if(_root.game["player" + i]._x < _root.game["player" + i2]._x + 40)
                                    {
                                       cx = (_root.game["player" + i]._x + _root.game["player" + i2]._x) / 2;
                                       if(_root.game["player" + i]._x > _root.game["player" + i2]._x)
                                       {
                                          _root.game["player" + i]._x = cx + 20;
                                          _root.game["player" + i2]._x = cx - 20;
                                       }
                                       else
                                       {
                                          _root.game["player" + i]._x = cx - 20;
                                          _root.game["player" + i2]._x = cx + 20;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               i2++;
            }
            tarx = _root.game["player" + i]._x + _root.game["player" + i]._xscale * 3;
            tary = _root.game["player" + i]._y + _root.game["player" + i].gun._y;
            _root.game["player" + i]._x += _root.game["player" + i].tox;
            _root.game["player" + i]._y += _root.game["player" + i].toy;
            _root.game["player" + i].toy += gravity;
            if(_root.game["player" + i]._y > 1000)
            {
               _root.game["player" + i].hea = 0;
               _root.game["player" + i].getdown = true;
               if(_root.game["player" + i].char == 0)
               {
                  Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 20,1);
                  Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 20,1);
                  Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 20,1);
               }
               else
               {
                  Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 20,5);
                  Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 20,5);
                  Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 20,5);
               }
               _root.game["player" + i].gotoAndPlay("hurt");
               if(_root.game["player" + i].toy > 10)
               {
                  _root.game["player" + i].toy = 10;
               }
            }
            if(i != 0)
            {
               if(_root.game["player" + i].hunt != -1)
               {
                  tarx = _root.game["player" + _root.game["player" + i].hunt]._x;
                  tary = _root.game["player" + _root.game["player" + i].hunt]._y - 10 - Math.random() * 50;
                  di = Math.abs(tarx - _root.game["player" + i]._x);
                  if(di < 200 || _root.game["player" + i].expir == 1)
                  {
                     if(Math.random() > 0.4)
                     {
                        tary = _root.game["player" + _root.game["player" + i].hunt]._y - 70;
                     }
                     else
                     {
                        tary = _root.game["player" + _root.game["player" + i].hunt]._y - 10 - Math.random() * 50;
                     }
                  }
                  di = Dist2D(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y,tarx,tary);
                  tarx += _root.game["player" + _root.game["player" + i].hunt].tox * (di / pspeed) * 0.3;
                  tary += _root.game["player" + _root.game["player" + i].hunt].toy * (di / pspeed) * 0.3;
                  b = 0;
                  while(b < barrelstotal)
                  {
                     if(_root.game["barrel" + b]._currentframe < 4)
                     {
                        if(Dist2D(_root.game["player" + _root.game["player" + i].hunt]._x,_root.game["player" + _root.game["player" + i].hunt]._y - 40,_root.game["barrel" + b]._x,_root.game["barrel" + b]._y) < 100)
                        {
                           if(Dist2D(_root.game["player" + i]._x,_root.game["player" + i]._y - 40,_root.game["barrel" + b]._x,_root.game["barrel" + b]._y) > 150)
                           {
                              tarx = _root.game["barrel" + b]._x;
                              tary = _root.game["barrel" + b]._y;
                           }
                        }
                     }
                     b++;
                  }
                  if(_root.game["player" + _root.game["player" + i].hunt].hea <= 0)
                  {
                     if(Math.random() > 0.97)
                     {
                        _root.game["player" + i].hunt = -1;
                     }
                     else
                     {
                        tarx = _root.game["player" + _root.game["player" + i].hunt].body._x;
                        tary = _root.game["player" + _root.game["player" + i].hunt].body._y;
                     }
                  }
               }
               else if(Math.random() > 0.4 || _root.game["player" + i].expir == 1)
               {
                  if(_root.game["player" + _root.game["player" + i].hunt].command == _root.game["player" + i].command)
                  {
                     if(_root.game["player" + _root.game["player" + i].hunt].hea <= 0)
                     {
                        _root.game["player" + i].hunt = -1;
                     }
                  }
                  r = 0;
                  while(r < 10)
                  {
                     ran = Math.floor(Math.random() * playerstot);
                     if(Math.abs(_root.game["player" + ran]._x - _root.game["player" + i]._x) < screenX)
                     {
                        r = 10;
                     }
                     r++;
                  }
                  if(ran < playerstot)
                  {
                     if(Math.abs(_root.game["player" + ran]._x - _root.game["player" + i]._x) < screenX)
                     {
                        if(Math.abs(_root.game["player" + ran]._y - _root.game["player" + i]._y) < screenY)
                        {
                           if(_root.game["player" + ran].command != _root.game["player" + i].command)
                           {
                              if(_root.game["player" + ran].hea > 0)
                              {
                                 if(HTrace(_root.game["player" + i]._x,_root.game["player" + i]._y + _root.game["player" + i].head._y,_root.game["player" + ran]._x,_root.game["player" + ran]._y))
                                 {
                                    _root.game["player" + i].hunt = ran;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               tarx = _xmouse - _root.game._x;
               tary = _ymouse - _root.game._y;
            }
            stand = false;
            b = 0;
            while(b < boxestotal)
            {
               if(_root.game["player" + i]._x > _root.game.colmap["box" + b]._x - 10)
               {
                  if(_root.game["player" + i]._x < _root.game.colmap["box" + b]._x + _root.game.colmap["box" + b]._xscale + 10)
                  {
                     if(_root.game["player" + i]._y > _root.game.colmap["box" + b]._y + _root.game["player" + i].sit * sitmax)
                     {
                        if(_root.game["player" + i]._y < _root.game.colmap["box" + b]._y + _root.game.colmap["box" + b]._yscale + 82)
                        {
                           acx = (_root.game.colmap["box" + b]._x + _root.game.colmap["box" + b]._xscale / 2 - _root.game["player" + i]._x) / (_root.game.colmap["box" + b]._xscale + 20) * 100;
                           acy = (_root.game.colmap["box" + b]._y + (_root.game.colmap["box" + b]._yscale + 82) / 2 - _root.game["player" + i]._y) / (_root.game.colmap["box" + b]._yscale + 82) * 100;
                           if(_root.game["player" + i]._y < _root.game.colmap["box" + b]._y + 30)
                           {
                              acx = 1;
                              acy = 2;
                           }
                           if(Math.abs(acx) > Math.abs(acy))
                           {
                              if(Math.abs(_root.game["player" + i].tox) > 16)
                              {
                                 if(_root.game["player" + i].char == 0)
                                 {
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,1);
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,1);
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,1);
                                 }
                                 else
                                 {
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,5);
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,5);
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,5);
                                 }
                                 _root.game["player" + i].hea -= Math.abs(_root.game["player" + i].tox * 5);
                                 _root.game["player" + i].gotoAndPlay("hurt");
                              }
                              if(_root.game["player" + i].hea > 0)
                              {
                                 _root.game["player" + i].tox *= 0.5;
                                 _root.game["player" + i].toy *= 0.5;
                                 if(acx < 0)
                                 {
                                    _root.game["player" + i]._x = _root.game.colmap["box" + b]._x + _root.game.colmap["box" + b]._xscale + 11;
                                    _root.game["player" + i].tox = Math.abs(_root.game["player" + i].tox) + 0.1;
                                 }
                                 else
                                 {
                                    _root.game["player" + i]._x = _root.game.colmap["box" + b]._x - 11;
                                    _root.game["player" + i].tox = - Math.abs(_root.game["player" + i].tox) - 0.1;
                                 }
                              }
                           }
                           else
                           {
                              if(Math.abs(_root.game["player" + i].toy) > 20)
                              {
                                 if(_root.game["player" + i].char == 0)
                                 {
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,1);
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,1);
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,1);
                                 }
                                 else
                                 {
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,5);
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,5);
                                    Effect(_root.game["player" + i]._x - 20 + Math.random() * 40,_root.game["player" + i]._y - Math.random() * 90,5);
                                 }
                                 _root.game["player" + i].hea -= Math.abs(_root.game["player" + i].toy * 3);
                                 _root.game["player" + i].gotoAndPlay("hurt");
                              }
                              if(_root.game["player" + i].hea > 0)
                              {
                                 _root.game["player" + i].tox *= 0.5;
                                 if(acy < 0)
                                 {
                                    _root.game["player" + i].toy *= -0.5;
                                    _root.game["player" + i]._y = _root.game.colmap["box" + b]._y + _root.game.colmap["box" + b]._yscale + 84;
                                 }
                                 else
                                 {
                                    _root.game["player" + i].toy = 0;
                                    stand = true;
                                    _root.game["player" + i]._y = _root.game.colmap["box" + b]._y + _root.game["player" + i].sit * sitmax;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               b++;
            }
            walkok = false;
            if(activitytim < 0)
            {
               _root.game["player" + i].botaction = -1;
               if(i != 0 && _root.game["player" + i].hunt != -1)
               {
                  if(Dist2D(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y,tarx,tary) < 600)
                  {
                     if(HTrace(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y,tarx,tary))
                     {
                        _root.game["player" + i].botaction = 0;
                     }
                  }
               }
            }
            if(activitytim < 0)
            {
               if(i != 0 && _root.game["player" + i].hunt != -1)
               {
                  if(_root.game["player" + i].botaction != 0)
                  {
                     if(HTrace(200 + _root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y,tarx,tary))
                     {
                        _root.game["player" + i].botaction = 1;
                     }
                  }
                  if(_root.game["player" + i].botaction != 0)
                  {
                     if(HTrace(-200 + _root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y,tarx,tary))
                     {
                        _root.game["player" + i].botaction = 2;
                     }
                  }
                  if(_root.game["player" + i].botaction == -1)
                  {
                     if(HTrace(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y - 60,tarx,tary))
                     {
                        _root.game["player" + i].botaction = 4;
                     }
                  }
                  if(_root.game["player" + i].botaction != 0)
                  {
                     if(HTrace(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,-60 + _root.game["player" + i]._y + _root.game["player" + i].gun._y,tarx,tary))
                     {
                        _root.game["player" + i].botaction = 3;
                     }
                  }
               }
            }
            if(stand)
            {
               if(Key.isDown(65) && i == 0 || _root.game["player" + i].botaction == 2)
               {
                  _root.game["player" + i].tox -= 4 / (_root.game["player" + i].sit + 1);
                  if(_root.game["player" + i].legs._currentframe <= 60 && (_root.game["player" + i].legs._currentframe < 30 || _root.game["player" + i].legs._currentframe > 50))
                  {
                     _root.game["player" + i].legs.gotoAndPlay("walk");
                  }
               }
               if(Key.isDown(68) && i == 0 || _root.game["player" + i].botaction == 1)
               {
                  _root.game["player" + i].tox += 4 / (_root.game["player" + i].sit + 1);
                  if(_root.game["player" + i].legs._currentframe <= 60 && (_root.game["player" + i].legs._currentframe < 30 || _root.game["player" + i].legs._currentframe > 50))
                  {
                     _root.game["player" + i].legs.gotoAndPlay("walk");
                  }
               }
               if((Key.isDown(32) || Key.isDown(87)) && i == 0 || i != 0 && _root.game["player" + i].botaction == 3)
               {
                  _root.game["player" + i].toy -= 5 + gravity * 4;
               }
            }
            if(!stand)
            {
               if(Key.isDown(65) && i == 0 || i != 0 && _root.game["player" + i].botaction == 2)
               {
                  _root.game["player" + i].tox -= 0.1;
               }
               if(Key.isDown(68) && i == 0 || i != 0 && _root.game["player" + i].botaction == 1)
               {
                  _root.game["player" + i].tox += 0.1;
               }
            }
            if(_root.game["player" + i].botaction == 4 || (_root.game["player" + i].botaction == -1 || _root.game["player" + i].botaction == 0) && _root.game["player" + i].hea < 80 && _root.game["player" + i].hea > 30)
            {
               walkok = true;
            }
            if(Key.isDown(13) && i == 0)
            {
               if(grenades > 0)
               {
                  if(_root.game["player" + i]._currentframe < 21 || _root.game["player" + i]._currentframe > 25)
                  {
                     grenades -= 1;
                     _root.game["player" + i].gotoAndPlay("fire");
                     rn = Math.random();
                     duplicateMovieClip(_root.game.grenad,"gr" + gtotal,16384 + (400 + gtotal));
                     an = Math.atan2(tarx - _root.game["player" + i]._x,tary - _root.game["player" + i]._y);
                     _root.game["gr" + gtotal]._x = _root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100;
                     _root.game["gr" + gtotal]._y = _root.game["player" + i]._y + _root.game["player" + i].gun._y;
                     _root.game["gr" + gtotal].tox = Math.sin(an) * 20;
                     _root.game["gr" + gtotal].toy = Math.cos(an) * 20;
                     gtotal += 1;
                  }
               }
            }
            tosit = 0;
            if((Key.isDown(16) || Key.isDown(83)) && i == 0 || walkok && i != 0 || !_root.game.colmap.hitTest(_root.game["player" + i]._x + _root.game._x,_root.game["player" + i]._y + 10 + _root.game._y,true))
            {
               tosit = 1;
            }
            else
            {
               tosit = -1;
            }
            _root.game["player" + i].sit += tosit;
            if(_root.game["player" + i].sit > 2)
            {
               _root.game["player" + i].sit = 2;
            }
            if(_root.game["player" + i].sit < 0)
            {
               _root.game["player" + i].sit = 0;
            }
            if(_root.game["player" + i].sit == 1 && tosit == 1)
            {
               _root.game["player" + i].legs.gotoAndPlay("sitdown");
            }
            if(_root.game["player" + i].sit == 1 && tosit == -1)
            {
               _root.game["player" + i].legs.gotoAndPlay("situp");
            }
            an1 = - Math.atan2(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100 - tarx,_root.game["player" + i]._y + _root.game["player" + i].gun._y - tary) - 1.5707963267948966;
            if(Dist2D(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y,tarx,tary) < 50)
            {
               an1 = - Math.atan2(_root.game["player" + i]._x + _root.game["player" + i].arm2._x * _root.game["player" + i]._xscale / 100 - tarx,_root.game["player" + i]._y + _root.game["player" + i].arm2._y - tary) - 1.5707963267948966;
            }
            an1 += (Math.random() * _root.game["player" + i].tnoise * 2 - _root.game["player" + i].tnoise) * 0.01;
            an = an1 / 3.141592653589793 * 180;
            if(_root.game["player" + i]._x < tarx)
            {
               _root.game["player" + i]._xscale = 100;
            }
            else
            {
               _root.game["player" + i]._xscale = -100;
               an = - an + 180;
            }
            if(i == 0)
            {
               _root.playergun.gotoAndStop(_root.game["player" + i].gun._currentframe);
            }
            _root.game["player" + i].gun._rotation = an;
            if(_root.game["player" + i]._xscale > 0)
            {
               an3 = an / 2 - 90;
            }
            else
            {
               an3 = an / 2 + 90;
            }
            if(_root.game["player" + i].tnoise > 0.1 || _root.game["player" + i].tnoise < -0.1)
            {
               _root.game["player" + i].tnoise *= 0.9;
            }
            else
            {
               _root.game["player" + i].tnoise = 0;
            }
            if(_root.game["player" + i]._xscale > 0)
            {
               if(an3 < -135 && an3 >= -180)
               {
                  an3 = -135;
               }
               if(an3 > -45 || an3 < -180)
               {
                  an3 = -45;
               }
            }
            else
            {
               if(an3 > 315 || an3 < 180)
               {
                  an3 = 315;
               }
               if(an3 < 225)
               {
                  an3 = 225;
               }
            }
            _root.game["player" + i].arm1._rotation = an3 + 21;
            _root.game["player" + i].arm2._rotation = an3 + 21 + 2;
            _root.game["player" + i].head._rotation = an3 + 90;
            if(activitytim < 0)
            {
               _root.game["player" + i].lastvis = HTrace(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y,tarx,tary);
            }
            if(fire && i == 0 || i != 0 && _root.game["player" + i].hunt != -1)
            {
               if(i == 0)
               {
                  _root.stat_shots++;
               }
               if(i == 0 || i != 0 && (Math.random() > 0.9 || Math.random() > 0.7 && _root.game["player" + i].expir == 1) && _root.game["player" + i].lastvis && (Math.abs(tarx - _root.game["player" + i]._x) < screenX || _root.game["player" + i].expir == 1 && Math.abs(tarx - _root.game["player" + i]._x) < screenX * 1.5))
               {
                  if(_root.game["player" + i]._currentframe < 21 || _root.game["player" + i]._currentframe > 25)
                  {
                     if(_root.game["player" + i].gun.whea._currentframe == 1)
                     {
                        _root.game["player" + i].gun.whea.gotoAndPlay(2);
                        _root.game["player" + i].gotoAndPlay("fire");
                        if(_root.game["player" + i].gun._currentframe == 1)
                        {
                           puli = 1;
                           ef = 3;
                           noise = 7;
                        }
                        if(_root.game["player" + i].gun._currentframe == 2)
                        {
                           puli = 1;
                           ef = 3;
                           noise = 5;
                        }
                        if(_root.game["player" + i].gun._currentframe == 3)
                        {
                           puli = 2;
                           ef = 4;
                           noise = 20;
                        }
                        if(_root.game["player" + i].gun._currentframe == 5 || _root.game["player" + i].gun._currentframe == 12)
                        {
                           puli = 1;
                           ef = 3;
                           noise = 10;
                        }
                        if(_root.game["player" + i].gun._currentframe == 10)
                        {
                           puli = 2;
                           ef = 6;
                           noise = 20;
                        }
                        if(_root.game["player" + i].gun._currentframe == 11)
                        {
                           puli = 1;
                           ef = 3;
                           noise = 20;
                        }
                        if(_root.game["player" + i].gun._currentframe == 4)
                        {
                           puli = 0;
                           ef = -1;
                           if(grenades > 0 && i == 0 || i != 0)
                           {
                              noise = 30;
                              if(i == 0)
                              {
                                 grenades -= 1;
                              }
                              rn = Math.random();
                              duplicateMovieClip(_root.game.rocket,"gr" + gtotal,16384 + (400 + gtotal));
                              _root.game["gr" + gtotal]._x = _root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100;
                              _root.game["gr" + gtotal]._y = _root.game["player" + i]._y + _root.game["player" + i].gun._y;
                              _root.game["gr" + gtotal].tox = Math.cos(an1) * 10;
                              _root.game["gr" + gtotal].toy = Math.sin(an1) * 10;
                              _root.game["gr" + gtotal].master = i;
                              gtotal += 1;
                           }
                        }
                        _root.game["player" + i].tnoise += noise;
                        if(ef != -1)
                        {
                           Effect(_root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100,_root.game["player" + i]._y + _root.game["player" + i].gun._y,ef);
                        }
                        px = _root.game["player" + i]._x + _root.game["player" + i].gun._x * _root.game["player" + i]._xscale / 100;
                        py = _root.game["player" + i]._y + _root.game["player" + i].gun._y;
                        p = 0;
                        while(p < puli)
                        {
                           if(_root.game["player" + i].gun._currentframe == 1)
                           {
                              sm = -0.02 + Math.random() * 0.04;
                              power = 0.2;
                           }
                           if(_root.game["player" + i].gun._currentframe == 2)
                           {
                              sm = -0.05 + Math.random() * 0.1;
                              power = 0.5;
                           }
                           if(_root.game["player" + i].gun._currentframe == 3)
                           {
                              sm = -0.075 + Math.random() * 0.15;
                              power = 1.5;
                           }
                           if(_root.game["player" + i].gun._currentframe == 5 || _root.game["player" + i].gun._currentframe == 12)
                           {
                              sm = -0.01 + Math.random() * 0.02;
                              power = 2;
                           }
                           if(_root.game["player" + i].gun._currentframe == 10)
                           {
                              sm = -0.015 + Math.random() * 0.03;
                              power = 0.7;
                           }
                           if(_root.game["player" + i].gun._currentframe == 11)
                           {
                              sm = -0.015 + Math.random() * 0.03;
                              power = 1;
                           }
                           spx = Math.cos(an1 + sm) * 10;
                           spy = Math.sin(an1 + sm) * 10;
                           Fire(px,py,i,power,spx,spy);
                           p++;
                        }
                     }
                  }
               }
            }
         }
      }
      if(_root.game["player" + i].hea <= 0)
      {
         if(_root.game["player" + i].dead == false)
         {
            _root.game["player" + i].dead = true;
            Kill(i);
         }
      }
      if(_root.game["player" + i].active == true)
      {
         if(_root.game["player" + i].hea > 0)
         {
            _root.game["player" + i].legs.upper1.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.upper2.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.lower1.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.lower2.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.middle1.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.middle2.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.toe.gotoAndStop(_root.game["player" + i].legtype);
         }
         else
         {
            _root.game["player" + i].legs.leg1.upper.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.leg2.upper.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.leg1.lower.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.leg2.lower.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.leg1.middle.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.leg2.middle.gotoAndStop(_root.game["player" + i].legtype);
            _root.game["player" + i].legs.toe.gotoAndStop(_root.game["player" + i].legtype);
         }
      }
      i++;
   }
   a = 0;
   while(a < atotal)
   {
      if(aio[a] == true)
      {
         ax[a] += atox[a];
         ay[a] += atoy[a];
         if(ay[a] > 1000)
         {
            Stuk(atox[a],atoy[a],a);
            ay[a] = 1000;
            atox[a] *= 0.5;
            atoy[a] = (- Math.abs(atoy[a])) * 0.5;
         }
         di = Dist2D(atox[a],atoy[a],0,0);
         if(di > collision_tolerance)
         {
            atox[a] /= di * collision_tolerance;
            atoy[a] /= di * collision_tolerance;
         }
         if(di > 30)
         {
            atox[a] = atox[a] / di * 30;
            atoy[a] = atoy[a] / di * 30;
         }
         atoy[a] += gravity;
         if(arad[a] > 0)
         {
            arad[a] = 0;
         }
         if(arad[a] == 0 && _root.game.colmap.hitTest(ax[a] + _root.game._x,ay[a] + _root.game._y,true) || arad[a] > 0 && (_root.game.colmap.hitTest(ax[a] - arad[a] + _root.game._x,ay[a] + _root.game._y,true) || _root.game.colmap.hitTest(ax[a] + arad[a] + _root.game._x,ay[a] + _root.game._y,true) || _root.game.colmap.hitTest(ax[a] + _root.game._x,ay[a] - arad[a] + _root.game._y,true) || _root.game.colmap.hitTest(ax[a] + _root.game._x,ay[a] + arad[a] + _root.game._y,true)))
         {
            b = 0;
            while(b < boxestotal)
            {
               if(ax[a] > _root.game.colmap["box" + b]._x - arad[a])
               {
                  if(ax[a] < _root.game.colmap["box" + b]._x + arad[a] + _root.game.colmap["box" + b]._xscale)
                  {
                     if(ay[a] > _root.game.colmap["box" + b]._y - arad[a])
                     {
                        if(ay[a] < _root.game.colmap["box" + b]._y + arad[a] + _root.game.colmap["box" + b]._yscale)
                        {
                           minside = Math.min(_root.game.colmap["box" + b]._xscale,_root.game.colmap["box" + b]._yscale);
                           if(_root.game.colmap["box" + b]._yscale < _root.game.colmap["box" + b]._xscale)
                           {
                              ccx = Math.max(_root.game.colmap["box" + b]._x + _root.game.colmap["box" + b]._yscale / 2,Math.min(_root.game.colmap["box" + b]._x + _root.game.colmap["box" + b]._xscale - _root.game.colmap["box" + b]._yscale / 2,ax[a]));
                              ccy = _root.game.colmap["box" + b]._y + _root.game.colmap["box" + b]._yscale / 2;
                           }
                           else
                           {
                              ccy = Math.max(_root.game.colmap["box" + b]._y + _root.game.colmap["box" + b]._xscale / 2,Math.min(_root.game.colmap["box" + b]._y + _root.game.colmap["box" + b]._yscale - _root.game.colmap["box" + b]._xscale / 2,ay[a]));
                              ccx = _root.game.colmap["box" + b]._x + _root.game.colmap["box" + b]._xscale / 2;
                           }
                           acx = ccx - ax[a];
                           acy = ccy - ay[a];
                           if(Math.abs(acx) > Math.abs(acy))
                           {
                              atox[a] *= 0.5;
                              if(atoy[a] > 0)
                              {
                                 atoy[a] = Math.max(atoy[a] - friction * Math.abs(atox[a]),0);
                              }
                              else
                              {
                                 atoy[a] = Math.min(atoy[a] + friction * Math.abs(atox[a]),0);
                              }
                              Stuk(atoy[a],atox[a],a);
                              if(acx < 0)
                              {
                                 ax[a] = _root.game.colmap["box" + b]._x + arad[a] + _root.game.colmap["box" + b]._xscale;
                                 atox[a] = Math.abs(atox[a]);
                              }
                              else
                              {
                                 ax[a] = _root.game.colmap["box" + b]._x - arad[a];
                                 atox[a] = - Math.abs(atox[a]);
                              }
                           }
                           else
                           {
                              if(atox[a] > 0)
                              {
                                 atox[a] = Math.max(atox[a] - friction * Math.abs(atoy[a]),0);
                              }
                              else
                              {
                                 atox[a] = Math.min(atox[a] + friction * Math.abs(atoy[a]),0);
                              }
                              atoy[a] *= 0.5;
                              Stuk(atox[a],atoy[a],a);
                              if(acy < 0)
                              {
                                 ay[a] = _root.game.colmap["box" + b]._y + arad[a] + _root.game.colmap["box" + b]._yscale;
                                 atoy[a] = Math.abs(atoy[a]);
                              }
                              else
                              {
                                 ay[a] = _root.game.colmap["box" + b]._y - arad[a];
                                 atoy[a] = - Math.abs(atoy[a]);
                              }
                           }
                        }
                     }
                  }
               }
               b++;
            }
         }
      }
      a++;
   }
   ch = 0;
   while(ch < chtotal)
   {
      if(aio[chP[ch]] == false && aio[chC[ch]] == false)
      {
         chio[ch] = false;
      }
      else
      {
         chio[ch] = true;
      }
      if(chio[ch] == true)
      {
         els = false;
         if(Math.abs(atox[chP[ch]]) + Math.abs(atoy[chP[ch]]) + Math.abs(atox[chC[ch]]) + Math.abs(atoy[chC[ch]]) < 4)
         {
            chtsilp[ch] += 1;
            if(chtsilp[ch] > 5)
            {
               aio[chP[ch]] = false;
               aio[chC[ch]] = false;
               chio[ch] = false;
            }
         }
         else
         {
            els = true;
         }
         dis = Dist2D(ax[chP[ch]],ay[chP[ch]],ax[chC[ch]],ay[chC[ch]]);
         bounce = 0.5;
         bnc = bounce * Math.abs(dis - chdef[ch]);
         if(dis < 1)
         {
            dis = 1;
         }
         if(chtypa[ch] == 3)
         {
            if(dis > chdef[ch] + 8 || dis < chdef[ch] - 8)
            {
               chtypa[ch] = 1;
               chdef[ch] = 0;
            }
         }
         if(chtypa[ch] == 4)
         {
            if(dis > chdef[ch] + 7 || dis < chdef[ch] - 7)
            {
               chtypa[ch] = 1;
               chdef[ch] = 0;
            }
         }
         if(dis > chdef[ch] && (chtypa[ch] == 0 || chtypa[ch] == 3 || chtypa[ch] == 4 || chtypa[ch] == 2))
         {
            atox[chC[ch]] += (ax[chP[ch]] - ax[chC[ch]]) / dis * bnc;
            atoy[chC[ch]] += (ay[chP[ch]] - ay[chC[ch]]) / dis * bnc;
            atox[chP[ch]] -= (ax[chP[ch]] - ax[chC[ch]]) / dis * bnc;
            atoy[chP[ch]] -= (ay[chP[ch]] - ay[chC[ch]]) / dis * bnc;
         }
         else if(dis < chdef[ch] && (chtypa[ch] == 0 || chtypa[ch] == 3 || chtypa[ch] == 4 || chtypa[ch] == 1))
         {
            atox[chC[ch]] -= (ax[chP[ch]] - ax[chC[ch]]) / dis * bnc;
            atoy[chC[ch]] -= (ay[chP[ch]] - ay[chC[ch]]) / dis * bnc;
            atox[chP[ch]] += (ax[chP[ch]] - ax[chC[ch]]) / dis * bnc;
            atoy[chP[ch]] += (ay[chP[ch]] - ay[chC[ch]]) / dis * bnc;
         }
         else
         {
            els = false;
         }
         if(chtypa[ch] == 0 || chtypa[ch] == 3 || chtypa[ch] == 4)
         {
            tarx = (ax[chP[ch]] + ax[chC[ch]]) / 2;
            tary = (ay[chP[ch]] + ay[chC[ch]]) / 2;
            ax[chP[ch]] = tarx + (ax[chP[ch]] - tarx) * chdef[ch] / dis;
            ay[chP[ch]] = tary + (ay[chP[ch]] - tary) * chdef[ch] / dis;
            ax[chC[ch]] = tarx + (ax[chC[ch]] - tarx) * chdef[ch] / dis;
            ay[chC[ch]] = tary + (ay[chC[ch]] - tary) * chdef[ch] / dis;
         }
         if(els)
         {
            chtsilp[ch] = 0;
            aio[chP[ch]] = true;
            aio[chC[ch]] = true;
         }
      }
      ch++;
   }
   e = 0;
   while(e < maxef)
   {
      if(_root.game["p" + e])
      {
         if(_root.game["p" + e].kill == true)
         {
            _root.game["p" + e].removeMovieClip();
         }
      }
      e++;
   }
   Draw();
   if(_root.game.player0.hea != lhea)
   {
      if(lhea > 0 && _root.game.player0.hea <= 0)
      {
         ang = Math.random() * 3.141592653589793 * 2;
         _root.game._x += Math.sin(ang) * 200;
         _root.game._y += Math.cos(ang) * 200;
      }
   }
   lhea = _root.game.player0.hea;
};
someListener.onMouseDown = function()
{
   fire = true;
};
someListener.onMouseUp = function()
{
   fire = false;
};
someListener.onMouseWheel = function(delta, scrollTarget)
{
   if(delta > 0)
   {
      _root.game.player0.gun.gotoAndStop(_root.game.player0.gun._currentframe + 1);
   }
   else
   {
      _root.game.player0.gun.gotoAndStop(_root.game.player0.gun._currentframe - 1);
   }
   if(_root.game.player0.gun._currentframe > _root.wealevel)
   {
      _root.game.player0.gun.gotoAndStop(_root.wealevel);
   }
};
