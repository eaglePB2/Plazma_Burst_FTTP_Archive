function stpsnds()
{
   _root.am_base.stop();
   _root.am_falkok_base.stop();
   _root.am_wind.stop();
   _root.am_base = undefined;
   _root.am_falkok_base = undefined;
   _root.am_wind = undefined;
}
function §aso#90317§(p1x, p1y, p2x, p2y)
{
   return Math.sqrt(Math.pow(p1x - p2x,2) + Math.pow(p1y - p2y,2));
}
function §aso#76947§(x, y, typ, pntox, pntoy, fir, count)
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
      set("aso#24438",count);
   }
   else
   {
      set("aso#24438",1);
      if(typ == 0)
      {
         set("aso#24438",1);
      }
      if(typ == 1)
      {
         set("aso#24438",3);
      }
      if(typ == 2)
      {
         set("aso#24438",10);
      }
      if(typ == 3)
      {
         set("aso#24438",1);
      }
      if(typ == 4)
      {
         set("aso#24438",2);
      }
      if(typ == 5)
      {
         set("aso#24438",3);
      }
      if(typ == 6)
      {
         set("aso#24438",1);
      }
      if(typ == 7)
      {
         set("aso#24438",2);
      }
      if(typ == 8)
      {
         set("aso#24438",1);
      }
      if(typ == 9)
      {
         set("aso#24438",3);
      }
      if(typ == 10)
      {
         set("aso#24438",10);
      }
      if(typ == 11)
      {
         set("aso#24438",2);
      }
      if(typ == 1 || typ == 2 || typ == 9 || typ == 10)
      {
         set("aso#24438",eval("aso#24438") * eval("aso#82094"));
      }
   }
   ti = 0;
   while(ti < eval("aso#24438"))
   {
      if(typ == 0)
      {
         duplicateMovieClip(_root["aso#56196"].iskra,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if(typ == 1 || typ == 2 || typ == 8)
      {
         duplicateMovieClip(_root["aso#56196"].blood,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if(typ == 3)
      {
         duplicateMovieClip(_root["aso#56196"].gilza,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if(typ == 4)
      {
         duplicateMovieClip(_root["aso#56196"].gilza2,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if(typ == 5)
      {
         duplicateMovieClip(_root["aso#56196"].bloodm,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if(typ == 6)
      {
         duplicateMovieClip(_root["aso#56196"].smoke,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if(typ == 7)
      {
         duplicateMovieClip(_root["aso#56196"].rock,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if(typ == 9 || typ == 10)
      {
         duplicateMovieClip(_root["aso#56196"].bloodf,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if(typ == 11)
      {
         duplicateMovieClip(_root["aso#56196"].bloodmetal,"p" + eval("aso#09676"),16384 + (eval("aso#09676") + 200));
      }
      if((ti == 0 || typ == 7 || typ == 11) && typ != 8)
      {
         _root["aso#56196"]["p" + eval("aso#09676")].gotoAndPlay(1);
      }
      else
      {
         _root["aso#56196"]["p" + eval("aso#09676")].gotoAndPlay(3 + Math.floor(Math.random() * 5));
      }
      if(fir == false)
      {
         _root["aso#56196"]["p" + eval("aso#09676")].gotoAndPlay(3 + Math.floor(Math.random() * 5));
      }
      _root["aso#56196"]["p" + eval("aso#09676")]._x = x;
      _root["aso#56196"]["p" + eval("aso#09676")]._y = y;
      _root["aso#56196"]["p" + eval("aso#09676")]["aso#38229"] = pntox;
      _root["aso#56196"]["p" + eval("aso#09676")]["aso#75555"] = pntoy;
      if(eval("aso#24438") != 1 && eval("aso#24438") != 9 && typ != 7)
      {
         _root["aso#56196"]["p" + eval("aso#09676")]._x = x - 4 + Math.random() * 8;
         _root["aso#56196"]["p" + eval("aso#09676")]._y = y - 4 + Math.random() * 8;
      }
      set("aso#09676",eval("aso#09676") + 1);
      ti++;
   }
   if(eval("aso#09676") > maxef)
   {
      set("aso#09676",0);
   }
}
function §aso#17057§(§aso#20812§, §aso#52149§, §aso#89475§, type, btox, btoy)
{
   if(type == "shot")
   {
      if(aso#89475 == 0)
      {
         _root["aso#76947"](aso#20812,aso#52149,1,btox,btoy);
      }
      else if(aso#89475 == 1)
      {
         _root["aso#76947"](aso#20812,aso#52149,5,btox,btoy);
         _root["aso#76947"](aso#20812,aso#52149,11);
      }
      else if(aso#89475 == 2)
      {
         _root["aso#76947"](aso#20812,aso#52149,9,btox,btoy);
      }
   }
   else if(type == "shot_head")
   {
      if(aso#89475 == 0)
      {
         _root["aso#76947"](aso#20812,aso#52149,2,btox,btoy);
      }
      else if(aso#89475 == 1)
      {
         _root["aso#76947"](aso#20812,aso#52149,5,btox,btoy);
         _root["aso#76947"](aso#20812,aso#52149,5,btox,btoy);
         _root["aso#76947"](aso#20812,aso#52149,11);
      }
      else if(aso#89475 == 2)
      {
         _root["aso#76947"](aso#20812,aso#52149,10,btox,btoy);
      }
   }
   else if(type == "fall")
   {
      if(aso#89475 == 0)
      {
         _root["aso#76947"](aso#20812,aso#52149,1);
      }
      else if(aso#89475 == 1)
      {
         _root["aso#76947"](aso#20812,aso#52149,5);
      }
      else if(aso#89475 == 2)
      {
         _root["aso#76947"](aso#20812,aso#52149,9);
      }
   }
   else if(type == "glass")
   {
      if(aso#89475 == 0)
      {
         _root["aso#76947"](aso#20812,aso#52149,1);
      }
      else if(aso#89475 == 1)
      {
         _root["aso#76947"](aso#20812,aso#52149,11);
      }
      else if(aso#89475 == 2)
      {
         _root["aso#76947"](aso#20812,aso#52149,9);
      }
   }
   else if(type == "barrel")
   {
      if(aso#89475 == 0)
      {
         _root["aso#76947"](aso#20812,aso#52149,2);
      }
      else if(aso#89475 == 1)
      {
         _root["aso#76947"](aso#20812,aso#52149,5);
         _root["aso#76947"](aso#20812,aso#52149,11);
      }
      else if(aso#89475 == 2)
      {
         _root["aso#76947"](aso#20812,aso#52149,10);
      }
   }
   else if(type == "rocket")
   {
      if(aso#89475 == 0)
      {
         _root["aso#76947"](aso#20812,aso#52149,2,btox,btoy);
      }
      else if(aso#89475 == 1)
      {
         _root["aso#76947"](aso#20812,aso#52149,5,btox,btoy);
         _root["aso#76947"](aso#20812,aso#52149,11);
      }
      else if(aso#89475 == 2)
      {
         _root["aso#76947"](aso#20812,aso#52149,10,btox,btoy);
      }
   }
   else if(type == "flow")
   {
      if(aso#89475 == 0)
      {
         _root["aso#76947"](aso#20812,aso#52149,1,btox,btoy,false,1);
      }
      else if(aso#89475 == 1)
      {
         _root["aso#76947"](aso#20812,aso#52149,5,btox,btoy,false,1);
      }
      else if(aso#89475 == 2)
      {
         _root["aso#76947"](aso#20812,aso#52149,9,btox,btoy,false,1);
      }
   }
}
function §aso#01453§()
{
   set("aso#87533",0);
   while(eval("aso#87533") < eval("aso#45189"))
   {
      if(eval("aso#13852")[eval("aso#49786")[eval("aso#87533")]] != 2)
      {
         if(eval("aso#45610")[eval("aso#39621")[eval("aso#49786")[eval("aso#87533")]]] == true || eval("aso#45610")[eval("aso#64969")[eval("aso#49786")[eval("aso#87533")]]] == true)
         {
            eval("aso#40592")[eval("aso#87533")]._xscale = Math.abs(eval("aso#40592")[eval("aso#87533")]._xscale) * eval("aso#06050")[eval("aso#87533")];
            eval("aso#40592")[eval("aso#87533")]._x = eval("aso#50207")[eval("aso#39621")[eval("aso#49786")[eval("aso#87533")]]];
            eval("aso#40592")[eval("aso#87533")]._y = eval("aso#32240")[eval("aso#39621")[eval("aso#49786")[eval("aso#87533")]]];
            eval("aso#40592")[eval("aso#87533")]._rotation = eval("aso#68724")[eval("aso#87533")] - Math.atan2(eval("aso#50207")[eval("aso#39621")[eval("aso#49786")[eval("aso#87533")]]] - eval("aso#50207")[eval("aso#64969")[eval("aso#49786")[eval("aso#87533")]]],eval("aso#32240")[eval("aso#39621")[eval("aso#49786")[eval("aso#87533")]]] - eval("aso#32240")[eval("aso#64969")[eval("aso#49786")[eval("aso#87533")]]]) / 3.141592653589793 * 180;
            if(eval("aso#92680")[eval("aso#87533")])
            {
               cdi = eval("aso#90317")(eval("aso#50207")[eval("aso#39621")[eval("aso#49786")[eval("aso#87533")]]],eval("aso#32240")[eval("aso#39621")[eval("aso#49786")[eval("aso#87533")]]],eval("aso#50207")[eval("aso#64969")[eval("aso#49786")[eval("aso#87533")]]],eval("aso#32240")[eval("aso#64969")[eval("aso#49786")[eval("aso#87533")]]]);
               cdi = (1 - cdi / 32.79) * 60;
               eval("aso#40592")[eval("aso#87533")].gotoAndStop(Math.max(1,Math.min(30,Math.round(cdi))));
            }
         }
      }
      eval("aso#87533")++;
   }
   set("aso#87533",0);
   while(eval("aso#87533") < eval("aso#09255"))
   {
      if(eval("aso#73321")[eval("aso#87533")] > 0)
      {
         eval("aso#73321")[eval("aso#87533")] -= 1;
         if(Math.random() > 0.5 && _root.opt_eff > 1 || Math.random() > 0.9 && _root.opt_eff == 1)
         {
            eval("aso#17057")(eval("aso#50207")[eval("aso#55354")[eval("aso#87533")]],eval("aso#32240")[eval("aso#55354")[eval("aso#87533")]],_root["aso#56196"]["player" + emmit_i[eval("aso#87533")]]["aso#20262"],"flow",Math.random() * 12 - 6,Math.random() * 12 - 6);
         }
      }
      else if(eval("aso#87533") == eval("aso#09255") - 1)
      {
         eval("aso#09255")--;
      }
      eval("aso#87533")++;
   }
   set("aso#87533",0);
   while(eval("aso#87533") < emmit2_tot)
   {
      if(emmit2_time[eval("aso#87533")] > 0)
      {
         emmit2_time[eval("aso#87533")] -= 1;
         if(_root["aso#56196"]["player" + emmit2_i[eval("aso#87533")]]["aso#12881"] > 0)
         {
            if(Math.random() > 0.8 && _root.opt_eff > 1 || Math.random() > 0.9 && _root.opt_eff == 1)
            {
               eval("aso#17057")(_root["aso#56196"]["player" + emmit2_i[eval("aso#87533")]]._x + emmit2_x[eval("aso#87533")],_root["aso#56196"]["player" + emmit2_i[eval("aso#87533")]]._y + emmit2_y[eval("aso#87533")],_root["aso#56196"]["player" + emmit2_i[eval("aso#87533")]]["aso#20262"],"flow",Math.random() * 6 - 3,Math.random() * 6 - 3);
            }
         }
      }
      else if(eval("aso#87533") == emmit2_tot - 1)
      {
         emmit2_tot--;
      }
      eval("aso#87533")++;
   }
}
function §aso#70958§(x, y, sx, sy, rad, round)
{
   eval("aso#50207")[eval("aso#54383")] = x;
   eval("aso#32240")[eval("aso#54383")] = y;
   eval("aso#69566")[eval("aso#54383")] = sx;
   eval("aso#63577")[eval("aso#54383")] = sy;
   eval("aso#45610")[eval("aso#54383")] = true;
   if(rad != undefined)
   {
      eval("aso#76526")[eval("aso#54383")] = rad;
   }
   else
   {
      eval("aso#76526")[eval("aso#54383")] = 0;
   }
   if(round == undefined)
   {
      around[eval("aso#54383")] = false;
   }
   else
   {
      around[eval("aso#54383")] = true;
   }
   eval("aso#54383")++;
   return eval("aso#54383") - 1;
}
function §aso#88925§(a, a2, type, §aso#63156§, damp)
{
   eval("aso#39621")[eval("aso#69145")] = a;
   eval("aso#64969")[eval("aso#69145")] = a2;
   if(aso#63156 != undefined)
   {
      eval("aso#30427")[eval("aso#69145")] = aso#63156;
   }
   else
   {
      eval("aso#30427")[eval("aso#69145")] = eval("aso#90317")(eval("aso#50207")[a],eval("aso#32240")[a],eval("aso#50207")[a2],eval("aso#32240")[a2]);
   }
   if(damp == undefined)
   {
      eval("aso#35995")[eval("aso#69145")] = 1;
   }
   else
   {
      eval("aso#35995")[eval("aso#69145")] = damp;
   }
   eval("aso#48394")[eval("aso#69145")] = type;
   eval("aso#13852")[eval("aso#69145")] = true;
   eval("aso#69145")++;
   return eval("aso#69145") - 1;
}
function §aso#12460§(§aso#78339§, §aso#06892§, pan, flip, isLeg)
{
   eval("aso#40592")[eval("aso#45189")] = aso#78339;
   eval("aso#49786")[eval("aso#45189")] = aso#06892;
   eval("aso#68724")[eval("aso#45189")] = pan;
   eval("aso#06050")[eval("aso#45189")] = flip;
   if(isLeg == true)
   {
      eval("aso#92680")[eval("aso#45189")] = true;
   }
   else
   {
      eval("aso#92680")[eval("aso#45189")] = false;
   }
   eval("aso#45189")++;
}
function Blood(a, time, ni)
{
   eval("aso#55354")[eval("aso#09255")] = a;
   emmit_i[eval("aso#09255")] = ni;
   eval("aso#73321")[eval("aso#09255")] = time;
   eval("aso#09255")++;
}
function Blood2(ni, time, nx, ny)
{
   emmit2_i[emmit2_tot] = ni;
   emmit2_time[emmit2_tot] = time;
   emmit2_x[emmit2_tot] = nx;
   emmit2_y[emmit2_tot] = ny;
   emmit2_tot++;
}
function §aso#61343§(§aso#87533§)
{
   set("aso#56746",false);
   if(_root["aso#56196"]["player" + aso#87533].w_upg1 == 2 && _root["aso#56196"]["player" + aso#87533]["aso#44218"]._currentframe == 1)
   {
      set("aso#56746",true);
   }
   if(eval("aso#56746"))
   {
      _root["aso#56196"]["player" + aso#87533]["aso#51599"].gotoAndStop(_root["aso#56196"]["player" + aso#87533]["aso#44218"]._currentframe);
      if(_root["aso#56196"]["player" + aso#87533]["aso#51599"]._visible == false)
      {
         _root["aso#56196"]["player" + aso#87533]["aso#51599"]._visible = true;
         _root["aso#56196"]["player" + aso#87533]["aso#51599"]._alpha = 0;
      }
      else if(_root["aso#56196"]["player" + aso#87533]["aso#51599"]._alpha == 0)
      {
         _root["aso#56196"]["player" + aso#87533]["aso#51599"]._alpha = 100;
      }
      _root["aso#56196"]["player" + aso#87533]["aso#51599"]._xscale = eval("aso#37387");
      _root["aso#56196"]["player" + aso#87533]["aso#51599"]._yscale = eval("aso#37387");
   }
   else
   {
      _root["aso#56196"]["player" + aso#87533]["aso#51599"].gotoAndStop(1);
      _root["aso#56196"]["player" + aso#87533]["aso#51599"]._visible = false;
      _root["aso#56196"]["player" + aso#87533]["aso#51599"]._xscale = 0;
      _root["aso#56196"]["player" + aso#87533]["aso#51599"]._yscale = 0;
   }
}
function §aso#32790§(§aso#87533§)
{
   if(aso#87533 == 0)
   {
      if(Math.random() > 0.5)
      {
         _root["aso#56196"]["player" + aso#87533].sou.gotoAndStop(24);
      }
      else
      {
         _root["aso#56196"]["player" + aso#87533].sou.gotoAndStop(25);
      }
   }
   else
   {
      _root["aso#56196"]["player" + aso#87533].sou.gotoAndStop(10 + Math.round(Math.random() * 2));
   }
   _root["aso#56196"]["player" + aso#87533].deadtime = 0;
   _root["aso#56196"]["player" + aso#87533].suffer = true;
   if(aso#87533 != 0)
   {
      _root.stat_kills++;
      if(_root["aso#56196"]["player" + aso#87533].say_die != undefined)
      {
         eval("aso#10647")(_root["aso#56196"]["player" + aso#87533].say_die);
      }
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0)
   {
      set("aso#43376",4);
      set("aso#47973",5);
      set("aso#24017",8);
      set("aso#30006",3);
      set("aso#82515",4);
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 1)
   {
      set("aso#43376",4);
      set("aso#47973",5);
      set("aso#24017",15);
      set("aso#30006",10);
      set("aso#82515",5);
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2)
   {
      set("aso#43376",4);
      set("aso#47973",8);
      set("aso#24017",7);
      set("aso#30006",4);
      set("aso#82515",6);
   }
   set("aso#66361",_root["aso#56196"]["player" + aso#87533]["aso#38229"]);
   set("aso#97698",_root["aso#56196"]["player" + aso#87533]["aso#75555"]);
   p_body = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533].body._x,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533].body._y,eval("aso#66361"),eval("aso#97698"),eval("aso#43376"));
   _root["aso#56196"]["player" + aso#87533]["aso#16636"] = p_body;
   _root["aso#56196"]["player" + aso#87533].center = p_body;
   p_arm1 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533].arm1._x,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533].arm1._y,eval("aso#66361"),eval("aso#97698"),eval("aso#24017"));
   _root["aso#56196"]["player" + aso#87533]["aso#59951"] = p_arm1;
   set("aso#79731",_root["aso#56196"]["player" + aso#87533]["aso#82936"].upper1._rotation);
   set("aso#81123",_root["aso#56196"]["player" + aso#87533]["aso#82936"].upper2._rotation);
   _root["aso#56196"]["player" + aso#87533]["aso#82936"].gotoAndStop(1);
   _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._rotation = eval("aso#79731");
   _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._rotation = eval("aso#81123");
   _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"].gotoAndStop(1);
   _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"].gotoAndStop(1);
   if(_root["aso#56196"]["player" + aso#87533]["aso#12881"] > -10)
   {
      p_subleg1 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._x + _root["aso#56196"]["player" + aso#87533]["aso#82936"]._x - Math.sin(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._rotation * eval("aso#02295")) * 35,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._y + _root["aso#56196"]["player" + aso#87533]["aso#82936"]._y + Math.cos(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._rotation * eval("aso#02295")) * (35 - eval("aso#82515")),eval("aso#66361"),eval("aso#97698"),eval("aso#82515"));
      p_subleg2 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._x + _root["aso#56196"]["player" + aso#87533]["aso#82936"]._x - Math.sin(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._rotation * eval("aso#02295")) * 35,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._y + _root["aso#56196"]["player" + aso#87533]["aso#82936"]._y + Math.cos(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._rotation * eval("aso#02295")) * (35 - eval("aso#82515")),eval("aso#66361"),eval("aso#97698"),eval("aso#82515"));
   }
   else
   {
      p_subleg1 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._x + _root["aso#56196"]["player" + aso#87533]["aso#82936"]._x - Math.sin(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._rotation * eval("aso#02295")) * 35,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._y + _root["aso#56196"]["player" + aso#87533]["aso#82936"]._y + Math.cos(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"]._rotation * eval("aso#02295")) * (35 - eval("aso#82515")),eval("aso#66361"),eval("aso#97698"),eval("aso#82515"));
      p_subleg2 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._x + _root["aso#56196"]["player" + aso#87533]["aso#82936"]._x - Math.sin(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._rotation * eval("aso#02295")) * 35,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._y + _root["aso#56196"]["player" + aso#87533]["aso#82936"]._y + Math.cos(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"]._rotation * eval("aso#02295")) * (35 - eval("aso#82515")),eval("aso#66361"),eval("aso#97698"),eval("aso#82515"));
   }
   _root["aso#56196"]["player" + aso#87533].a_stand1 = p_subleg1;
   _root["aso#56196"]["player" + aso#87533].a_stand2 = p_subleg2;
   _root["aso#56196"]["player" + aso#87533]["aso#82936"]._x = 0;
   _root["aso#56196"]["player" + aso#87533]["aso#82936"]._y = 0;
   p_subarm1 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533].arm1._x - Math.sin(_root["aso#56196"]["player" + aso#87533].arm1._rotation * eval("aso#02295")) * 26,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533].arm1._y + Math.cos(_root["aso#56196"]["player" + aso#87533].arm1._rotation * eval("aso#02295")) * 26,eval("aso#66361"),eval("aso#97698"),eval("aso#30006"));
   p_subarm2 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533].arm2._x - Math.sin(_root["aso#56196"]["player" + aso#87533].arm2._rotation * eval("aso#02295")) * 26,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533].arm2._y + Math.cos(_root["aso#56196"]["player" + aso#87533].arm2._rotation * eval("aso#02295")) * 26,eval("aso#66361"),eval("aso#97698"),eval("aso#30006"));
   body_break = false;
   p_head = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._x,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._y,eval("aso#66361"),eval("aso#97698"),eval("aso#47973"));
   if(my_so.data.breaking)
   {
      if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 1)
      {
         if(_root["aso#56196"]["player" + aso#87533]["aso#15665"] == "aso#14273" || _root["aso#56196"]["player" + aso#87533]["aso#15665"] == "all")
         {
            if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 && _root["aso#56196"]["player" + aso#87533]["aso#12881"] < -50 && _root["aso#56196"]["player" + aso#87533].opentop || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 && _root["aso#56196"]["player" + aso#87533]["aso#12881"] < -100 && !_root["aso#56196"]["player" + aso#87533].opentop || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2 && _root["aso#56196"]["player" + aso#87533]["aso#12881"] < -100 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 1 && _root["aso#56196"]["player" + aso#87533]["aso#12881"] < -100 && _root["aso#56196"]["player" + aso#87533]["aso#14273"]._currentframe == 1 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 1 && _root["aso#56196"]["player" + aso#87533]["aso#12881"] < -150)
            {
               Blood(p_head,40,aso#87533);
               _root["aso#56196"]["player" + aso#87533].suffer = false;
               _root["aso#56196"]["player" + aso#87533]["aso#14273"].gotoAndStop(10);
               eval("aso#17057")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#38229"] + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._x / _root["aso#56196"]["player" + aso#87533]._xscale * 100,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#75555"] + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._y,_root["aso#56196"]["player" + aso#87533]["aso#20262"],"shot_head",Math.random() * 8 - 4 + _root["aso#56196"]["player" + aso#87533]["aso#38229"],_root["aso#56196"]["player" + aso#87533]["aso#75555"] - Math.random() * 6);
               eval("aso#17057")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#38229"] + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._x / _root["aso#56196"]["player" + aso#87533]._xscale * 100,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#75555"] + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._y,_root["aso#56196"]["player" + aso#87533]["aso#20262"],"shot_head",Math.random() * 8 - 4 + _root["aso#56196"]["player" + aso#87533]["aso#38229"],_root["aso#56196"]["player" + aso#87533]["aso#75555"] - Math.random() * 6);
            }
         }
         if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2)
         {
            if(_root["aso#56196"]["player" + aso#87533]["aso#15665"] == "body" || _root["aso#56196"]["player" + aso#87533]["aso#15665"] == "arm" || _root["aso#56196"]["player" + aso#87533]["aso#15665"] == "all")
            {
               if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 && _root["aso#56196"]["player" + aso#87533]["aso#12881"] < -150 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2 && _root["aso#56196"]["player" + aso#87533]["aso#12881"] < -140)
               {
                  p_body_div1 = eval("aso#70958")((eval("aso#50207")[p_arm1] + eval("aso#50207")[p_body]) / 2,(eval("aso#32240")[p_arm1] + eval("aso#32240")[p_body]) / 2,(eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#63577")[p_arm1] + eval("aso#63577")[p_body]) / 2,0);
                  p_body_div2 = eval("aso#70958")((eval("aso#50207")[p_arm1] + eval("aso#50207")[p_body]) / 2,(eval("aso#32240")[p_arm1] + eval("aso#32240")[p_body]) / 2,(eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#63577")[p_arm1] + eval("aso#63577")[p_body]) / 2,0);
                  eval("aso#17057")((eval("aso#50207")[p_arm1] + eval("aso#50207")[p_body]) / 2,(eval("aso#32240")[p_arm1] + eval("aso#32240")[p_body]) / 2,_root["aso#56196"]["player" + aso#87533]["aso#20262"],"shot_head",Math.random() * 8 - 4 + _root["aso#56196"]["player" + aso#87533]["aso#38229"],_root["aso#56196"]["player" + aso#87533]["aso#75555"] - Math.random() * 6);
                  eval("aso#17057")((eval("aso#50207")[p_arm1] + eval("aso#50207")[p_body]) / 2,(eval("aso#32240")[p_arm1] + eval("aso#32240")[p_body]) / 2,_root["aso#56196"]["player" + aso#87533]["aso#20262"],"shot_head",Math.random() * 8 - 4 + _root["aso#56196"]["player" + aso#87533]["aso#38229"],_root["aso#56196"]["player" + aso#87533]["aso#75555"] - Math.random() * 6);
                  body_break = true;
                  _root["aso#56196"]["player" + aso#87533].suffer = false;
                  Blood(p_body,50,aso#87533);
                  Blood(p_arm1,50,aso#87533);
               }
            }
         }
      }
   }
   _root["aso#56196"]["player" + aso#87533].a_stand3 = p_head;
   if(_root["aso#56196"]["player" + aso#87533]["aso#12881"] > -10)
   {
      p_subhead = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._x + Math.sin(_root["aso#56196"]["player" + aso#87533]["aso#14273"]._rotation * eval("aso#02295")) * 8,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._y - Math.cos(_root["aso#56196"]["player" + aso#87533]["aso#14273"]._rotation * eval("aso#02295")) * 8,eval("aso#66361"),eval("aso#97698"),eval("aso#47973"));
   }
   else
   {
      p_subhead = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._x + Math.sin(_root["aso#56196"]["player" + aso#87533]["aso#14273"]._rotation * eval("aso#02295")) * 8,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#14273"]._y - Math.cos(_root["aso#56196"]["player" + aso#87533]["aso#14273"]._rotation * eval("aso#02295")) * 8,eval("aso#66361"),eval("aso#97698"),eval("aso#47973"));
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2)
   {
      p_gun = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._x,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._y,eval("aso#66361") * 0.5,eval("aso#97698") * 0.5);
      sc = _root["aso#56196"]["player" + aso#87533]["aso#44218"]._xscale / 100;
      p_subgun = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._x - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#27222"]._x * sc - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#27222"]._y * sc,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._y + Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#27222"]._x * sc - Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#27222"]._y * sc,eval("aso#66361") * 0.5,eval("aso#97698") * 0.5);
      p_subgun2 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._x - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#58559"]._x * sc - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#58559"]._y * sc,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._y + Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#58559"]._x * sc - Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#58559"]._y * sc,eval("aso#66361") * 0.5,eval("aso#97698") * 0.5);
      p_subgun3 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._x - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#89896"]._x * sc - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#89896"]._y * sc,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._y + Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#89896"]._x * sc - Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#44218"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#44218"]["aso#89896"]._y * sc,eval("aso#66361") * 0.5,eval("aso#97698") * 0.5);
      if(_root["aso#56196"]["player" + aso#87533]["aso#51599"]._visible == true && _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0)
      {
         p2_gun = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._x,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#44218"]._y,eval("aso#66361") * 0.5,eval("aso#97698") * 0.5);
         p2_subgun = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#51599"]._x - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#27222"]._x * sc - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#27222"]._y * sc,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#51599"]._y + Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#27222"]._x * sc - Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#27222"]._y * sc,eval("aso#66361") * 0.5,eval("aso#97698") * 0.5);
         p2_subgun2 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#51599"]._x - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#58559"]._x * sc - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#58559"]._y * sc,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#51599"]._y + Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#58559"]._x * sc - Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#58559"]._y * sc,eval("aso#66361") * 0.5,eval("aso#97698") * 0.5);
         p2_subgun3 = eval("aso#70958")(_root["aso#56196"]["player" + aso#87533]._x + _root["aso#56196"]["player" + aso#87533]["aso#51599"]._x - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#89896"]._x * sc - Math.sin((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#89896"]._y * sc,_root["aso#56196"]["player" + aso#87533]._y + _root["aso#56196"]["player" + aso#87533]["aso#51599"]._y + Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation - 90) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#89896"]._x * sc - Math.cos((_root["aso#56196"]["player" + aso#87533]["aso#51599"]._rotation + 180) * eval("aso#02295")) * _root["aso#56196"]["player" + aso#87533]["aso#51599"]["aso#89896"]._y * sc,eval("aso#66361") * 0.5,eval("aso#97698") * 0.5);
      }
   }
   else
   {
      _root["aso#56196"]["player" + aso#87533]["aso#44218"]._visible = false;
   }
   eval("aso#91709")[p_body] = aso#87533;
   eval("aso#91709")[p_arm1] = aso#87533;
   eval("aso#91709")[p_body_div1] = aso#87533;
   eval("aso#91709")[p_body_div2] = aso#87533;
   eval("aso#91709")[p_subleg1] = aso#87533;
   eval("aso#91709")[p_subleg2] = aso#87533;
   eval("aso#91709")[p_subarm1] = aso#87533;
   eval("aso#91709")[p_subarm2] = aso#87533;
   if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0)
   {
      eval("aso#91709")[p_gun] = -1;
      eval("aso#91709")[p_subgun] = -1;
   }
   eval("aso#91709")[p_head] = aso#87533;
   eval("aso#91709")[p_subhead] = aso#87533;
   ch_leg1 = eval("aso#88925")(p_body,p_subleg1,1,28,0.1);
   ch_leg2 = eval("aso#88925")(p_body,p_subleg2,1,28,0.1);
   if(body_break)
   {
      ch_head = eval("aso#88925")(p_body,p_body_div1,0);
      ch_head3 = eval("aso#88925")(p_arm1,p_body_div2,0);
      eval("aso#88925")(p_body_div2,p_subhead,0);
      eval("aso#88925")(p_body_div1,p_subleg2,1,40);
      eval("aso#88925")(p_body_div1,p_subleg1,1,40);
   }
   else
   {
      eval("aso#88925")(p_body,p_arm1,0);
      ch_head = eval("aso#88925")(p_body,p_head,0);
      eval("aso#88925")(p_arm1,p_subleg2,1,45);
      eval("aso#88925")(p_arm1,p_subleg1,1,45);
      eval("aso#88925")(p_body,p_subhead,1,35);
   }
   ch_leg1 = eval("aso#88925")(p_body,p_subleg1,2,33);
   ch_leg2 = eval("aso#88925")(p_body,p_subleg2,2,33);
   eval("aso#88925")(p_arm1,p_head,0);
   ch_head2 = eval("aso#88925")(p_head,p_subhead,0);
   _root["aso#56196"]["player" + aso#87533]["aso#59951"] = p_arm1;
   _root["aso#56196"]["player" + aso#87533].gunanchor = p_gun;
   _root["aso#56196"]["player" + aso#87533]["aso#07442"] = p_subarm2;
   ch_arm1 = eval("aso#88925")(p_arm1,p_subarm1,0);
   ch_arm2 = eval("aso#88925")(p_arm1,p_subarm2,0);
   eval("aso#88925")(p_subleg2,p_subleg1,2,30);
   eval("aso#88925")(p_subleg2,p_subleg1,1,5);
   eval("aso#88925")(p_subarm2,p_subarm1,1,5);
   side = _root["aso#56196"]["player" + aso#87533]._xscale / 100;
   if(_root["aso#56196"]["player" + aso#87533]["aso#15665"] == "arm")
   {
      eval("aso#69566")[p_subarm1] -= side * 5;
      eval("aso#69566")[p_subarm2] -= side * 5;
      eval("aso#69566")[p_body] -= side * 5;
      eval("aso#69566")[p_arm1] += side * 10;
      if(Math.random() > 0.5)
      {
         eval("aso#69566")[p_subleg1] -= side * 5;
      }
      else
      {
         eval("aso#69566")[p_subleg2] -= side * 5;
      }
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#15665"] == "aso#14273")
   {
      eval("aso#69566")[p_arm1] -= side * 20;
      eval("aso#63577")[p_arm1] -= 5;
      eval("aso#69566")[p_body] -= side * 10;
      eval("aso#63577")[p_body] -= 5;
      if(Math.random() > 0.5)
      {
         eval("aso#69566")[p_subleg2] += side * 10;
         eval("aso#63577")[p_subleg2] -= 10;
      }
      else
      {
         eval("aso#69566")[p_subleg1] += side * 10;
         eval("aso#63577")[p_subleg1] -= 10;
      }
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#15665"] == "leg")
   {
      if(Math.random() > 0.5)
      {
         eval("aso#69566")[p_subleg1] -= side * 10;
         eval("aso#63577")[p_subleg1] -= 10;
      }
      else
      {
         eval("aso#69566")[p_subleg2] -= side * 10;
         eval("aso#63577")[p_subleg2] -= 10;
      }
      if(Math.random() > 0.5)
      {
         eval("aso#69566")[p_subleg2] += side * 5;
      }
      else
      {
         eval("aso#69566")[p_subleg1] += side * 5;
      }
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#15665"] == "body")
   {
      if(Math.random() > 0.5)
      {
         eval("aso#69566")[p_body] -= side * 10;
         eval("aso#69566")[p_subarm1] += side * 3;
         eval("aso#69566")[p_subarm2] += side * 3;
         if(Math.random() > 0.5)
         {
            eval("aso#69566")[p_subleg1] += side * 3;
            eval("aso#63577")[p_subleg1] -= 3;
         }
         else
         {
            eval("aso#69566")[p_subleg2] += side * 3;
            eval("aso#63577")[p_subleg2] -= 3;
         }
      }
      else
      {
         eval("aso#69566")[p_subarm1] -= side * 5;
         eval("aso#69566")[p_subarm2] -= side * 5;
         eval("aso#69566")[p_body] += side * 3;
         eval("aso#69566")[p_subleg1] -= side * 5;
         eval("aso#69566")[p_subleg2] += side * 5;
      }
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2)
   {
      ch_gun = eval("aso#88925")(p_gun,p_subgun,0);
      set("aso#87533aso#87533",0);
      while(eval("aso#87533aso#87533") < 2)
      {
         eval("aso#88925")(p_subgun,p_subgun2,0);
         eval("aso#88925")(p_subgun,p_subgun3,0);
         eval("aso#88925")(p_subgun2,p_subgun3,0);
         eval("aso#88925")(p_gun,p_subgun2,0);
         eval("aso#88925")(p_gun,p_subgun3,0);
         eval("aso#87533aso#87533")++;
      }
      if(_root["aso#56196"]["player" + aso#87533]["aso#51599"]._visible == true && _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 1)
      {
         ch_gun2 = eval("aso#88925")(p2_gun,p2_subgun,0);
         set("aso#87533aso#87533",0);
         while(eval("aso#87533aso#87533") < 2)
         {
            eval("aso#88925")(p2_subgun,p2_subgun2,0);
            eval("aso#88925")(p2_subgun,p2_subgun3,0);
            eval("aso#88925")(p2_subgun2,p2_subgun3,0);
            eval("aso#88925")(p2_gun,p2_subgun2,0);
            eval("aso#88925")(p2_gun,p2_subgun3,0);
            eval("aso#87533aso#87533")++;
         }
      }
   }
   if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2)
   {
      if(_root["aso#56196"]["player" + aso#87533]["aso#51599"]._visible == true && _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 1)
      {
         _root["aso#56196"]["player" + aso#87533].whold1 = eval("aso#88925")(p_subarm1,p_gun,3);
         _root["aso#56196"]["player" + aso#87533].whold2 = eval("aso#88925")(p_subarm2,p2_gun,3);
         eval("aso#88925")(p_gun,p2_gun,1,10);
      }
      else
      {
         _root["aso#56196"]["player" + aso#87533].whold1 = eval("aso#88925")(p_subarm1,p_gun,3);
         _root["aso#56196"]["player" + aso#87533].whold2 = eval("aso#88925")(p_subarm2,p_gun,3);
      }
   }
   flip = _root["aso#56196"]["player" + aso#87533]._xscale / 100;
   if(flip < 0)
   {
      eval("aso#50207")[p_body] -= _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_body] *= -1;
      eval("aso#50207")[p_body] += _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_arm1] -= _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_arm1] *= -1;
      eval("aso#50207")[p_arm1] += _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subleg1] -= _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subleg1] *= -1;
      eval("aso#50207")[p_subleg1] += _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subleg2] -= _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subleg2] *= -1;
      eval("aso#50207")[p_subleg2] += _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subarm1] -= _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subarm1] *= -1;
      eval("aso#50207")[p_subarm1] += _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subarm2] -= _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subarm2] *= -1;
      eval("aso#50207")[p_subarm2] += _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_head] -= _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_head] *= -1;
      eval("aso#50207")[p_head] += _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subhead] -= _root["aso#56196"]["player" + aso#87533]._x;
      eval("aso#50207")[p_subhead] *= -1;
      eval("aso#50207")[p_subhead] += _root["aso#56196"]["player" + aso#87533]._x;
      if(body_break)
      {
         eval("aso#50207")[p_body_div1] -= _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_body_div1] *= -1;
         eval("aso#50207")[p_body_div1] += _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_body_div2] -= _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_body_div2] *= -1;
         eval("aso#50207")[p_body_div2] += _root["aso#56196"]["player" + aso#87533]._x;
      }
      if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2)
      {
         eval("aso#50207")[p_gun] -= _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_gun] *= -1;
         eval("aso#50207")[p_gun] += _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_subgun] -= _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_subgun] *= -1;
         eval("aso#50207")[p_subgun] += _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_subgun2] -= _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_subgun2] *= -1;
         eval("aso#50207")[p_subgun2] += _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_subgun3] -= _root["aso#56196"]["player" + aso#87533]._x;
         eval("aso#50207")[p_subgun3] *= -1;
         eval("aso#50207")[p_subgun3] += _root["aso#56196"]["player" + aso#87533]._x;
         if(_root["aso#56196"]["player" + aso#87533]["aso#51599"]._visible == true && _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 1)
         {
            eval("aso#50207")[p2_gun] -= _root["aso#56196"]["player" + aso#87533]._x;
            eval("aso#50207")[p2_gun] *= -1;
            eval("aso#50207")[p2_gun] += _root["aso#56196"]["player" + aso#87533]._x;
            eval("aso#50207")[p2_subgun] -= _root["aso#56196"]["player" + aso#87533]._x;
            eval("aso#50207")[p2_subgun] *= -1;
            eval("aso#50207")[p2_subgun] += _root["aso#56196"]["player" + aso#87533]._x;
            eval("aso#50207")[p2_subgun2] -= _root["aso#56196"]["player" + aso#87533]._x;
            eval("aso#50207")[p2_subgun2] *= -1;
            eval("aso#50207")[p2_subgun2] += _root["aso#56196"]["player" + aso#87533]._x;
            eval("aso#50207")[p2_subgun3] -= _root["aso#56196"]["player" + aso#87533]._x;
            eval("aso#50207")[p2_subgun3] *= -1;
            eval("aso#50207")[p2_subgun3] += _root["aso#56196"]["player" + aso#87533]._x;
         }
      }
   }
   _root["aso#56196"]["player" + aso#87533]._x = 0;
   _root["aso#56196"]["player" + aso#87533]._y = 0;
   if(body_break)
   {
      _root["aso#56196"]["player" + aso#87533].jet = false;
      if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0)
      {
         _root["aso#56196"]["player" + aso#87533]["aso#82936"].toe.bloddy._visible = true;
      }
      if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2)
      {
         _root["aso#56196"]["player" + aso#87533]["aso#82936"].toe.bloddy2._visible = true;
      }
      _root["aso#56196"]["player" + aso#87533].body.gotoAndStop(5);
      eval("aso#12460")(_root["aso#56196"]["player" + aso#87533].body,ch_head3,0,flip);
   }
   else
   {
      eval("aso#12460")(_root["aso#56196"]["player" + aso#87533].body,ch_head,0,flip);
   }
   if(body_break)
   {
      eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#82936"].toe,ch_head,0,flip);
   }
   else
   {
      eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#82936"].toe,ch_head,0,flip);
   }
   eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#55775"],ch_leg1,180,flip,true);
   eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#82936"]["aso#87112"],ch_leg2,180,flip,true);
   eval("aso#12460")(_root["aso#56196"]["player" + aso#87533].arm1,ch_arm1,180,flip);
   eval("aso#12460")(_root["aso#56196"]["player" + aso#87533].arm2,ch_arm2,180,flip);
   eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#14273"],ch_head2,0,flip);
   if(_root["aso#56196"]["player" + aso#87533]["aso#20262"] == 0 || _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 2)
   {
      if(flip > 0)
      {
         eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#44218"],ch_gun,-90,flip);
      }
      else
      {
         eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#44218"],ch_gun,90,flip);
      }
      if(_root["aso#56196"]["player" + aso#87533]["aso#51599"]._visible == true && _root["aso#56196"]["player" + aso#87533]["aso#20262"] == 1)
      {
         if(flip > 0)
         {
            eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#51599"],ch_gun2,-90,flip);
         }
         else
         {
            eval("aso#12460")(_root["aso#56196"]["player" + aso#87533]["aso#51599"],ch_gun2,90,flip);
         }
      }
   }
   _root["aso#56196"]["player" + aso#87533]._xscale = 100;
}
function §aso#41984§(px, py, mast, §aso#08284§, §aso#21654§, §aso#84328§)
{
   ok = true;
   ip = 0;
   while(ip < pulstot && ok)
   {
      if(_root["aso#56196"]["pl" + ip]._visible == false)
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
   duplicateMovieClip(_root["aso#56196"].plazma,"pl" + ini,16384 + (-100 + ini));
   _root["aso#56196"]["pl" + ini].life = 0;
   _root["aso#56196"]["pl" + ini]._x = px + aso#21654;
   _root["aso#56196"]["pl" + ini]._y = py + aso#84328;
   _root["aso#56196"]["pl" + ini]["aso#08284"] = aso#08284;
   _root["aso#56196"]["pl" + ini]["aso#21654"] = aso#21654;
   _root["aso#56196"]["pl" + ini]["aso#84328"] = aso#84328;
   _root["aso#56196"]["pl" + ini]["aso#99090"] = mast;
   _root["aso#56196"]["pl" + ini].gotoAndStop(_root["aso#56196"]["player" + mast]["aso#44218"]._currentframe);
   _root["aso#56196"]["pl" + ini]._rotation = Math.atan2(aso#84328,aso#21654) / 3.141592653589793 * 180;
   if(ok)
   {
      pulstot++;
      if(pulstot >= pulsmax)
      {
         pulstot = 0;
      }
   }
}
function §aso#88504§(§aso#70537§, §aso#01874§, §aso#97277§, §aso#28614§)
{
   ok = true;
   set("aso#31398",- Math.atan2(aso#70537 - aso#97277,aso#01874 - aso#28614) - 1.5707963267948966);
   tracex = Math.cos(eval("aso#31398")) * 20;
   tracey = Math.sin(eval("aso#31398")) * 20;
   tracx = aso#70537;
   tracy = aso#01874;
   dst = Math.floor(eval("aso#90317")(aso#70537,aso#01874,aso#97277,aso#28614) / 20);
   z = 0;
   while(z < dst && ok == true)
   {
      if(_root["aso#56196"].colmap.hitTest(tracx + _root["aso#56196"]._x,tracy + _root["aso#56196"]._y,true))
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
   if(_root["aso#56196"].player0["aso#12881"] > 0 && _root.loose == 0)
   {
      set("aso#26251",1);
      while(eval("aso#26251") < 10)
      {
         my_so.data["weapon" + eval("aso#26251")] = _root["aso#56196"].player0["w_upg" + eval("aso#26251")];
         eval("aso#26251")++;
      }
      stpsnds();
      _root.auto_buy = true;
      _root.gotoAndStop(4);
   }
}
function §aso#86691§(hor, ver, a)
{
   hor = Math.abs(hor) * 0.5;
   ver = Math.abs(ver) * 0.5;
   if(hor > ver + 2)
   {
      _root["aso#56196"]["player" + eval("aso#91709")[a]].sou.gotoAndStop(9);
   }
   else
   {
      if(ver > 2)
      {
         if(ver <= 3)
         {
            _root["aso#56196"]["player" + eval("aso#91709")[a]].sou.gotoAndStop(7);
         }
      }
      if(ver > 3)
      {
         if(ver <= 4)
         {
            _root["aso#56196"]["player" + eval("aso#91709")[a]].sou.gotoAndStop(6);
         }
      }
      if(ver > 4)
      {
         _root["aso#56196"]["player" + eval("aso#91709")[a]].sou.gotoAndStop(8);
         if(ver > 6)
         {
            Blood(a,10 + Math.random() * 30,eval("aso#91709")[a]);
         }
      }
   }
}
function §aso#19841§(mess)
{
   hinttim = mess.length * 2 + 10;
   _root.hint.htmlText = "Hint: " + mess;
}
function §aso#10647§(mess)
{
   hinttim = mess.length * 2 + 10;
   _root.hint.htmlText = mess;
}
function §aso#95464§()
{
   a = 0;
   while(a < eval("aso#54383"))
   {
      if(eval("aso#45610")[a] == true)
      {
         eval("aso#50207")[a] += eval("aso#69566")[a];
         eval("aso#32240")[a] += eval("aso#63577")[a];
         if(eval("aso#32240")[a] > 1000)
         {
            if(_root["aso#56196"]._currentframe == 11)
            {
               eval("aso#86691")(eval("aso#69566")[a],eval("aso#63577")[a],a);
               eval("aso#32240")[a] = 1000;
               eval("aso#63577")[a] *= -0.5;
               eval("aso#69566")[a] *= 0.9;
            }
            else
            {
               eval("aso#69566")[a] *= 0.9;
               eval("aso#63577")[a] *= 0.9;
               if(eval("aso#32240")[a] > 1200)
               {
                  eval("aso#32240")[a] = 1200;
                  eval("aso#63577")[a] = 0;
               }
            }
         }
         set("aso#63156",eval("aso#90317")(eval("aso#69566")[a],eval("aso#63577")[a],0,0));
         if(eval("aso#63156") > eval("aso#74713"))
         {
            eval("aso#69566")[a] /= eval("aso#63156") * eval("aso#74713");
            eval("aso#63577")[a] /= eval("aso#63156") * eval("aso#74713");
         }
         if(eval("aso#63156") > 30)
         {
            eval("aso#69566")[a] = eval("aso#69566")[a] / eval("aso#63156") * 30;
            eval("aso#63577")[a] = eval("aso#63577")[a] / eval("aso#63156") * 30;
         }
         eval("aso#63577")[a] += eval("aso#57167");
         if(eval("aso#76526")[a] == 0 && _root["aso#56196"].colmap.hitTest(eval("aso#50207")[a] + _root["aso#56196"]._x,eval("aso#32240")[a] + _root["aso#56196"]._y,true) || eval("aso#76526")[a] > 0 && _root["aso#56196"].colmap.hitTest(eval("aso#50207")[a] + _root["aso#56196"]._x,eval("aso#32240")[a] + eval("aso#76526")[a] + _root["aso#56196"]._y,true))
         {
            set("aso#00903",0);
            while(eval("aso#00903") < eval("aso#64548"))
            {
               boxx = _root["aso#56196"].colmap["box" + eval("aso#00903")];
               if(eval("aso#50207")[a] > boxx._x)
               {
                  if(eval("aso#50207")[a] < boxx._x + boxx._xscale)
                  {
                     if(eval("aso#32240")[a] + eval("aso#76526")[a] > boxx._y)
                     {
                        if(eval("aso#32240")[a] + eval("aso#76526")[a] < boxx._y + boxx._yscale)
                        {
                           minside = Math.min(boxx._xscale,boxx._yscale);
                           if(boxx._yscale < boxx._xscale)
                           {
                              set("aso#19420",Math.max(boxx._x + boxx._yscale / 2,Math.min(boxx._x + boxx._xscale - boxx._yscale / 2,eval("aso#50207")[a] - eval("aso#69566")[a])));
                              set("aso#50757",boxx._y + boxx._yscale / 2);
                           }
                           else
                           {
                              set("aso#50757",Math.max(boxx._y + boxx._xscale / 2,Math.min(boxx._y + boxx._yscale - boxx._xscale / 2,eval("aso#32240")[a] - eval("aso#63577")[a])));
                              set("aso#19420",boxx._x + boxx._xscale / 2);
                           }
                           set("aso#65940",eval("aso#19420") - eval("aso#50207")[a] + eval("aso#69566")[a]);
                           set("aso#46581",eval("aso#50757") - eval("aso#32240")[a] + eval("aso#63577")[a]);
                           if(Math.abs(eval("aso#65940")) > Math.abs(eval("aso#46581")))
                           {
                              eval("aso#69566")[a] *= 0.5;
                              if(around[a])
                              {
                                 eval("aso#63577")[a] *= 0.9;
                              }
                              else if(eval("aso#63577")[a] > 0)
                              {
                                 eval("aso#63577")[a] = Math.max(eval("aso#63577")[a] - eval("aso#04658") * Math.abs(eval("aso#69566")[a]),0);
                              }
                              else
                              {
                                 eval("aso#63577")[a] = Math.min(eval("aso#63577")[a] + eval("aso#04658") * Math.abs(eval("aso#69566")[a]),0);
                              }
                              eval("aso#86691")(eval("aso#63577")[a],eval("aso#69566")[a],a);
                              if(eval("aso#65940") < 0)
                              {
                                 eval("aso#50207")[a] = boxx._x + boxx._xscale;
                                 eval("aso#69566")[a] = Math.abs(eval("aso#69566")[a]);
                              }
                              else
                              {
                                 eval("aso#50207")[a] = boxx._x;
                                 eval("aso#69566")[a] = - Math.abs(eval("aso#69566")[a]);
                              }
                           }
                           else
                           {
                              if(around[a])
                              {
                                 eval("aso#69566")[a] *= 0.9;
                              }
                              else if(eval("aso#69566")[a] > 0)
                              {
                                 eval("aso#69566")[a] = Math.max(eval("aso#69566")[a] - eval("aso#04658") * Math.abs(eval("aso#63577")[a]),0);
                              }
                              else
                              {
                                 eval("aso#69566")[a] = Math.min(eval("aso#69566")[a] + eval("aso#04658") * Math.abs(eval("aso#63577")[a]),0);
                              }
                              eval("aso#63577")[a] *= 0.5;
                              eval("aso#86691")(eval("aso#69566")[a],eval("aso#63577")[a],a);
                              if(eval("aso#46581") < 0)
                              {
                                 eval("aso#32240")[a] = boxx._y - eval("aso#76526")[a] + boxx._yscale;
                                 eval("aso#63577")[a] = Math.abs(eval("aso#63577")[a]);
                              }
                              else
                              {
                                 eval("aso#32240")[a] = boxx._y - eval("aso#76526")[a];
                                 eval("aso#63577")[a] = - Math.abs(eval("aso#63577")[a]);
                              }
                           }
                        }
                     }
                  }
               }
               eval("aso#00903")++;
            }
         }
      }
      a++;
   }
   set("aso#06892",0);
   while(eval("aso#06892") < eval("aso#69145"))
   {
      if(eval("aso#13852")[eval("aso#06892")] == true || eval("aso#13852")[eval("aso#06892")] == false)
      {
         if(eval("aso#45610")[eval("aso#39621")[eval("aso#06892")]] == false && eval("aso#45610")[eval("aso#64969")[eval("aso#06892")]] == false)
         {
            eval("aso#13852")[eval("aso#06892")] = false;
         }
         else
         {
            eval("aso#13852")[eval("aso#06892")] = true;
         }
         if(eval("aso#45610")[eval("aso#39621")[eval("aso#06892")]] == 2 || eval("aso#45610")[eval("aso#64969")[eval("aso#06892")]] == 2)
         {
            eval("aso#13852")[eval("aso#06892")] = 2;
         }
         if(eval("aso#13852")[eval("aso#06892")] == true)
         {
            els = false;
            if(Math.abs(eval("aso#69566")[eval("aso#39621")[eval("aso#06892")]]) + Math.abs(eval("aso#63577")[eval("aso#39621")[eval("aso#06892")]]) + Math.abs(eval("aso#69566")[eval("aso#64969")[eval("aso#06892")]]) + Math.abs(eval("aso#63577")[eval("aso#64969")[eval("aso#06892")]]) < 5)
            {
               eval("aso#79310")[eval("aso#06892")] += 1;
               if(eval("aso#79310")[eval("aso#06892")] > 8)
               {
                  eval("aso#45610")[eval("aso#39621")[eval("aso#06892")]] = false;
                  eval("aso#45610")[eval("aso#64969")[eval("aso#06892")]] = false;
                  eval("aso#13852")[eval("aso#06892")] = false;
               }
            }
            else
            {
               els = true;
            }
            set("aso#94914",eval("aso#90317")(eval("aso#50207")[eval("aso#39621")[eval("aso#06892")]],eval("aso#32240")[eval("aso#39621")[eval("aso#06892")]],eval("aso#50207")[eval("aso#64969")[eval("aso#06892")]],eval("aso#32240")[eval("aso#64969")[eval("aso#06892")]]));
            set("aso#21233",0.5 * Math.abs(eval("aso#94914") - eval("aso#30427")[eval("aso#06892")]) * eval("aso#35995")[eval("aso#06892")]);
            if(eval("aso#94914") < 1)
            {
               set("aso#94914",1);
            }
            if(eval("aso#48394")[eval("aso#06892")] == 3)
            {
               if(eval("aso#94914") > eval("aso#30427")[eval("aso#06892")] + 14 || eval("aso#94914") < eval("aso#30427")[eval("aso#06892")] - 14)
               {
                  eval("aso#48394")[eval("aso#06892")] = 1;
                  eval("aso#30427")[eval("aso#06892")] = 0;
               }
            }
            if(eval("aso#48394")[eval("aso#06892")] == 4)
            {
               if(eval("aso#94914") > eval("aso#30427")[eval("aso#06892")] + 7 || eval("aso#94914") < eval("aso#30427")[eval("aso#06892")] - 7)
               {
                  eval("aso#48394")[eval("aso#06892")] = 1;
                  eval("aso#30427")[eval("aso#06892")] = 0;
               }
            }
            if(eval("aso#94914") > eval("aso#30427")[eval("aso#06892")] && (eval("aso#48394")[eval("aso#06892")] == 0 || eval("aso#48394")[eval("aso#06892")] == 3 || eval("aso#48394")[eval("aso#06892")] == 4 || eval("aso#48394")[eval("aso#06892")] == 2))
            {
               eval("aso#69566")[eval("aso#64969")[eval("aso#06892")]] += (eval("aso#50207")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#50207")[eval("aso#64969")[eval("aso#06892")]]) / eval("aso#94914") * eval("aso#21233");
               eval("aso#63577")[eval("aso#64969")[eval("aso#06892")]] += (eval("aso#32240")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#32240")[eval("aso#64969")[eval("aso#06892")]]) / eval("aso#94914") * eval("aso#21233");
               eval("aso#69566")[eval("aso#39621")[eval("aso#06892")]] -= (eval("aso#50207")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#50207")[eval("aso#64969")[eval("aso#06892")]]) / eval("aso#94914") * eval("aso#21233");
               eval("aso#63577")[eval("aso#39621")[eval("aso#06892")]] -= (eval("aso#32240")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#32240")[eval("aso#64969")[eval("aso#06892")]]) / eval("aso#94914") * eval("aso#21233");
            }
            else if(eval("aso#94914") < eval("aso#30427")[eval("aso#06892")] && (eval("aso#48394")[eval("aso#06892")] == 0 || eval("aso#48394")[eval("aso#06892")] == 3 || eval("aso#48394")[eval("aso#06892")] == 4 || eval("aso#48394")[eval("aso#06892")] == 1))
            {
               eval("aso#69566")[eval("aso#64969")[eval("aso#06892")]] -= (eval("aso#50207")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#50207")[eval("aso#64969")[eval("aso#06892")]]) / eval("aso#94914") * eval("aso#21233");
               eval("aso#63577")[eval("aso#64969")[eval("aso#06892")]] -= (eval("aso#32240")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#32240")[eval("aso#64969")[eval("aso#06892")]]) / eval("aso#94914") * eval("aso#21233");
               eval("aso#69566")[eval("aso#39621")[eval("aso#06892")]] += (eval("aso#50207")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#50207")[eval("aso#64969")[eval("aso#06892")]]) / eval("aso#94914") * eval("aso#21233");
               eval("aso#63577")[eval("aso#39621")[eval("aso#06892")]] += (eval("aso#32240")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#32240")[eval("aso#64969")[eval("aso#06892")]]) / eval("aso#94914") * eval("aso#21233");
            }
            else
            {
               els = false;
            }
            if(eval("aso#35995")[eval("aso#06892")] == 1 && (eval("aso#48394")[eval("aso#06892")] == 0 || eval("aso#48394")[eval("aso#06892")] == 3 || eval("aso#48394")[eval("aso#06892")] == 4 || eval("aso#94914") > eval("aso#30427")[eval("aso#06892")] && eval("aso#48394")[eval("aso#06892")] == 2 || eval("aso#94914") < eval("aso#30427")[eval("aso#06892")] && eval("aso#48394")[eval("aso#06892")] == 1))
            {
               set("aso#27643",(eval("aso#50207")[eval("aso#39621")[eval("aso#06892")]] + eval("aso#50207")[eval("aso#64969")[eval("aso#06892")]]) / 2);
               set("aso#58980",(eval("aso#32240")[eval("aso#39621")[eval("aso#06892")]] + eval("aso#32240")[eval("aso#64969")[eval("aso#06892")]]) / 2);
               srx = (eval("aso#69566")[eval("aso#64969")[eval("aso#06892")]] + eval("aso#69566")[eval("aso#39621")[eval("aso#06892")]]) / 2;
               sry = (eval("aso#63577")[eval("aso#64969")[eval("aso#06892")]] + eval("aso#63577")[eval("aso#39621")[eval("aso#06892")]]) / 2;
               set("aso#66361",(eval("aso#69566")[eval("aso#64969")[eval("aso#06892")]] + (- eval("aso#69566")[eval("aso#39621")[eval("aso#06892")]])) / 2);
               set("aso#97698",(eval("aso#63577")[eval("aso#64969")[eval("aso#06892")]] + (- eval("aso#63577")[eval("aso#39621")[eval("aso#06892")]])) / 2);
               eval("aso#69566")[eval("aso#64969")[eval("aso#06892")]] = srx + eval("aso#66361");
               eval("aso#63577")[eval("aso#64969")[eval("aso#06892")]] = sry + eval("aso#97698");
               eval("aso#69566")[eval("aso#39621")[eval("aso#06892")]] = srx - eval("aso#66361");
               eval("aso#63577")[eval("aso#39621")[eval("aso#06892")]] = sry - eval("aso#97698");
               eval("aso#50207")[eval("aso#39621")[eval("aso#06892")]] = eval("aso#27643") + (eval("aso#50207")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#27643")) * eval("aso#30427")[eval("aso#06892")] / eval("aso#94914");
               eval("aso#32240")[eval("aso#39621")[eval("aso#06892")]] = eval("aso#58980") + (eval("aso#32240")[eval("aso#39621")[eval("aso#06892")]] - eval("aso#58980")) * eval("aso#30427")[eval("aso#06892")] / eval("aso#94914");
               eval("aso#50207")[eval("aso#64969")[eval("aso#06892")]] = eval("aso#27643") + (eval("aso#50207")[eval("aso#64969")[eval("aso#06892")]] - eval("aso#27643")) * eval("aso#30427")[eval("aso#06892")] / eval("aso#94914");
               eval("aso#32240")[eval("aso#64969")[eval("aso#06892")]] = eval("aso#58980") + (eval("aso#32240")[eval("aso#64969")[eval("aso#06892")]] - eval("aso#58980")) * eval("aso#30427")[eval("aso#06892")] / eval("aso#94914");
            }
            if(els)
            {
               eval("aso#79310")[eval("aso#06892")] = 0;
               eval("aso#45610")[eval("aso#39621")[eval("aso#06892")]] = true;
               eval("aso#45610")[eval("aso#64969")[eval("aso#06892")]] = true;
            }
         }
      }
      else
      {
         eval("aso#45610")[eval("aso#39621")[eval("aso#06892")]] = 2;
         eval("aso#45610")[eval("aso#64969")[eval("aso#06892")]] = 2;
      }
      eval("aso#06892")++;
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
_root.money._visible = false;
_root.score._visible = false;
_root["aso#85720"] = 2;
_root.stop();
_root.loose = 0;
_root["aso#56196"].gotoAndStop(_root["aso#31819"]);
if(my_so.data.low_q)
{
   _root._quality = "LOW";
}
else
{
   _root._quality = "MEDIUM";
}
_root.console._visible = false;
_root.console.exec.onPress = function()
{
   if(_root.console._visible)
   {
      _root.console._visible = false;
   }
};
var §aso#02295§ = 0.017453292519943295;
_root.stat_kills = 0;
_root.stat_headshots = 0;
_root.stat_shots = 0;
if(my_so.data.lastlevel < _root["aso#31819"])
{
   my_so.data.lastlevel = _root["aso#31819"];
}
var §aso#57167§ = 0.8;
var grenades = 0;
var §aso#50207§ = new Array();
var §aso#32240§ = new Array();
var §aso#69566§ = new Array();
var §aso#63577§ = new Array();
var §aso#45610§ = new Array();
var §aso#91709§ = new Array();
var §aso#76526§ = new Array();
var around = new Array();
var screenX = 800;
var screenY = 400;
var playerhmax = 400;
var hscreenX = 400;
var hscreenY = 200;
var fire = false;
var hinttim = 0;
var grenadetim = 0;
var §aso#48394§ = new Array();
var §aso#39621§ = new Array();
var §aso#64969§ = new Array();
var §aso#30427§ = new Array();
var §aso#35995§ = new Array();
var §aso#13852§ = new Array();
var §aso#79310§ = new Array();
var §aso#04658§ = 0.6;
var §aso#49786§ = new Array();
var §aso#40592§ = new Array();
var §aso#68724§ = new Array();
var §aso#06050§ = new Array();
var §aso#92680§ = new Array();
var §aso#45189§ = 0;
var §aso#55354§ = new Array();
var emmit_i = new Array();
var §aso#73321§ = new Array();
var §aso#09255§ = 0;
var emmit2_i = new Array();
var emmit2_time = new Array();
var emmit2_x = new Array();
var emmit2_y = new Array();
var emmit2_tot = 0;
_root["aso#56196"].blood._visible = false;
_root["aso#56196"].bloodm._visible = false;
_root["aso#56196"].bloodmetal._visible = false;
_root["aso#56196"].bloodf._visible = false;
_root["aso#56196"].iskra._visible = false;
_root["aso#56196"].blood.gotoAndStop(1);
_root["aso#56196"].bloodf.gotoAndStop(1);
_root["aso#56196"].bloodm.gotoAndStop(1);
_root["aso#56196"].bloodmetal.gotoAndStop(1);
_root["aso#56196"].iskra.gotoAndStop(1);
_root["aso#56196"].men._visible = false;
_root["aso#56196"].enemy._visible = false;
_root["aso#56196"].falkok._visible = false;
_root["aso#56196"].men.gotoAndStop(1);
_root["aso#56196"].enemy.gotoAndStop(1);
_root["aso#56196"].falkok.gotoAndStop(1);
_root["aso#56196"].men["aso#82936"].gotoAndStop(1);
_root["aso#56196"].enemy["aso#82936"].gotoAndStop(1);
_root["aso#56196"].falkok["aso#82936"].gotoAndStop(1);
_root["aso#56196"].end._visible = false;
_root["aso#56196"].gilza._visible = false;
_root["aso#56196"].gilza2._visible = false;
_root["aso#56196"].gilza.disabled = true;
_root["aso#56196"].gilza2.disabled = true;
_root["aso#56196"].smoke._visible = false;
_root["aso#56196"].sprs.spr._visible = false;
_root["aso#56196"].rock._visible = false;
var §aso#64548§ = 0;
var barrelstotal = 0;
var heatotal = 0;
var x;
var y;
var §aso#87533§;
var §aso#26251§;
var §aso#52991§;
var §aso#00903§;
set("aso#00903",0);
while(eval("aso#00903") < 100)
{
   if(_root["aso#56196"].colmap["box" + eval("aso#00903")])
   {
      set("aso#64548",eval("aso#64548") + 1);
   }
   else
   {
      set("aso#00903",100);
   }
   eval("aso#00903")++;
}
set("aso#00903",0);
while(eval("aso#00903") < 100)
{
   if(_root["aso#56196"]["barrel" + eval("aso#00903")])
   {
      barrelstotal += 1;
   }
   else
   {
      set("aso#00903",100);
   }
   eval("aso#00903")++;
}
set("aso#00903",0);
while(eval("aso#00903") < 100)
{
   if(_root["aso#56196"]["medikit" + eval("aso#00903")])
   {
      heatotal += 1;
   }
   else
   {
      set("aso#00903",100);
   }
   eval("aso#00903")++;
}
var playerstot = 0;
var monsterstot = 0;
var falkokstot = 0;
set("aso#87533",0);
while(eval("aso#87533") < 100)
{
   if(_root["aso#56196"]["start" + eval("aso#87533")])
   {
      playerstot += 1;
      _root["aso#56196"]["start" + eval("aso#87533")]._visible = false;
   }
   else
   {
      set("aso#87533",100);
   }
   eval("aso#87533")++;
}
set("aso#87533",0);
while(eval("aso#87533") < 100)
{
   if(_root["aso#56196"]["mon" + eval("aso#87533")])
   {
      monsterstot += 1;
      _root["aso#56196"]["mon" + eval("aso#87533")]._visible = false;
   }
   else
   {
      set("aso#87533",100);
   }
   eval("aso#87533")++;
}
set("aso#87533",0);
while(eval("aso#87533") < 100)
{
   if(_root["aso#56196"]["fal" + eval("aso#87533")])
   {
      falkokstot += 1;
      _root["aso#56196"]["fal" + eval("aso#87533")]._visible = false;
   }
   else
   {
      set("aso#87533",100);
   }
   eval("aso#87533")++;
}
var §aso#09676§ = 0;
var maxef = 128;
var §aso#82094§ = 2 * _root.opt_eff / 3;
var sprtot = 0;
var §aso#54383§ = 0;
var §aso#69145§ = 0;
var grenades = 3;
var §aso#37387§ = _root["aso#56196"].men["aso#44218"]._xscale;
set("aso#87533",0);
while(eval("aso#87533") < playerstot)
{
   if(eval("aso#87533") == 0 && monstermode)
   {
      duplicateMovieClip(_root["aso#56196"].enemy,"player" + eval("aso#87533"),16384 + eval("aso#87533"));
   }
   else
   {
      duplicateMovieClip(_root["aso#56196"].men,"player" + eval("aso#87533"),16384 + eval("aso#87533"));
   }
   _root["aso#56196"]["player" + eval("aso#87533")].myi = eval("aso#87533");
   _root["aso#56196"]["player" + eval("aso#87533")].filters = _root["aso#56196"].men.filters;
   _root["aso#56196"]["player" + eval("aso#87533")]._x = _root["aso#56196"]["start" + eval("aso#87533")]._x;
   _root["aso#56196"]["player" + eval("aso#87533")]._y = _root["aso#56196"]["start" + eval("aso#87533")]._y;
   _root["aso#56196"]["player" + eval("aso#87533")].getdown = false;
   if(eval("aso#87533") == 0)
   {
      _root["aso#56196"]["player" + eval("aso#87533")].getdown = true;
   }
   _root["aso#56196"]["player" + eval("aso#87533")].easymove = 1;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg1 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg2 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg3 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg4 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg5 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg6 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg7 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg8 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg9 = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].opentop = false;
   if(eval("aso#87533") == 0)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = playerhmax;
   }
   else
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 100;
   }
   _root["aso#56196"]["player" + eval("aso#87533")].lhea = _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"];
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#60372"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#83907"] = 0;
   if(eval("aso#87533") != 0)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(1);
   }
   else
   {
      if(my_so.data["weapon" + my_so.data.lwea] != -1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(my_so.data.lwea);
      }
      else
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(6);
      }
      eval("aso#61343")(eval("aso#87533"));
   }
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
   _root["aso#56196"]["player" + eval("aso#87533")].sit = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].dead = false;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] = false;
   _root["aso#56196"]["player" + eval("aso#87533")].gotoAndPlay(2);
   _root["aso#56196"]["player" + eval("aso#87533")]._visible = false;
   if(eval("aso#87533") == 0)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 4;
   }
   else
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 1;
   }
   if(eval("aso#87533") == 0)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 0;
   }
   else
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 1;
   }
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(_root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] + 1);
   _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(_root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] + 1);
   _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(_root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] + 1);
   _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(_root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] + 1);
   _root["aso#56196"]["player" + eval("aso#87533")].hunt = -1;
   if(eval("aso#87533") == 0 && monstermode)
   {
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 2;
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] = 1;
      _root["aso#56196"]["player" + eval("aso#87533")].gotoAndPlay(2);
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(1);
      _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(1);
      _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(1);
      _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(1);
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(10);
   }
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#51599"].gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#51599"]._visible = false;
   if(eval("aso#87533") == 0)
   {
      set("aso#26251",1);
      while(eval("aso#26251") < 10)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["w_upg" + eval("aso#26251")] = my_so.data["weapon" + eval("aso#26251")];
         eval("aso#26251")++;
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")].w_upg8 > 2)
      {
         _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(6);
         _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(7);
         _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(7);
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 7;
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")].w_upg7 == -1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")].opentop = true;
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(11);
      }
      if(_root["aso#56196"]["player" + eval("aso#87533")].w_upg7 == 1)
      {
         _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(12);
      }
      _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 150 + 100 * _root["aso#56196"]["player" + eval("aso#87533")].w_upg8;
      playerhmax = 150 + 100 * _root["aso#56196"]["player" + eval("aso#87533")].w_upg8;
      eval("aso#61343")(eval("aso#87533"));
   }
   _root["aso#56196"]["start" + eval("aso#87533")].unloadMovie();
   eval("aso#87533")++;
}
set("aso#87533",playerstot);
while(eval("aso#87533") < playerstot + monsterstot)
{
   duplicateMovieClip(_root["aso#56196"].enemy,"player" + eval("aso#87533"),16384 + eval("aso#87533"));
   _root["aso#56196"]["player" + eval("aso#87533")].filters = _root["aso#56196"].men.filters;
   _root["aso#56196"]["player" + eval("aso#87533")]._x = _root["aso#56196"]["mon" + (eval("aso#87533") - playerstot)]._x;
   _root["aso#56196"]["player" + eval("aso#87533")]._y = _root["aso#56196"]["mon" + (eval("aso#87533") - playerstot)]._y;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 300;
   _root["aso#56196"]["player" + eval("aso#87533")].lhea = _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"];
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#60372"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#83907"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].easymove = 0.7;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
   _root["aso#56196"]["player" + eval("aso#87533")].sit = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].dead = false;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] = false;
   _root["aso#56196"]["player" + eval("aso#87533")].gotoAndPlay(2);
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(10);
   _root["aso#56196"]["player" + eval("aso#87533")]._visible = false;
   _root["aso#56196"]["player" + eval("aso#87533")].opentop = false;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 2;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] = 1;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 2;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")].hunt = -1;
   _root["aso#56196"]["start" + eval("aso#87533")].unloadMovie();
   eval("aso#87533")++;
}
playerstot += monsterstot;
set("aso#87533",playerstot);
while(eval("aso#87533") < playerstot + falkokstot)
{
   duplicateMovieClip(_root["aso#56196"].falkok,"player" + eval("aso#87533"),16384 + eval("aso#87533"));
   _root["aso#56196"]["player" + eval("aso#87533")].filters = _root["aso#56196"].men.filters;
   _root["aso#56196"]["player" + eval("aso#87533")]._x = _root["aso#56196"]["fal" + (eval("aso#87533") - playerstot)]._x;
   _root["aso#56196"]["player" + eval("aso#87533")]._y = _root["aso#56196"]["fal" + (eval("aso#87533") - playerstot)]._y;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"] = 250;
   _root["aso#56196"]["player" + eval("aso#87533")].lhea = _root["aso#56196"]["player" + eval("aso#87533")]["aso#12881"];
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#60372"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#83907"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].easymove = 0.85;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#15665"] = "body";
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#29035"] = 1;
   _root["aso#56196"]["player" + eval("aso#87533")].sit = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#38229"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#75555"] = 0;
   _root["aso#56196"]["player" + eval("aso#87533")].dead = false;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#35024"] = false;
   _root["aso#56196"]["player" + eval("aso#87533")].gotoAndPlay(2);
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#44218"].gotoAndStop(2);
   _root["aso#56196"]["player" + eval("aso#87533")].w_upg2 = 2;
   _root["aso#56196"]["player" + eval("aso#87533")]._visible = false;
   _root["aso#56196"]["player" + eval("aso#87533")].opentop = false;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#33632"] = 3;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#20262"] = 2;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#47002"] = 6;
   _root["aso#56196"]["player" + eval("aso#87533")]["aso#14273"].gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")].body.gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")].arm1.gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")].arm2.gotoAndStop(1);
   _root["aso#56196"]["player" + eval("aso#87533")].hunt = -1;
   _root["aso#56196"]["start" + eval("aso#87533")].unloadMovie();
   eval("aso#87533")++;
}
playerstot += falkokstot;
_root["aso#56196"].plazma._visible = false;
pulstot = 0;
pulsmax = 32;
_root.glow._visible = false;
_root.glow._alpha = 0;
_root["aso#56196"]._x = - _root["aso#56196"].player0.body._x - _root["aso#56196"].player0._x + hscreenX;
_root["aso#56196"]._y = - _root["aso#56196"].player0.body._y - _root["aso#56196"].player0._y + hscreenY;
pspeed = 6;
