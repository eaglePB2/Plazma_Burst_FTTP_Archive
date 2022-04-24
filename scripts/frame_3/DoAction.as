function stpsnds()
{
   _root.am_base.stop();
   _root.am_falkok_base.stop();
   _root.am_wind.stop();
   _root.am_base = undefined;
   _root.am_falkok_base = undefined;
   _root.am_wind = undefined;
}
function §aso#03687§(p1x, p1y, p2x, p2y)
{
   return Math.sqrt(Math.pow(p1x - p2x,2) + Math.pow(p1y - p2y,2));
}
function §aso#52991§(x, y, typ, pntox, pntoy, fir, count)
{
   if(pntox == undefined)
   {
      pntox = 0;
   }
   if(pntoy == undefined)
   {
      pntoy = 0;
   }
   if(count != undefined)
   {
      set("aso#43797",count);
   }
   else
   {
      set("aso#43797",1);
      if(typ == 0)
      {
         set("aso#43797",1);
      }
      if(typ == 1)
      {
         set("aso#43797",3);
      }
      if(typ == 2)
      {
         set("aso#43797",10);
      }
      if(typ == 3)
      {
         set("aso#43797",1);
      }
      if(typ == 4)
      {
         set("aso#43797",2);
      }
      if(typ == 5)
      {
         set("aso#43797",3);
      }
      if(typ == 6)
      {
         set("aso#43797",1);
      }
      if(typ == 7)
      {
         set("aso#43797",2);
      }
      if(typ == 8)
      {
         set("aso#43797",1);
      }
      if(typ == 9)
      {
         set("aso#43797",3);
      }
      if(typ == 10)
      {
         set("aso#43797",10);
      }
      if(typ == 11)
      {
         set("aso#43797",2);
      }
      if(typ == 1 || typ == 2 || typ == 9 || typ == 10)
      {
         set("aso#43797",eval("aso#43797") * eval("aso#46160"));
      }
   }
   ti = 0;
   while(ti < eval("aso#43797"))
   {
      if(typ == 0)
      {
         duplicateMovieClip(_root["aso#75555"].iskra,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if(typ == 1 || typ == 2 || typ == 8)
      {
         duplicateMovieClip(_root["aso#75555"].blood,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if(typ == 3)
      {
         duplicateMovieClip(_root["aso#75555"].gilza,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if(typ == 4)
      {
         duplicateMovieClip(_root["aso#75555"].gilza2,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if(typ == 5)
      {
         duplicateMovieClip(_root["aso#75555"].bloodm,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if(typ == 6)
      {
         duplicateMovieClip(_root["aso#75555"].smoke,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if(typ == 7)
      {
         duplicateMovieClip(_root["aso#75555"].rock,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if(typ == 9 || typ == 10)
      {
         duplicateMovieClip(_root["aso#75555"].bloodf,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if(typ == 11)
      {
         duplicateMovieClip(_root["aso#75555"].bloodmetal,"p" + eval("aso#60372"),16384 + (eval("aso#60372") + 200));
      }
      if((ti == 0 || typ == 7 || typ == 11) && typ != 8)
      {
         _root["aso#75555"]["p" + eval("aso#60372")].gotoAndPlay(1);
      }
      else
      {
         _root["aso#75555"]["p" + eval("aso#60372")].gotoAndPlay(3 + Math.floor(Math.random() * 5));
      }
      if(fir == false)
      {
         _root["aso#75555"]["p" + eval("aso#60372")].gotoAndPlay(3 + Math.floor(Math.random() * 5));
      }
      _root["aso#75555"]["p" + eval("aso#60372")]._x = x;
      _root["aso#75555"]["p" + eval("aso#60372")]._y = y;
      _root["aso#75555"]["p" + eval("aso#60372")]["aso#26251"] = pntox;
      _root["aso#75555"]["p" + eval("aso#60372")]["aso#94914"] = pntoy;
      if(eval("aso#43797") != 1 && eval("aso#43797") != 9 && typ != 7)
      {
         _root["aso#75555"]["p" + eval("aso#60372")]._x = x - 4 + Math.random() * 8;
         _root["aso#75555"]["p" + eval("aso#60372")]._y = y - 4 + Math.random() * 8;
      }
      set("aso#60372",eval("aso#60372") + 1);
      ti++;
   }
   if(eval("aso#60372") > maxef)
   {
      set("aso#60372",0);
   }
}
function §aso#66361§(§aso#59530§, §aso#90867§, §aso#28193§, type, btox, btoy)
{
   if(type == "shot")
   {
      if(aso#28193 == 0)
      {
         _root["aso#52991"](aso#59530,aso#90867,1,btox,btoy);
      }
      else if(aso#28193 == 1)
      {
         _root["aso#52991"](aso#59530,aso#90867,5,btox,btoy);
         _root["aso#52991"](aso#59530,aso#90867,11);
      }
      else if(aso#28193 == 2)
      {
         _root["aso#52991"](aso#59530,aso#90867,9,btox,btoy);
      }
   }
   else if(type == "shot_head")
   {
      if(aso#28193 == 0)
      {
         _root["aso#52991"](aso#59530,aso#90867,2,btox,btoy);
      }
      else if(aso#28193 == 1)
      {
         _root["aso#52991"](aso#59530,aso#90867,5,btox,btoy);
         _root["aso#52991"](aso#59530,aso#90867,5,btox,btoy);
         _root["aso#52991"](aso#59530,aso#90867,11);
      }
      else if(aso#28193 == 2)
      {
         _root["aso#52991"](aso#59530,aso#90867,10,btox,btoy);
      }
   }
   else if(type == "fall")
   {
      if(aso#28193 == 0)
      {
         _root["aso#52991"](aso#59530,aso#90867,1);
      }
      else if(aso#28193 == 1)
      {
         _root["aso#52991"](aso#59530,aso#90867,5);
      }
      else if(aso#28193 == 2)
      {
         _root["aso#52991"](aso#59530,aso#90867,9);
      }
   }
   else if(type == "glass")
   {
      if(aso#28193 == 0)
      {
         _root["aso#52991"](aso#59530,aso#90867,1);
      }
      else if(aso#28193 == 1)
      {
         _root["aso#52991"](aso#59530,aso#90867,11);
      }
      else if(aso#28193 == 2)
      {
         _root["aso#52991"](aso#59530,aso#90867,9);
      }
   }
   else if(type == "barrel")
   {
      if(aso#28193 == 0)
      {
         _root["aso#52991"](aso#59530,aso#90867,2);
      }
      else if(aso#28193 == 1)
      {
         _root["aso#52991"](aso#59530,aso#90867,5);
         _root["aso#52991"](aso#59530,aso#90867,11);
      }
      else if(aso#28193 == 2)
      {
         _root["aso#52991"](aso#59530,aso#90867,10);
      }
   }
   else if(type == "rocket")
   {
      if(aso#28193 == 0)
      {
         _root["aso#52991"](aso#59530,aso#90867,2,btox,btoy);
      }
      else if(aso#28193 == 1)
      {
         _root["aso#52991"](aso#59530,aso#90867,5,btox,btoy);
         _root["aso#52991"](aso#59530,aso#90867,11);
      }
      else if(aso#28193 == 2)
      {
         _root["aso#52991"](aso#59530,aso#90867,10,btox,btoy);
      }
   }
   else if(type == "flow")
   {
      if(aso#28193 == 0)
      {
         _root["aso#52991"](aso#59530,aso#90867,1,btox,btoy,false,1);
      }
      else if(aso#28193 == 1)
      {
         _root["aso#52991"](aso#59530,aso#90867,5,btox,btoy,false,1);
      }
      else if(aso#28193 == 2)
      {
         _root["aso#52991"](aso#59530,aso#90867,9,btox,btoy,false,1);
      }
   }
}
function §aso#02845§()
{
   set("aso#06892",0);
   while(eval("aso#06892") < eval("aso#71929"))
   {
      if(eval("aso#09255")[eval("aso#82515")[eval("aso#06892")]] != 2)
      {
         if(eval("aso#70958")[eval("aso#90317")[eval("aso#82515")[eval("aso#06892")]]] == true || eval("aso#70958")[eval("aso#84328")[eval("aso#82515")[eval("aso#06892")]]] == true)
         {
            eval("aso#10647")[eval("aso#06892")]._xscale = Math.abs(eval("aso#10647")[eval("aso#06892")]._xscale) * eval("aso#70116")[eval("aso#06892")];
            eval("aso#10647")[eval("aso#06892")]._x = eval("aso#00903")[eval("aso#90317")[eval("aso#82515")[eval("aso#06892")]]];
            eval("aso#10647")[eval("aso#06892")]._y = eval("aso#82936")[eval("aso#90317")[eval("aso#82515")[eval("aso#06892")]]];
            eval("aso#10647")[eval("aso#06892")]._rotation = eval("aso#32790")[eval("aso#06892")] - Math.atan2(eval("aso#00903")[eval("aso#90317")[eval("aso#82515")[eval("aso#06892")]]] - eval("aso#00903")[eval("aso#84328")[eval("aso#82515")[eval("aso#06892")]]],eval("aso#82936")[eval("aso#90317")[eval("aso#82515")[eval("aso#06892")]]] - eval("aso#82936")[eval("aso#84328")[eval("aso#82515")[eval("aso#06892")]]]) / 3.141592653589793 * 180;
            if(eval("aso#94072")[eval("aso#06892")])
            {
               cdi = eval("aso#03687")(eval("aso#00903")[eval("aso#90317")[eval("aso#82515")[eval("aso#06892")]]],eval("aso#82936")[eval("aso#90317")[eval("aso#82515")[eval("aso#06892")]]],eval("aso#00903")[eval("aso#84328")[eval("aso#82515")[eval("aso#06892")]]],eval("aso#82936")[eval("aso#84328")[eval("aso#82515")[eval("aso#06892")]]]);
               cdi = (1 - cdi / 32.79) * 60;
               eval("aso#10647")[eval("aso#06892")].gotoAndStop(Math.max(1,Math.min(30,Math.round(cdi))));
            }
         }
      }
      eval("aso#06892")++;
   }
   set("aso#06892",0);
   while(eval("aso#06892") < eval("aso#40592"))
   {
      if(eval("aso#12039")[eval("aso#06892")] > 0)
      {
         eval("aso#12039")[eval("aso#06892")] -= 1;
         if(Math.random() > 0.5 && _root["aso#94493"] > 1 || Math.random() > 0.9 && _root["aso#94493"] == 1)
         {
            eval("aso#66361")(eval("aso#00903")[eval("aso#50757")[eval("aso#06892")]],eval("aso#82936")[eval("aso#50757")[eval("aso#06892")]],_root["aso#75555"]["player" + emmit_i[eval("aso#06892")]]["aso#14273"],"flow",Math.random() * 12 - 6,Math.random() * 12 - 6);
         }
      }
      else if(eval("aso#06892") == eval("aso#40592") - 1)
      {
         eval("aso#40592")--;
      }
      eval("aso#06892")++;
   }
   set("aso#06892",0);
   while(eval("aso#06892") < emmit2_tot)
   {
      if(emmit2_time[eval("aso#06892")] > 0)
      {
         emmit2_time[eval("aso#06892")] -= 1;
         if(_root["aso#75555"]["player" + emmit2_i[eval("aso#06892")]]["aso#69566"] > 0)
         {
            if(Math.random() > 0.8 && _root["aso#94493"] > 1 || Math.random() > 0.9 && _root["aso#94493"] == 1)
            {
               eval("aso#66361")(_root["aso#75555"]["player" + emmit2_i[eval("aso#06892")]]._x + emmit2_x[eval("aso#06892")],_root["aso#75555"]["player" + emmit2_i[eval("aso#06892")]]._y + emmit2_y[eval("aso#06892")],_root["aso#75555"]["player" + emmit2_i[eval("aso#06892")]]["aso#14273"],"flow",Math.random() * 6 - 3,Math.random() * 6 - 3);
            }
         }
      }
      else if(eval("aso#06892") == emmit2_tot - 1)
      {
         emmit2_tot--;
      }
      eval("aso#06892")++;
   }
}
function §aso#21654§(x, y, sx, sy, rad, round)
{
   eval("aso#00903")[eval("aso#30427")] = x;
   eval("aso#82936")[eval("aso#30427")] = y;
   eval("aso#57588")[eval("aso#30427")] = sx;
   eval("aso#51599")[eval("aso#30427")] = sy;
   eval("aso#70958")[eval("aso#30427")] = true;
   if(rad != undefined)
   {
      eval("aso#97277")[eval("aso#30427")] = rad;
   }
   else
   {
      eval("aso#97277")[eval("aso#30427")] = 0;
   }
   if(round == undefined)
   {
      around[eval("aso#30427")] = false;
   }
   else
   {
      around[eval("aso#30427")] = true;
   }
   eval("aso#30427")++;
   return eval("aso#30427") - 1;
}
function §aso#08284§(a, a2, type, §aso#33211§, damp)
{
   eval("aso#90317")[eval("aso#39200")] = a;
   eval("aso#84328")[eval("aso#39200")] = a2;
   if(aso#33211 != undefined)
   {
      eval("aso#69145")[eval("aso#39200")] = aso#33211;
   }
   else
   {
      eval("aso#69145")[eval("aso#39200")] = eval("aso#03687")(eval("aso#00903")[a],eval("aso#82936")[a],eval("aso#00903")[a2],eval("aso#82936")[a2]);
   }
   if(damp == undefined)
   {
      eval("aso#74713")[eval("aso#39200")] = 1;
   }
   else
   {
      eval("aso#74713")[eval("aso#39200")] = damp;
   }
   eval("aso#49786")[eval("aso#39200")] = type;
   eval("aso#09255")[eval("aso#39200")] = true;
   eval("aso#39200")++;
   return eval("aso#39200") - 1;
}
function §aso#51178§(§aso#89896§, §aso#20262§, pan, flip, isLeg)
{
   eval("aso#10647")[eval("aso#71929")] = aso#89896;
   eval("aso#82515")[eval("aso#71929")] = aso#20262;
   eval("aso#32790")[eval("aso#71929")] = pan;
   eval("aso#70116")[eval("aso#71929")] = flip;
   if(isLeg == true)
   {
      eval("aso#94072")[eval("aso#71929")] = true;
   }
   else
   {
      eval("aso#94072")[eval("aso#71929")] = false;
   }
   eval("aso#71929")++;
}
function §aso#92680§(a, time, ni)
{
   eval("aso#50757")[eval("aso#40592")] = a;
   emmit_i[eval("aso#40592")] = ni;
   eval("aso#12039")[eval("aso#40592")] = time;
   eval("aso#40592")++;
}
function Blood2(ni, time, nx, ny)
{
   emmit2_i[emmit2_tot] = ni;
   emmit2_time[emmit2_tot] = time;
   emmit2_x[emmit2_tot] = nx;
   emmit2_y[emmit2_tot] = ny;
   emmit2_tot++;
}
function §aso#80702§(§aso#06892§)
{
   set("aso#89475",false);
   if(_root["aso#75555"]["player" + aso#06892].w_upg1 == 2 && _root["aso#75555"]["player" + aso#06892]["aso#63577"]._currentframe == 1)
   {
      set("aso#89475",true);
   }
   if(eval("aso#89475"))
   {
      _root["aso#75555"]["player" + aso#06892]["aso#02295"].gotoAndStop(_root["aso#75555"]["player" + aso#06892]["aso#63577"]._currentframe);
      if(_root["aso#75555"]["player" + aso#06892]["aso#02295"]._visible == false)
      {
         _root["aso#75555"]["player" + aso#06892]["aso#02295"]._visible = true;
         _root["aso#75555"]["player" + aso#06892]["aso#02295"]._alpha = 0;
      }
      else if(_root["aso#75555"]["player" + aso#06892]["aso#02295"]._alpha == 0)
      {
         _root["aso#75555"]["player" + aso#06892]["aso#02295"]._alpha = 100;
      }
      _root["aso#75555"]["player" + aso#06892]["aso#02295"]._xscale = eval("aso#01453");
      _root["aso#75555"]["player" + aso#06892]["aso#02295"]._yscale = eval("aso#01453");
   }
   else
   {
      _root["aso#75555"]["player" + aso#06892]["aso#02295"].gotoAndStop(1);
      _root["aso#75555"]["player" + aso#06892]["aso#02295"]._visible = false;
      _root["aso#75555"]["player" + aso#06892]["aso#02295"]._xscale = 0;
      _root["aso#75555"]["player" + aso#06892]["aso#02295"]._yscale = 0;
   }
}
function §aso#34182§(§aso#06892§)
{
   if(aso#06892 == 0)
   {
      if(Math.random() > 0.5)
      {
         _root["aso#75555"]["player" + aso#06892].sou.gotoAndStop(24);
      }
      else
      {
         _root["aso#75555"]["player" + aso#06892].sou.gotoAndStop(25);
      }
   }
   else
   {
      _root["aso#75555"]["player" + aso#06892].sou.gotoAndStop(10 + Math.round(Math.random() * 2));
   }
   _root["aso#75555"]["player" + aso#06892].deadtime = 0;
   _root["aso#75555"]["player" + aso#06892].suffer = true;
   if(aso#06892 != 0)
   {
      _root.stat_kills++;
      if(_root["aso#75555"]["player" + aso#06892].say_die != undefined)
      {
         eval("aso#67332")(_root["aso#75555"]["player" + aso#06892].say_die);
      }
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0)
   {
      set("aso#88083",4);
      set("aso#30006",5);
      set("aso#19420",8);
      set("aso#49365",3);
      set("aso#15244",4);
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 1)
   {
      set("aso#88083",4);
      set("aso#30006",5);
      set("aso#19420",15);
      set("aso#49365",10);
      set("aso#15244",5);
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2)
   {
      set("aso#88083",4);
      set("aso#30006",8);
      set("aso#19420",7);
      set("aso#49365",4);
      set("aso#15244",6);
   }
   set("aso#11068",_root["aso#75555"]["player" + aso#06892]["aso#26251"]);
   set("aso#42405",_root["aso#75555"]["player" + aso#06892]["aso#94914"]);
   p_body = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].body._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].body._y,eval("aso#11068"),eval("aso#42405"),eval("aso#88083"));
   _root["aso#75555"]["player" + aso#06892]["aso#56746"] = p_body;
   _root["aso#75555"]["player" + aso#06892].center = p_body;
   p_arm1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].arm1._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].arm1._y,eval("aso#11068"),eval("aso#42405"),eval("aso#19420"));
   _root["aso#75555"]["player" + aso#06892]["aso#46581"] = p_arm1;
   set("aso#99090",_root["aso#75555"]["player" + aso#06892]["aso#33632"].upper1._rotation);
   set("aso#76526",_root["aso#75555"]["player" + aso#06892]["aso#33632"].upper2._rotation);
   _root["aso#75555"]["player" + aso#06892]["aso#33632"].gotoAndStop(1);
   _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._rotation = eval("aso#99090");
   _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._rotation = eval("aso#76526");
   _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"].gotoAndStop(1);
   _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"].gotoAndStop(1);
   if(_root["aso#75555"]["player" + aso#06892]["aso#69566"] > -10)
   {
      p_subleg1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x - Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._rotation * eval("aso#78339")) * 35,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y + Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._rotation * eval("aso#78339")) * (35 - eval("aso#15244")),eval("aso#11068"),eval("aso#42405"),eval("aso#15244"));
      p_subleg2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x - Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._rotation * eval("aso#78339")) * 35,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y + Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._rotation * eval("aso#78339")) * (35 - eval("aso#15244")),eval("aso#11068"),eval("aso#42405"),eval("aso#15244"));
   }
   else
   {
      p_subleg1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x - Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._rotation * eval("aso#78339")) * 35,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y + Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"]._rotation * eval("aso#78339")) * (35 - eval("aso#15244")),eval("aso#11068"),eval("aso#42405"),eval("aso#15244"));
      p_subleg2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x - Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._rotation * eval("aso#78339")) * 35,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y + Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"]._rotation * eval("aso#78339")) * (35 - eval("aso#15244")),eval("aso#11068"),eval("aso#42405"),eval("aso#15244"));
   }
   _root["aso#75555"]["player" + aso#06892].a_stand1 = p_subleg1;
   _root["aso#75555"]["player" + aso#06892].a_stand2 = p_subleg2;
   _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x = 0;
   _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y = 0;
   p_subarm1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].arm1._x - Math.sin(_root["aso#75555"]["player" + aso#06892].arm1._rotation * eval("aso#78339")) * 26,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].arm1._y + Math.cos(_root["aso#75555"]["player" + aso#06892].arm1._rotation * eval("aso#78339")) * 26,eval("aso#11068"),eval("aso#42405"),eval("aso#49365"));
   p_subarm2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].arm2._x - Math.sin(_root["aso#75555"]["player" + aso#06892].arm2._rotation * eval("aso#78339")) * 26,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].arm2._y + Math.cos(_root["aso#75555"]["player" + aso#06892].arm2._rotation * eval("aso#78339")) * 26,eval("aso#11068"),eval("aso#42405"),eval("aso#49365"));
   body_break = false;
   p_head = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._y,eval("aso#11068"),eval("aso#42405"),eval("aso#30006"));
   if(my_so.data.breaking)
   {
      if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 1)
      {
         if(_root["aso#75555"]["player" + aso#06892]["aso#35024"] == "aso#39621" || _root["aso#75555"]["player" + aso#06892]["aso#35024"] == "all")
         {
            if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 && _root["aso#75555"]["player" + aso#06892]["aso#69566"] < -50 && _root["aso#75555"]["player" + aso#06892].opentop || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 && _root["aso#75555"]["player" + aso#06892]["aso#69566"] < -100 && !_root["aso#75555"]["player" + aso#06892].opentop || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2 && _root["aso#75555"]["player" + aso#06892]["aso#69566"] < -100 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 1 && _root["aso#75555"]["player" + aso#06892]["aso#69566"] < -100 && _root["aso#75555"]["player" + aso#06892]["aso#39621"]._currentframe == 1 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 1 && _root["aso#75555"]["player" + aso#06892]["aso#69566"] < -150)
            {
               eval("aso#92680")(p_head,40,aso#06892);
               _root["aso#75555"]["player" + aso#06892].suffer = false;
               _root["aso#75555"]["player" + aso#06892]["aso#39621"].gotoAndStop(10);
               eval("aso#66361")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#26251"] + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._x / _root["aso#75555"]["player" + aso#06892]._xscale * 100,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#94914"] + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._y,_root["aso#75555"]["player" + aso#06892]["aso#14273"],"shot_head",Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#26251"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
               eval("aso#66361")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#26251"] + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._x / _root["aso#75555"]["player" + aso#06892]._xscale * 100,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#94914"] + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._y,_root["aso#75555"]["player" + aso#06892]["aso#14273"],"shot_head",Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#26251"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
            }
         }
         if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2)
         {
            if(_root["aso#75555"]["player" + aso#06892]["aso#35024"] == "body" || _root["aso#75555"]["player" + aso#06892]["aso#35024"] == "arm" || _root["aso#75555"]["player" + aso#06892]["aso#35024"] == "all")
            {
               if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 && _root["aso#75555"]["player" + aso#06892]["aso#69566"] < -150 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2 && _root["aso#75555"]["player" + aso#06892]["aso#69566"] < -140)
               {
                  p_body_div1 = eval("aso#21654")((eval("aso#00903")[p_arm1] + eval("aso#00903")[p_body]) / 2,(eval("aso#82936")[p_arm1] + eval("aso#82936")[p_body]) / 2,(eval("aso#57588")[p_arm1] + eval("aso#57588")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,0);
                  p_body_div2 = eval("aso#21654")((eval("aso#00903")[p_arm1] + eval("aso#00903")[p_body]) / 2,(eval("aso#82936")[p_arm1] + eval("aso#82936")[p_body]) / 2,(eval("aso#57588")[p_arm1] + eval("aso#57588")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,0);
                  eval("aso#66361")((eval("aso#00903")[p_arm1] + eval("aso#00903")[p_body]) / 2,(eval("aso#82936")[p_arm1] + eval("aso#82936")[p_body]) / 2,_root["aso#75555"]["player" + aso#06892]["aso#14273"],"shot_head",Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#26251"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
                  eval("aso#66361")((eval("aso#00903")[p_arm1] + eval("aso#00903")[p_body]) / 2,(eval("aso#82936")[p_arm1] + eval("aso#82936")[p_body]) / 2,_root["aso#75555"]["player" + aso#06892]["aso#14273"],"shot_head",Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#26251"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
                  body_break = true;
                  _root["aso#75555"]["player" + aso#06892].suffer = false;
                  eval("aso#92680")(p_body,50,aso#06892);
                  eval("aso#92680")(p_arm1,50,aso#06892);
               }
            }
         }
      }
   }
   _root["aso#75555"]["player" + aso#06892].a_stand3 = p_head;
   if(_root["aso#75555"]["player" + aso#06892]["aso#69566"] > -10)
   {
      p_subhead = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._x + Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#39621"]._rotation * eval("aso#78339")) * 8,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._y - Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#39621"]._rotation * eval("aso#78339")) * 8,eval("aso#11068"),eval("aso#42405"),eval("aso#30006"));
   }
   else
   {
      p_subhead = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._x + Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#39621"]._rotation * eval("aso#78339")) * 8,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#39621"]._y - Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#39621"]._rotation * eval("aso#78339")) * 8,eval("aso#11068"),eval("aso#42405"),eval("aso#30006"));
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2)
   {
      p_gun = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y,eval("aso#11068") * 0.5,eval("aso#42405") * 0.5);
      sc = _root["aso#75555"]["player" + aso#06892]["aso#63577"]._xscale / 100;
      p_subgun = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#03266"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#03266"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#03266"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#03266"]._y * sc,eval("aso#11068") * 0.5,eval("aso#42405") * 0.5);
      p_subgun2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#34603"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#34603"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#34603"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#34603"]._y * sc,eval("aso#11068") * 0.5,eval("aso#42405") * 0.5);
      p_subgun3 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#65940"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#65940"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#65940"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#65940"]._y * sc,eval("aso#11068") * 0.5,eval("aso#42405") * 0.5);
      if(_root["aso#75555"]["player" + aso#06892]["aso#02295"]._visible == true && _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0)
      {
         p2_gun = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y,eval("aso#11068") * 0.5,eval("aso#42405") * 0.5);
         p2_subgun = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#03266"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#03266"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#03266"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#03266"]._y * sc,eval("aso#11068") * 0.5,eval("aso#42405") * 0.5);
         p2_subgun2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#34603"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#34603"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#34603"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#34603"]._y * sc,eval("aso#11068") * 0.5,eval("aso#42405") * 0.5);
         p2_subgun3 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#65940"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#65940"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation - 90) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#65940"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#02295"]._rotation + 180) * eval("aso#78339")) * _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#65940"]._y * sc,eval("aso#11068") * 0.5,eval("aso#42405") * 0.5);
      }
   }
   else
   {
      _root["aso#75555"]["player" + aso#06892]["aso#63577"]._visible = false;
   }
   eval("aso#17057")[p_body] = aso#06892;
   eval("aso#17057")[p_arm1] = aso#06892;
   eval("aso#17057")[p_body_div1] = aso#06892;
   eval("aso#17057")[p_body_div2] = aso#06892;
   eval("aso#17057")[p_subleg1] = aso#06892;
   eval("aso#17057")[p_subleg2] = aso#06892;
   eval("aso#17057")[p_subarm1] = aso#06892;
   eval("aso#17057")[p_subarm2] = aso#06892;
   if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0)
   {
      eval("aso#17057")[p_gun] = -1;
      eval("aso#17057")[p_subgun] = -1;
   }
   eval("aso#17057")[p_head] = aso#06892;
   eval("aso#17057")[p_subhead] = aso#06892;
   ch_leg1 = eval("aso#08284")(p_body,p_subleg1,1,28,0.1);
   ch_leg2 = eval("aso#08284")(p_body,p_subleg2,1,28,0.1);
   if(body_break)
   {
      ch_head = eval("aso#08284")(p_body,p_body_div1,0);
      ch_head3 = eval("aso#08284")(p_arm1,p_body_div2,0);
      eval("aso#08284")(p_body_div2,p_subhead,0);
      eval("aso#08284")(p_body_div1,p_subleg2,1,40);
      eval("aso#08284")(p_body_div1,p_subleg1,1,40);
   }
   else
   {
      eval("aso#08284")(p_body,p_arm1,0);
      ch_head = eval("aso#08284")(p_body,p_head,0);
      eval("aso#08284")(p_arm1,p_subleg2,1,45);
      eval("aso#08284")(p_arm1,p_subleg1,1,45);
      eval("aso#08284")(p_body,p_subhead,1,35);
   }
   ch_leg1 = eval("aso#08284")(p_body,p_subleg1,2,33);
   ch_leg2 = eval("aso#08284")(p_body,p_subleg2,2,33);
   eval("aso#08284")(p_arm1,p_head,0);
   ch_head2 = eval("aso#08284")(p_head,p_subhead,0);
   _root["aso#75555"]["player" + aso#06892]["aso#46581"] = p_arm1;
   _root["aso#75555"]["player" + aso#06892].gunanchor = p_gun;
   _root["aso#75555"]["player" + aso#06892]["aso#25409"] = p_subarm2;
   ch_arm1 = eval("aso#08284")(p_arm1,p_subarm1,0);
   ch_arm2 = eval("aso#08284")(p_arm1,p_subarm2,0);
   eval("aso#08284")(p_subleg2,p_subleg1,2,30);
   eval("aso#08284")(p_subleg2,p_subleg1,1,5);
   eval("aso#08284")(p_subarm2,p_subarm1,1,5);
   side = _root["aso#75555"]["player" + aso#06892]._xscale / 100;
   if(_root["aso#75555"]["player" + aso#06892]["aso#35024"] == "arm")
   {
      eval("aso#57588")[p_subarm1] -= side * 5;
      eval("aso#57588")[p_subarm2] -= side * 5;
      eval("aso#57588")[p_body] -= side * 5;
      eval("aso#57588")[p_arm1] += side * 10;
      if(Math.random() > 0.5)
      {
         eval("aso#57588")[p_subleg1] -= side * 5;
      }
      else
      {
         eval("aso#57588")[p_subleg2] -= side * 5;
      }
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#35024"] == "aso#39621")
   {
      eval("aso#57588")[p_arm1] -= side * 20;
      eval("aso#51599")[p_arm1] -= 5;
      eval("aso#57588")[p_body] -= side * 10;
      eval("aso#51599")[p_body] -= 5;
      if(Math.random() > 0.5)
      {
         eval("aso#57588")[p_subleg2] += side * 10;
         eval("aso#51599")[p_subleg2] -= 10;
      }
      else
      {
         eval("aso#57588")[p_subleg1] += side * 10;
         eval("aso#51599")[p_subleg1] -= 10;
      }
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#35024"] == "leg")
   {
      if(Math.random() > 0.5)
      {
         eval("aso#57588")[p_subleg1] -= side * 10;
         eval("aso#51599")[p_subleg1] -= 10;
      }
      else
      {
         eval("aso#57588")[p_subleg2] -= side * 10;
         eval("aso#51599")[p_subleg2] -= 10;
      }
      if(Math.random() > 0.5)
      {
         eval("aso#57588")[p_subleg2] += side * 5;
      }
      else
      {
         eval("aso#57588")[p_subleg1] += side * 5;
      }
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#35024"] == "body")
   {
      if(Math.random() > 0.5)
      {
         eval("aso#57588")[p_body] -= side * 10;
         eval("aso#57588")[p_subarm1] += side * 3;
         eval("aso#57588")[p_subarm2] += side * 3;
         if(Math.random() > 0.5)
         {
            eval("aso#57588")[p_subleg1] += side * 3;
            eval("aso#51599")[p_subleg1] -= 3;
         }
         else
         {
            eval("aso#57588")[p_subleg2] += side * 3;
            eval("aso#51599")[p_subleg2] -= 3;
         }
      }
      else
      {
         eval("aso#57588")[p_subarm1] -= side * 5;
         eval("aso#57588")[p_subarm2] -= side * 5;
         eval("aso#57588")[p_body] += side * 3;
         eval("aso#57588")[p_subleg1] -= side * 5;
         eval("aso#57588")[p_subleg2] += side * 5;
      }
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2)
   {
      ch_gun = eval("aso#08284")(p_gun,p_subgun,0);
      set("aso#06892aso#06892",0);
      while(eval("aso#06892aso#06892") < 2)
      {
         eval("aso#08284")(p_subgun,p_subgun2,0);
         eval("aso#08284")(p_subgun,p_subgun3,0);
         eval("aso#08284")(p_subgun2,p_subgun3,0);
         eval("aso#08284")(p_gun,p_subgun2,0);
         eval("aso#08284")(p_gun,p_subgun3,0);
         eval("aso#06892aso#06892")++;
      }
      if(_root["aso#75555"]["player" + aso#06892]["aso#02295"]._visible == true && _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 1)
      {
         ch_gun2 = eval("aso#08284")(p2_gun,p2_subgun,0);
         set("aso#06892aso#06892",0);
         while(eval("aso#06892aso#06892") < 2)
         {
            eval("aso#08284")(p2_subgun,p2_subgun2,0);
            eval("aso#08284")(p2_subgun,p2_subgun3,0);
            eval("aso#08284")(p2_subgun2,p2_subgun3,0);
            eval("aso#08284")(p2_gun,p2_subgun2,0);
            eval("aso#08284")(p2_gun,p2_subgun3,0);
            eval("aso#06892aso#06892")++;
         }
      }
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2)
   {
      if(_root["aso#75555"]["player" + aso#06892]["aso#02295"]._visible == true && _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 1)
      {
         _root["aso#75555"]["player" + aso#06892].whold1 = eval("aso#08284")(p_subarm1,p_gun,3);
         _root["aso#75555"]["player" + aso#06892].whold2 = eval("aso#08284")(p_subarm2,p2_gun,3);
         eval("aso#08284")(p_gun,p2_gun,1,10);
      }
      else
      {
         _root["aso#75555"]["player" + aso#06892].whold1 = eval("aso#08284")(p_subarm1,p_gun,3);
         _root["aso#75555"]["player" + aso#06892].whold2 = eval("aso#08284")(p_subarm2,p_gun,3);
      }
   }
   flip = _root["aso#75555"]["player" + aso#06892]._xscale / 100;
   if(flip < 0)
   {
      eval("aso#00903")[p_body] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_body] *= -1;
      eval("aso#00903")[p_body] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_arm1] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_arm1] *= -1;
      eval("aso#00903")[p_arm1] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subleg1] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subleg1] *= -1;
      eval("aso#00903")[p_subleg1] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subleg2] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subleg2] *= -1;
      eval("aso#00903")[p_subleg2] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subarm1] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subarm1] *= -1;
      eval("aso#00903")[p_subarm1] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subarm2] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subarm2] *= -1;
      eval("aso#00903")[p_subarm2] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_head] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_head] *= -1;
      eval("aso#00903")[p_head] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subhead] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#00903")[p_subhead] *= -1;
      eval("aso#00903")[p_subhead] += _root["aso#75555"]["player" + aso#06892]._x;
      if(body_break)
      {
         eval("aso#00903")[p_body_div1] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_body_div1] *= -1;
         eval("aso#00903")[p_body_div1] += _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_body_div2] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_body_div2] *= -1;
         eval("aso#00903")[p_body_div2] += _root["aso#75555"]["player" + aso#06892]._x;
      }
      if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2)
      {
         eval("aso#00903")[p_gun] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_gun] *= -1;
         eval("aso#00903")[p_gun] += _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_subgun] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_subgun] *= -1;
         eval("aso#00903")[p_subgun] += _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_subgun2] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_subgun2] *= -1;
         eval("aso#00903")[p_subgun2] += _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_subgun3] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#00903")[p_subgun3] *= -1;
         eval("aso#00903")[p_subgun3] += _root["aso#75555"]["player" + aso#06892]._x;
         if(_root["aso#75555"]["player" + aso#06892]["aso#02295"]._visible == true && _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 1)
         {
            eval("aso#00903")[p2_gun] -= _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#00903")[p2_gun] *= -1;
            eval("aso#00903")[p2_gun] += _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#00903")[p2_subgun] -= _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#00903")[p2_subgun] *= -1;
            eval("aso#00903")[p2_subgun] += _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#00903")[p2_subgun2] -= _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#00903")[p2_subgun2] *= -1;
            eval("aso#00903")[p2_subgun2] += _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#00903")[p2_subgun3] -= _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#00903")[p2_subgun3] *= -1;
            eval("aso#00903")[p2_subgun3] += _root["aso#75555"]["player" + aso#06892]._x;
         }
      }
   }
   _root["aso#75555"]["player" + aso#06892]._x = 0;
   _root["aso#75555"]["player" + aso#06892]._y = 0;
   if(body_break)
   {
      _root["aso#75555"]["player" + aso#06892].jet = false;
      if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0)
      {
         _root["aso#75555"]["player" + aso#06892]["aso#33632"].toe.bloddy._visible = true;
      }
      if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2)
      {
         _root["aso#75555"]["player" + aso#06892]["aso#33632"].toe.bloddy2._visible = true;
      }
      _root["aso#75555"]["player" + aso#06892].body.gotoAndStop(5);
      eval("aso#51178")(_root["aso#75555"]["player" + aso#06892].body,ch_head3,0,flip);
   }
   else
   {
      eval("aso#51178")(_root["aso#75555"]["player" + aso#06892].body,ch_head,0,flip);
   }
   if(body_break)
   {
      eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#33632"].toe,ch_head,0,flip);
   }
   else
   {
      eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#33632"].toe,ch_head,0,flip);
   }
   eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#57167"],ch_leg1,180,flip,true);
   eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#33632"]["aso#88504"],ch_leg2,180,flip,true);
   eval("aso#51178")(_root["aso#75555"]["player" + aso#06892].arm1,ch_arm1,180,flip);
   eval("aso#51178")(_root["aso#75555"]["player" + aso#06892].arm2,ch_arm2,180,flip);
   eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#39621"],ch_head2,0,flip);
   if(_root["aso#75555"]["player" + aso#06892]["aso#14273"] == 0 || _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 2)
   {
      if(flip > 0)
      {
         eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#63577"],ch_gun,-90,flip);
      }
      else
      {
         eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#63577"],ch_gun,90,flip);
      }
      if(_root["aso#75555"]["player" + aso#06892]["aso#02295"]._visible == true && _root["aso#75555"]["player" + aso#06892]["aso#14273"] == 1)
      {
         if(flip > 0)
         {
            eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#02295"],ch_gun2,-90,flip);
         }
         else
         {
            eval("aso#51178")(_root["aso#75555"]["player" + aso#06892]["aso#02295"],ch_gun2,90,flip);
         }
      }
   }
   _root["aso#75555"]["player" + aso#06892]._xscale = 100;
}
function §aso#98669§(px, py, mast, §aso#27643§, §aso#15665§, §aso#41013§)
{
   ok = true;
   ip = 0;
   while(ip < pulstot && ok)
   {
      if(_root["aso#75555"]["pl" + ip]._visible == false)
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
   duplicateMovieClip(_root["aso#75555"].plazma,"pl" + ini,16384 + (-100 + ini));
   _root["aso#75555"]["pl" + ini].life = 0;
   _root["aso#75555"]["pl" + ini]._x = px + aso#15665;
   _root["aso#75555"]["pl" + ini]._y = py + aso#41013;
   _root["aso#75555"]["pl" + ini]["aso#27643"] = aso#27643;
   _root["aso#75555"]["pl" + ini]["aso#15665"] = aso#15665;
   _root["aso#75555"]["pl" + ini]["aso#41013"] = aso#41013;
   _root["aso#75555"]["pl" + ini]["aso#36416"] = mast;
   _root["aso#75555"]["pl" + ini].gotoAndStop(_root["aso#75555"]["player" + mast]["aso#63577"]._currentframe);
   _root["aso#75555"]["pl" + ini]._rotation = Math.atan2(aso#41013,aso#15665) / 3.141592653589793 * 180;
   if(ok)
   {
      pulstot++;
      if(pulstot >= pulsmax)
      {
         pulstot = 0;
      }
   }
}
function §aso#13852§(§aso#21233§, §aso#52570§, §aso#16636§, §aso#47973§)
{
   ok = true;
   set("aso#95464",- Math.atan2(aso#21233 - aso#16636,aso#52570 - aso#47973) - 1.5707963267948966);
   tracex = Math.cos(eval("aso#95464")) * 20;
   tracey = Math.sin(eval("aso#95464")) * 20;
   tracx = aso#21233;
   tracy = aso#52570;
   dst = Math.floor(eval("aso#03687")(aso#21233,aso#52570,aso#16636,aso#47973) / 20);
   z = 0;
   while(z < dst && ok == true)
   {
      if(_root["aso#75555"].colmap.hitTest(tracx + _root["aso#75555"]._x,tracy + _root["aso#75555"]._y,true))
      {
         ok = false;
      }
      tracx += tracex;
      tracy += tracey;
      z++;
   }
   return ok;
}
function finish()
{
   if(_root["aso#75555"].player0["aso#69566"] > 0 && _root.loose == 0)
   {
      set("aso#09676",1);
      while(eval("aso#09676") < 10)
      {
         my_so.data["weapon" + eval("aso#09676")] = _root["aso#75555"].player0["w_upg" + eval("aso#09676")];
         eval("aso#09676")++;
      }
      stpsnds();
      _root.auto_buy = true;
      _root.gotoAndStop(4);
   }
}
function §aso#82094§(hor, ver, a)
{
   hor = Math.abs(hor) * 0.5;
   ver = Math.abs(ver) * 0.5;
   if(hor > ver + 2)
   {
      _root["aso#75555"]["player" + eval("aso#17057")[a]].sou.gotoAndStop(9);
   }
   else
   {
      if(ver > 2)
      {
         if(ver <= 3)
         {
            _root["aso#75555"]["player" + eval("aso#17057")[a]].sou.gotoAndStop(7);
         }
      }
      if(ver > 3)
      {
         if(ver <= 4)
         {
            _root["aso#75555"]["player" + eval("aso#17057")[a]].sou.gotoAndStop(6);
         }
      }
      if(ver > 4)
      {
         _root["aso#75555"]["player" + eval("aso#17057")[a]].sou.gotoAndStop(8);
         if(ver > 6)
         {
            eval("aso#66361")(eval("aso#00903")[a],eval("aso#82936")[a],_root["aso#75555"]["player" + eval("aso#17057")[a]]["aso#14273"],"fall",eval("aso#57588")[a],eval("aso#51599")[a]);
            eval("aso#92680")(a,10 + Math.random() * 30,eval("aso#17057")[a]);
         }
      }
   }
}
function §aso#25830§(mess)
{
   hinttim = mess.length * 2 + 10;
   _root.hint.htmlText = "Hint: " + mess;
}
function §aso#67332§(mess)
{
   hinttim = mess.length * 2 + 10;
   _root.hint.htmlText = mess;
}
function §aso#40171§()
{
   a = 0;
   while(a < eval("aso#30427"))
   {
      if(eval("aso#70958")[a] == true)
      {
         eval("aso#00903")[a] += eval("aso#57588")[a];
         eval("aso#82936")[a] += eval("aso#51599")[a];
         if(eval("aso#82936")[a] > 1000)
         {
            eval("aso#82094")(eval("aso#57588")[a],eval("aso#51599")[a],a);
            eval("aso#82936")[a] = 1000;
            eval("aso#57588")[a] *= 0.5;
            eval("aso#51599")[a] = (- Math.abs(eval("aso#51599")[a])) * 0.5;
         }
         set("aso#33211",eval("aso#03687")(eval("aso#57588")[a],eval("aso#51599")[a],0,0));
         if(eval("aso#33211") > eval("aso#07442"))
         {
            eval("aso#57588")[a] /= eval("aso#33211") * eval("aso#07442");
            eval("aso#51599")[a] /= eval("aso#33211") * eval("aso#07442");
         }
         if(eval("aso#33211") > 30)
         {
            eval("aso#57588")[a] = eval("aso#57588")[a] / eval("aso#33211") * 30;
            eval("aso#51599")[a] = eval("aso#51599")[a] / eval("aso#33211") * 30;
         }
         eval("aso#51599")[a] += eval("aso#70537");
         if(eval("aso#97277")[a] == 0 && _root["aso#75555"].colmap.hitTest(eval("aso#00903")[a] + _root["aso#75555"]._x,eval("aso#82936")[a] + _root["aso#75555"]._y,true) || eval("aso#97277")[a] > 0 && _root["aso#75555"].colmap.hitTest(eval("aso#00903")[a] + _root["aso#75555"]._x,eval("aso#82936")[a] + eval("aso#97277")[a] + _root["aso#75555"]._y,true))
         {
            set("aso#76947",0);
            while(eval("aso#76947") < eval("aso#07863"))
            {
               boxx = _root["aso#75555"].colmap["box" + eval("aso#76947")];
               if(eval("aso#00903")[a] > boxx._x)
               {
                  if(eval("aso#00903")[a] < boxx._x + boxx._xscale)
                  {
                     if(eval("aso#82936")[a] + eval("aso#97277")[a] > boxx._y)
                     {
                        if(eval("aso#82936")[a] + eval("aso#97277")[a] < boxx._y + boxx._yscale)
                        {
                           minside = Math.min(boxx._xscale,boxx._yscale);
                           if(boxx._yscale < boxx._xscale)
                           {
                              set("aso#52149",Math.max(boxx._x + boxx._yscale / 2,Math.min(boxx._x + boxx._xscale - boxx._yscale / 2,eval("aso#00903")[a] - eval("aso#57588")[a])));
                              set("aso#83486",boxx._y + boxx._yscale / 2);
                           }
                           else
                           {
                              set("aso#83486",Math.max(boxx._y + boxx._xscale / 2,Math.min(boxx._y + boxx._yscale - boxx._xscale / 2,eval("aso#82936")[a] - eval("aso#51599")[a])));
                              set("aso#52149",boxx._x + boxx._xscale / 2);
                           }
                           set("aso#73321",eval("aso#52149") - eval("aso#00903")[a] + eval("aso#57588")[a]);
                           set("aso#53962",eval("aso#83486") - eval("aso#82936")[a] + eval("aso#51599")[a]);
                           if(Math.abs(eval("aso#73321")) > Math.abs(eval("aso#53962")))
                           {
                              eval("aso#57588")[a] *= 0.5;
                              if(around[a])
                              {
                                 eval("aso#51599")[a] *= 0.9;
                              }
                              else if(eval("aso#51599")[a] > 0)
                              {
                                 eval("aso#51599")[a] = Math.max(eval("aso#51599")[a] - eval("aso#43376") * Math.abs(eval("aso#57588")[a]),0);
                              }
                              else
                              {
                                 eval("aso#51599")[a] = Math.min(eval("aso#51599")[a] + eval("aso#43376") * Math.abs(eval("aso#57588")[a]),0);
                              }
                              eval("aso#82094")(eval("aso#51599")[a],eval("aso#57588")[a],a);
                              if(eval("aso#73321") < 0)
                              {
                                 eval("aso#00903")[a] = boxx._x + boxx._xscale;
                                 eval("aso#57588")[a] = Math.abs(eval("aso#57588")[a]);
                              }
                              else
                              {
                                 eval("aso#00903")[a] = boxx._x;
                                 eval("aso#57588")[a] = - Math.abs(eval("aso#57588")[a]);
                              }
                           }
                           else
                           {
                              if(around[a])
                              {
                                 eval("aso#57588")[a] *= 0.9;
                              }
                              else if(eval("aso#57588")[a] > 0)
                              {
                                 eval("aso#57588")[a] = Math.max(eval("aso#57588")[a] - eval("aso#43376") * Math.abs(eval("aso#51599")[a]),0);
                              }
                              else
                              {
                                 eval("aso#57588")[a] = Math.min(eval("aso#57588")[a] + eval("aso#43376") * Math.abs(eval("aso#51599")[a]),0);
                              }
                              eval("aso#51599")[a] *= 0.5;
                              eval("aso#82094")(eval("aso#57588")[a],eval("aso#51599")[a],a);
                              if(eval("aso#53962") < 0)
                              {
                                 eval("aso#82936")[a] = boxx._y - eval("aso#97277")[a] + boxx._yscale;
                                 eval("aso#51599")[a] = Math.abs(eval("aso#51599")[a]);
                              }
                              else
                              {
                                 eval("aso#82936")[a] = boxx._y - eval("aso#97277")[a];
                                 eval("aso#51599")[a] = - Math.abs(eval("aso#51599")[a]);
                              }
                           }
                        }
                     }
                  }
               }
               eval("aso#76947")++;
            }
         }
      }
      a++;
   }
   set("aso#20262",0);
   while(eval("aso#20262") < eval("aso#39200"))
   {
      if(eval("aso#09255")[eval("aso#20262")] == true || eval("aso#09255")[eval("aso#20262")] == false)
      {
         if(eval("aso#70958")[eval("aso#90317")[eval("aso#20262")]] == false && eval("aso#70958")[eval("aso#84328")[eval("aso#20262")]] == false)
         {
            eval("aso#09255")[eval("aso#20262")] = false;
         }
         else
         {
            eval("aso#09255")[eval("aso#20262")] = true;
         }
         if(eval("aso#70958")[eval("aso#90317")[eval("aso#20262")]] == 2 || eval("aso#70958")[eval("aso#84328")[eval("aso#20262")]] == 2)
         {
            eval("aso#09255")[eval("aso#20262")] = 2;
         }
         if(eval("aso#09255")[eval("aso#20262")] == true)
         {
            els = false;
            if(Math.abs(eval("aso#57588")[eval("aso#90317")[eval("aso#20262")]]) + Math.abs(eval("aso#51599")[eval("aso#90317")[eval("aso#20262")]]) + Math.abs(eval("aso#57588")[eval("aso#84328")[eval("aso#20262")]]) + Math.abs(eval("aso#51599")[eval("aso#84328")[eval("aso#20262")]]) < 5)
            {
               eval("aso#61343")[eval("aso#20262")] += 1;
               if(eval("aso#61343")[eval("aso#20262")] > 8)
               {
                  eval("aso#70958")[eval("aso#90317")[eval("aso#20262")]] = false;
                  eval("aso#70958")[eval("aso#84328")[eval("aso#20262")]] = false;
                  eval("aso#09255")[eval("aso#20262")] = false;
               }
            }
            else
            {
               els = true;
            }
            set("aso#45610",eval("aso#03687")(eval("aso#00903")[eval("aso#90317")[eval("aso#20262")]],eval("aso#82936")[eval("aso#90317")[eval("aso#20262")]],eval("aso#00903")[eval("aso#84328")[eval("aso#20262")]],eval("aso#82936")[eval("aso#84328")[eval("aso#20262")]]));
            set("aso#85299",0.5 * Math.abs(eval("aso#45610") - eval("aso#69145")[eval("aso#20262")]) * eval("aso#74713")[eval("aso#20262")]);
            if(eval("aso#45610") < 1)
            {
               set("aso#45610",1);
            }
            if(eval("aso#49786")[eval("aso#20262")] == 3)
            {
               if(eval("aso#45610") > eval("aso#69145")[eval("aso#20262")] + 14 || eval("aso#45610") < eval("aso#69145")[eval("aso#20262")] - 14)
               {
                  eval("aso#49786")[eval("aso#20262")] = 1;
                  eval("aso#69145")[eval("aso#20262")] = 0;
               }
            }
            if(eval("aso#49786")[eval("aso#20262")] == 4)
            {
               if(eval("aso#45610") > eval("aso#69145")[eval("aso#20262")] + 7 || eval("aso#45610") < eval("aso#69145")[eval("aso#20262")] - 7)
               {
                  eval("aso#49786")[eval("aso#20262")] = 1;
                  eval("aso#69145")[eval("aso#20262")] = 0;
               }
            }
            if(eval("aso#45610") > eval("aso#69145")[eval("aso#20262")] && (eval("aso#49786")[eval("aso#20262")] == 0 || eval("aso#49786")[eval("aso#20262")] == 3 || eval("aso#49786")[eval("aso#20262")] == 4 || eval("aso#49786")[eval("aso#20262")] == 2))
            {
               eval("aso#57588")[eval("aso#84328")[eval("aso#20262")]] += (eval("aso#00903")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#00903")[eval("aso#84328")[eval("aso#20262")]]) / eval("aso#45610") * eval("aso#85299");
               eval("aso#51599")[eval("aso#84328")[eval("aso#20262")]] += (eval("aso#82936")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#82936")[eval("aso#84328")[eval("aso#20262")]]) / eval("aso#45610") * eval("aso#85299");
               eval("aso#57588")[eval("aso#90317")[eval("aso#20262")]] -= (eval("aso#00903")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#00903")[eval("aso#84328")[eval("aso#20262")]]) / eval("aso#45610") * eval("aso#85299");
               eval("aso#51599")[eval("aso#90317")[eval("aso#20262")]] -= (eval("aso#82936")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#82936")[eval("aso#84328")[eval("aso#20262")]]) / eval("aso#45610") * eval("aso#85299");
            }
            else if(eval("aso#45610") < eval("aso#69145")[eval("aso#20262")] && (eval("aso#49786")[eval("aso#20262")] == 0 || eval("aso#49786")[eval("aso#20262")] == 3 || eval("aso#49786")[eval("aso#20262")] == 4 || eval("aso#49786")[eval("aso#20262")] == 1))
            {
               eval("aso#57588")[eval("aso#84328")[eval("aso#20262")]] -= (eval("aso#00903")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#00903")[eval("aso#84328")[eval("aso#20262")]]) / eval("aso#45610") * eval("aso#85299");
               eval("aso#51599")[eval("aso#84328")[eval("aso#20262")]] -= (eval("aso#82936")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#82936")[eval("aso#84328")[eval("aso#20262")]]) / eval("aso#45610") * eval("aso#85299");
               eval("aso#57588")[eval("aso#90317")[eval("aso#20262")]] += (eval("aso#00903")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#00903")[eval("aso#84328")[eval("aso#20262")]]) / eval("aso#45610") * eval("aso#85299");
               eval("aso#51599")[eval("aso#90317")[eval("aso#20262")]] += (eval("aso#82936")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#82936")[eval("aso#84328")[eval("aso#20262")]]) / eval("aso#45610") * eval("aso#85299");
            }
            else
            {
               els = false;
            }
            if(eval("aso#74713")[eval("aso#20262")] == 1 && (eval("aso#49786")[eval("aso#20262")] == 0 || eval("aso#49786")[eval("aso#20262")] == 3 || eval("aso#49786")[eval("aso#20262")] == 4 || eval("aso#45610") > eval("aso#69145")[eval("aso#20262")] && eval("aso#49786")[eval("aso#20262")] == 2 || eval("aso#45610") < eval("aso#69145")[eval("aso#20262")] && eval("aso#49786")[eval("aso#20262")] == 1))
            {
               set("aso#58980",(eval("aso#00903")[eval("aso#90317")[eval("aso#20262")]] + eval("aso#00903")[eval("aso#84328")[eval("aso#20262")]]) / 2);
               set("aso#96306",(eval("aso#82936")[eval("aso#90317")[eval("aso#20262")]] + eval("aso#82936")[eval("aso#84328")[eval("aso#20262")]]) / 2);
               srx = (eval("aso#57588")[eval("aso#84328")[eval("aso#20262")]] + eval("aso#57588")[eval("aso#90317")[eval("aso#20262")]]) / 2;
               sry = (eval("aso#51599")[eval("aso#84328")[eval("aso#20262")]] + eval("aso#51599")[eval("aso#90317")[eval("aso#20262")]]) / 2;
               set("aso#11068",(eval("aso#57588")[eval("aso#84328")[eval("aso#20262")]] + (- eval("aso#57588")[eval("aso#90317")[eval("aso#20262")]])) / 2);
               set("aso#42405",(eval("aso#51599")[eval("aso#84328")[eval("aso#20262")]] + (- eval("aso#51599")[eval("aso#90317")[eval("aso#20262")]])) / 2);
               eval("aso#57588")[eval("aso#84328")[eval("aso#20262")]] = srx + eval("aso#11068");
               eval("aso#51599")[eval("aso#84328")[eval("aso#20262")]] = sry + eval("aso#42405");
               eval("aso#57588")[eval("aso#90317")[eval("aso#20262")]] = srx - eval("aso#11068");
               eval("aso#51599")[eval("aso#90317")[eval("aso#20262")]] = sry - eval("aso#42405");
               eval("aso#00903")[eval("aso#90317")[eval("aso#20262")]] = eval("aso#58980") + (eval("aso#00903")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#58980")) * eval("aso#69145")[eval("aso#20262")] / eval("aso#45610");
               eval("aso#82936")[eval("aso#90317")[eval("aso#20262")]] = eval("aso#96306") + (eval("aso#82936")[eval("aso#90317")[eval("aso#20262")]] - eval("aso#96306")) * eval("aso#69145")[eval("aso#20262")] / eval("aso#45610");
               eval("aso#00903")[eval("aso#84328")[eval("aso#20262")]] = eval("aso#58980") + (eval("aso#00903")[eval("aso#84328")[eval("aso#20262")]] - eval("aso#58980")) * eval("aso#69145")[eval("aso#20262")] / eval("aso#45610");
               eval("aso#82936")[eval("aso#84328")[eval("aso#20262")]] = eval("aso#96306") + (eval("aso#82936")[eval("aso#84328")[eval("aso#20262")]] - eval("aso#96306")) * eval("aso#69145")[eval("aso#20262")] / eval("aso#45610");
            }
            if(els)
            {
               eval("aso#61343")[eval("aso#20262")] = 0;
               eval("aso#70958")[eval("aso#90317")[eval("aso#20262")]] = true;
               eval("aso#70958")[eval("aso#84328")[eval("aso#20262")]] = true;
            }
         }
      }
      else
      {
         eval("aso#70958")[eval("aso#90317")[eval("aso#20262")]] = 2;
         eval("aso#70958")[eval("aso#84328")[eval("aso#20262")]] = 2;
      }
      eval("aso#20262")++;
   }
}
var am_base_vol = 0;
var am_base_falkok_vol = 0;
var am_wind_vol = 0;
trace(_root.am_base);
if(_root.am_base == undefined)
{
   trace("MAKED");
   _root.am_base = new Sound(_root.createEmptyMovieClip("m_am_base",-1001));
   _root.am_falkok_base = new Sound(_root.createEmptyMovieClip("m_am_falkok_base",-1002));
   _root.am_wind = new Sound(_root.createEmptyMovieClip("m_am_wind",-1003));
   _root.am_base.attachSound("am_base");
   _root.am_falkok_base.attachSound("am_falkok_base");
   _root.am_wind.attachSound("am_wind");
}
_root.am_base.start(0,10000);
_root.am_falkok_base.start(0,10000);
_root.am_wind.start(0,10000);
_root.am_base.setVolume(0);
_root.am_falkok_base.setVolume(0);
_root.am_wind.setVolume(0);
_root["aso#61764"]._visible = false;
_root.score._visible = false;
_root["aso#93101"] = 2;
_root.stop();
_root.loose = 0;
_root["aso#75555"].gotoAndStop(_root["aso#87112"]);
_root._quality = "MEDIUM";
_root.console._visible = false;
_root.console.exec.onPress = function()
{
   if(_root.console._visible)
   {
      _root.console._visible = false;
      if(_root.console.cons.text == "nextlv")
      {
         _root["aso#87112"] += 1;
         _root["aso#75555"].player0["aso#69566"] = 0;
      }
      if(_root.console.cons.text == "kill")
      {
         _root["aso#75555"].player0["aso#69566"] = -100;
      }
      if(_root.console.cons.text == "god" || _root.console.cons.text == "godmode" || _root.console.cons.text == "noclip" || _root.console.cons.text == "iddqd" || _root.console.cons.text == "sv_cheats 1")
      {
         _root["aso#75555"].player0["aso#69566"] = -100;
         _root["aso#75555"].player0["aso#94914"] = -40;
         _root["aso#25830"]("No cheating, man! :D");
      }
      if(_root.console.cons.text == "pbsilentkill")
      {
         _root["aso#75555"].player0["aso#69566"] = 0;
      }
      if(_root.console.cons.text == "pbteam 0")
      {
         _root["aso#75555"].player0["aso#64969"] = 0;
      }
      if(_root.console.cons.text == "pbteam 1")
      {
         _root["aso#75555"].player0["aso#64969"] = 1;
      }
      if(_root.console.cons.text == "pbteam 2")
      {
         _root["aso#75555"].player0["aso#64969"] = 2;
      }
      if(_root.console.cons.text == "moreall")
      {
         _root.wealevel = 6;
         _root.grenades = 100;
         _root.global_money = 10000;
         my_so.data["aso#61764"] = 10000;
      }
      if(_root.console.cons.text == "morehp")
      {
         _root["aso#75555"].player0["aso#69566"] = 10000;
      }
   }
};
var §aso#78339§ = 0.017453292519943295;
_root.stat_kills = 0;
_root.stat_headshots = 0;
_root.stat_shots = 0;
if(my_so.data["aso#37808"] < _root["aso#87112"])
{
   my_so.data["aso#37808"] = _root["aso#87112"];
}
set("aso#70537",1);
grenades = 0;
set("aso#64127",8);
set("aso#00903",new Array());
set("aso#82936",new Array());
set("aso#57588",new Array());
set("aso#51599",new Array());
set("aso#70958",new Array());
set("aso#17057",new Array());
set("aso#97277",new Array());
around = new Array();
screenX = 800;
screenY = 400;
playerhmax = 400;
hscreenX = 400;
hscreenY = 200;
set("aso#79310",0);
fire = false;
hinttim = 0;
set("aso#55775",0);
grenadetim = 0;
set("aso#49786",new Array());
set("aso#90317",new Array());
set("aso#84328",new Array());
set("aso#69145",new Array());
set("aso#74713",new Array());
set("aso#09255",new Array());
set("aso#61343",new Array());
set("aso#96856",0.5);
set("aso#43376",0.6);
var §aso#82515§ = new Array();
var §aso#10647§ = new Array();
var §aso#32790§ = new Array();
var §aso#70116§ = new Array();
var §aso#94072§ = new Array();
var §aso#71929§ = 0;
var §aso#50757§ = new Array();
var emmit_i = new Array();
var §aso#12039§ = new Array();
var §aso#40592§ = 0;
var emmit2_i = new Array();
var emmit2_time = new Array();
var emmit2_x = new Array();
var emmit2_y = new Array();
var emmit2_tot = 0;
_root["aso#75555"].blood._visible = false;
_root["aso#75555"].bloodm._visible = false;
_root["aso#75555"].bloodmetal._visible = false;
_root["aso#75555"].bloodf._visible = false;
_root["aso#75555"].iskra._visible = false;
_root["aso#75555"].blood.gotoAndStop(1);
_root["aso#75555"].bloodf.gotoAndStop(1);
_root["aso#75555"].bloodm.gotoAndStop(1);
_root["aso#75555"].bloodmetal.gotoAndStop(1);
_root["aso#75555"].iskra.gotoAndStop(1);
_root["aso#75555"].men._visible = false;
_root["aso#75555"].enemy._visible = false;
_root["aso#75555"].falkok._visible = false;
_root["aso#75555"].men.gotoAndStop(1);
_root["aso#75555"].enemy.gotoAndStop(1);
_root["aso#75555"].falkok.gotoAndStop(1);
_root["aso#75555"].men["aso#33632"].gotoAndStop(1);
_root["aso#75555"].enemy["aso#33632"].gotoAndStop(1);
_root["aso#75555"].falkok["aso#33632"].gotoAndStop(1);
_root["aso#75555"].end._visible = false;
_root["aso#75555"].gilza._visible = false;
_root["aso#75555"].gilza2._visible = false;
_root["aso#75555"].gilza.disabled = true;
_root["aso#75555"].gilza2.disabled = true;
_root["aso#75555"].smoke._visible = false;
_root["aso#75555"].rock._visible = false;
set("aso#07863",0);
barrelstotal = 0;
heatotal = 0;
set("aso#76947",0);
while(eval("aso#76947") < 100)
{
   if(_root["aso#75555"].colmap["box" + eval("aso#76947")])
   {
      set("aso#07863",eval("aso#07863") + 1);
   }
   else
   {
      set("aso#76947",100);
   }
   eval("aso#76947")++;
}
set("aso#76947",0);
while(eval("aso#76947") < 100)
{
   if(_root["aso#75555"]["barrel" + eval("aso#76947")])
   {
      barrelstotal += 1;
   }
   else
   {
      set("aso#76947",100);
   }
   eval("aso#76947")++;
}
set("aso#76947",0);
while(eval("aso#76947") < 100)
{
   if(_root["aso#75555"]["medikit" + eval("aso#76947")])
   {
      heatotal += 1;
   }
   else
   {
      set("aso#76947",100);
   }
   eval("aso#76947")++;
}
playerstot = 0;
monsterstot = 0;
falkokstot = 0;
set("aso#06892",0);
while(eval("aso#06892") < 100)
{
   if(_root["aso#75555"]["start" + eval("aso#06892")])
   {
      playerstot += 1;
      _root["aso#75555"]["start" + eval("aso#06892")]._visible = false;
   }
   else
   {
      set("aso#06892",100);
   }
   eval("aso#06892")++;
}
set("aso#06892",0);
while(eval("aso#06892") < 100)
{
   if(_root["aso#75555"]["mon" + eval("aso#06892")])
   {
      monsterstot += 1;
      _root["aso#75555"]["mon" + eval("aso#06892")]._visible = false;
   }
   else
   {
      set("aso#06892",100);
   }
   eval("aso#06892")++;
}
set("aso#06892",0);
while(eval("aso#06892") < 100)
{
   if(_root["aso#75555"]["fal" + eval("aso#06892")])
   {
      falkokstot += 1;
      _root["aso#75555"]["fal" + eval("aso#06892")]._visible = false;
   }
   else
   {
      set("aso#06892",100);
   }
   eval("aso#06892")++;
}
set("aso#60372",0);
maxef = 128;
set("aso#46160",2 * _root["aso#94493"] / 3);
set("aso#30427",0);
set("aso#39200",0);
if(my_so.data.weapon4 == -1)
{
   grenades = 3;
}
else
{
   grenades = 15;
}
set("aso#01453",_root["aso#75555"].men["aso#63577"]._xscale);
set("aso#06892",0);
while(eval("aso#06892") < playerstot)
{
   if(eval("aso#06892") == 0 && monstermode)
   {
      duplicateMovieClip(_root["aso#75555"].enemy,"player" + eval("aso#06892"),16384 + eval("aso#06892"));
   }
   else
   {
      duplicateMovieClip(_root["aso#75555"].men,"player" + eval("aso#06892"),16384 + eval("aso#06892"));
   }
   _root["aso#75555"]["player" + eval("aso#06892")].myi = eval("aso#06892");
   _root["aso#75555"]["player" + eval("aso#06892")].filters = _root["aso#75555"].men.filters;
   _root["aso#75555"]["player" + eval("aso#06892")]._x = _root["aso#75555"]["start" + eval("aso#06892")]._x;
   _root["aso#75555"]["player" + eval("aso#06892")]._y = _root["aso#75555"]["start" + eval("aso#06892")]._y;
   _root["aso#75555"]["player" + eval("aso#06892")].getdown = false;
   if(eval("aso#06892") == 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")].getdown = true;
   }
   _root["aso#75555"]["player" + eval("aso#06892")].easymove = 1;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg1 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg2 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg3 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg4 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg5 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg6 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg7 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg8 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg9 = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].opentop = false;
   if(eval("aso#06892") == 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = playerhmax;
   }
   else
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 100;
   }
   _root["aso#75555"]["player" + eval("aso#06892")].lhea = _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"];
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#67753"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#91288"] = 0;
   if(eval("aso#06892") != 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(1);
   }
   else
   {
      if(my_so.data["weapon" + my_so.data.lwea] != -1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(my_so.data.lwea);
      }
      else
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(6);
      }
      eval("aso#80702")(eval("aso#06892"));
   }
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
   _root["aso#75555"]["player" + eval("aso#06892")].sit = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].dead = false;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] = false;
   _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay(2);
   _root["aso#75555"]["player" + eval("aso#06892")]._visible = false;
   if(eval("aso#06892") == 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 4;
   }
   else
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 1;
   }
   if(eval("aso#06892") == 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 0;
   }
   else
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 1;
   }
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] + 1);
   _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] + 1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] + 1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] + 1);
   _root["aso#75555"]["player" + eval("aso#06892")].hunt = -1;
   if(eval("aso#06892") == 0 && monstermode)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 2;
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] = 1;
      _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay(2);
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(1);
      _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(1);
      _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(1);
      _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(1);
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(10);
   }
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]._visible = false;
   if(eval("aso#06892") == 0)
   {
      set("aso#09676",1);
      while(eval("aso#09676") < 10)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["w_upg" + eval("aso#09676")] = my_so.data["weapon" + eval("aso#09676")];
         eval("aso#09676")++;
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg8 > 2)
      {
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(6);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(7);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(7);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 7;
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg7 == -1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")].opentop = true;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(11);
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg7 == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(12);
      }
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 150 + 100 * _root["aso#75555"]["player" + eval("aso#06892")].w_upg8;
      playerhmax = 150 + 100 * _root["aso#75555"]["player" + eval("aso#06892")].w_upg8;
      eval("aso#80702")(eval("aso#06892"));
   }
   _root["aso#75555"]["start" + eval("aso#06892")].unloadMovie();
   eval("aso#06892")++;
}
set("aso#06892",playerstot);
while(eval("aso#06892") < playerstot + monsterstot)
{
   duplicateMovieClip(_root["aso#75555"].enemy,"player" + eval("aso#06892"),16384 + eval("aso#06892"));
   _root["aso#75555"]["player" + eval("aso#06892")].filters = _root["aso#75555"].men.filters;
   _root["aso#75555"]["player" + eval("aso#06892")]._x = _root["aso#75555"]["mon" + (eval("aso#06892") - playerstot)]._x;
   _root["aso#75555"]["player" + eval("aso#06892")]._y = _root["aso#75555"]["mon" + (eval("aso#06892") - playerstot)]._y;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 300;
   _root["aso#75555"]["player" + eval("aso#06892")].lhea = _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"];
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#67753"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#91288"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].easymove = 0.4;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
   _root["aso#75555"]["player" + eval("aso#06892")].sit = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].dead = false;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] = false;
   _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay(2);
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(10);
   _root["aso#75555"]["player" + eval("aso#06892")]._visible = false;
   _root["aso#75555"]["player" + eval("aso#06892")].opentop = false;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 2;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] = 1;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 2;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].hunt = -1;
   _root["aso#75555"]["start" + eval("aso#06892")].unloadMovie();
   eval("aso#06892")++;
}
playerstot += monsterstot;
set("aso#06892",playerstot);
while(eval("aso#06892") < playerstot + falkokstot)
{
   duplicateMovieClip(_root["aso#75555"].falkok,"player" + eval("aso#06892"),16384 + eval("aso#06892"));
   _root["aso#75555"]["player" + eval("aso#06892")].filters = _root["aso#75555"].men.filters;
   _root["aso#75555"]["player" + eval("aso#06892")]._x = _root["aso#75555"]["fal" + (eval("aso#06892") - playerstot)]._x;
   _root["aso#75555"]["player" + eval("aso#06892")]._y = _root["aso#75555"]["fal" + (eval("aso#06892") - playerstot)]._y;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"] = 250;
   _root["aso#75555"]["player" + eval("aso#06892")].lhea = _root["aso#75555"]["player" + eval("aso#06892")]["aso#69566"];
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#67753"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#91288"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].easymove = 0.6;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#85720"] = 1;
   _root["aso#75555"]["player" + eval("aso#06892")].sit = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#26251"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].dead = false;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#91709"] = false;
   _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay(2);
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(2);
   _root["aso#75555"]["player" + eval("aso#06892")].w_upg2 = 2;
   _root["aso#75555"]["player" + eval("aso#06892")]._visible = false;
   _root["aso#75555"]["player" + eval("aso#06892")].opentop = false;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#64969"] = 3;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#14273"] = 2;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#97698"] = 6;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#39621"].gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].hunt = -1;
   _root["aso#75555"]["start" + eval("aso#06892")].unloadMovie();
   eval("aso#06892")++;
}
playerstot += falkokstot;
_root["aso#75555"].plazma._visible = false;
pulstot = 0;
pulsmax = 32;
_root.glow._visible = false;
_root.glow._alpha = 0;
_root["aso#75555"]._x = - _root["aso#75555"].player0.body._x - _root["aso#75555"].player0._x + hscreenX;
_root["aso#75555"]._y = - _root["aso#75555"].player0.body._y - _root["aso#75555"].player0._y + hscreenY;
pspeed = 6;
