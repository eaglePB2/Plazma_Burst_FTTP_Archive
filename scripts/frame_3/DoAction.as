function §aso#09676§(p1x, p1y, p2x, p2y)
{
   return Math.sqrt(Math.pow(p1x - p2x,2) + Math.pow(p1y - p2y,2));
}
function §aso#96306§(x, y, typ, pntox, pntoy)
{
   if(pntox == undefined)
   {
      pntox = 0;
   }
   if(pntoy == undefined)
   {
      pntoy = 0;
   }
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
   if(typ == 1 || typ == 2)
   {
      set("aso#43797",eval("aso#43797") * eval("aso#20812"));
   }
   ti = 0;
   while(ti < eval("aso#43797"))
   {
      if(typ == 0)
      {
         duplicateMovieClip(_root["aso#75555"].iskra,"p" + eval("aso#97698"),16384 + (eval("aso#97698") + 200));
      }
      if(typ == 1 || typ == 2 || typ == 8)
      {
         duplicateMovieClip(_root["aso#75555"].blood,"p" + eval("aso#97698"),16384 + (eval("aso#97698") + 200));
      }
      if(typ == 3)
      {
         duplicateMovieClip(_root["aso#75555"].gilza,"p" + eval("aso#97698"),16384 + (eval("aso#97698") + 200));
      }
      if(typ == 4)
      {
         duplicateMovieClip(_root["aso#75555"].gilza2,"p" + eval("aso#97698"),16384 + (eval("aso#97698") + 200));
      }
      if(typ == 5)
      {
         duplicateMovieClip(_root["aso#75555"].bloodm,"p" + eval("aso#97698"),16384 + (eval("aso#97698") + 200));
      }
      if(typ == 6)
      {
         duplicateMovieClip(_root["aso#75555"].smoke,"p" + eval("aso#97698"),16384 + (eval("aso#97698") + 200));
      }
      if(typ == 7)
      {
         duplicateMovieClip(_root["aso#75555"].rock,"p" + eval("aso#97698"),16384 + (eval("aso#97698") + 200));
      }
      if((ti == 0 || typ == 7) && typ != 8)
      {
         _root["aso#75555"]["p" + eval("aso#97698")].gotoAndPlay(1);
      }
      else
      {
         _root["aso#75555"]["p" + eval("aso#97698")].gotoAndPlay(3 + Math.floor(Math.random() * 5));
      }
      _root["aso#75555"]["p" + eval("aso#97698")]._x = x;
      _root["aso#75555"]["p" + eval("aso#97698")]._y = y;
      _root["aso#75555"]["p" + eval("aso#97698")]["aso#57588"] = pntox;
      _root["aso#75555"]["p" + eval("aso#97698")]["aso#94914"] = pntoy;
      if(eval("aso#43797") != 1 && typ != 7)
      {
         _root["aso#75555"]["p" + eval("aso#97698")]._x = x - 4 + Math.random() * 8;
         _root["aso#75555"]["p" + eval("aso#97698")]._y = y - 4 + Math.random() * 8;
      }
      set("aso#97698",eval("aso#97698") + 1);
      ti++;
   }
   if(eval("aso#97698") > maxef)
   {
      set("aso#97698",0);
   }
}
function §aso#40171§()
{
   set("aso#06892",0);
   while(eval("aso#06892") < eval("aso#21233"))
   {
      if(eval("aso#89896")[eval("aso#00482")[eval("aso#06892")]] != 2)
      {
         if(eval("aso#64969")[eval("aso#27643")[eval("aso#00482")[eval("aso#06892")]]] == true || eval("aso#64969")[eval("aso#84328")[eval("aso#00482")[eval("aso#06892")]]] == true)
         {
            eval("aso#47973")[eval("aso#06892")]._xscale = Math.abs(eval("aso#47973")[eval("aso#06892")]._xscale) * eval("aso#44768")[eval("aso#06892")];
            eval("aso#47973")[eval("aso#06892")]._x = eval("aso#69566")[eval("aso#27643")[eval("aso#00482")[eval("aso#06892")]]];
            eval("aso#47973")[eval("aso#06892")]._y = eval("aso#51599")[eval("aso#27643")[eval("aso#00482")[eval("aso#06892")]]];
            eval("aso#47973")[eval("aso#06892")]._rotation = eval("aso#07442")[eval("aso#06892")] - Math.atan2(eval("aso#69566")[eval("aso#27643")[eval("aso#00482")[eval("aso#06892")]]] - eval("aso#69566")[eval("aso#84328")[eval("aso#00482")[eval("aso#06892")]]],eval("aso#51599")[eval("aso#27643")[eval("aso#00482")[eval("aso#06892")]]] - eval("aso#51599")[eval("aso#84328")[eval("aso#00482")[eval("aso#06892")]]]) / 3.141592653589793 * 180;
            if(eval("aso#00061")[eval("aso#06892")])
            {
               cdi = eval("aso#09676")(eval("aso#69566")[eval("aso#27643")[eval("aso#00482")[eval("aso#06892")]]],eval("aso#51599")[eval("aso#27643")[eval("aso#00482")[eval("aso#06892")]]],eval("aso#69566")[eval("aso#84328")[eval("aso#00482")[eval("aso#06892")]]],eval("aso#51599")[eval("aso#84328")[eval("aso#00482")[eval("aso#06892")]]]);
               cdi = (1 - cdi / 32.79) * 60;
               eval("aso#47973")[eval("aso#06892")].gotoAndStop(Math.max(1,Math.min(30,Math.round(cdi))));
            }
         }
      }
      eval("aso#06892")++;
   }
   set("aso#06892",0);
   while(eval("aso#06892") < eval("aso#16636"))
   {
      if(eval("aso#49365")[eval("aso#06892")] > 0)
      {
         eval("aso#49365")[eval("aso#06892")] -= 1;
         if(Math.random() > 0.5 / eval("aso#20812"))
         {
            eval("aso#96306")(eval("aso#69566")[eval("aso#62735")[eval("aso#06892")]],eval("aso#51599")[eval("aso#62735")[eval("aso#06892")]],8,Math.random() * 12 - 6,Math.random() * 12 - 6);
         }
      }
      eval("aso#06892")++;
   }
}
function §aso#21654§(x, y, sx, sy, rad)
{
   eval("aso#69566")[eval("aso#36416")] = x;
   eval("aso#51599")[eval("aso#36416")] = y;
   eval("aso#88925")[eval("aso#36416")] = sx;
   eval("aso#82936")[eval("aso#36416")] = sy;
   eval("aso#64969")[eval("aso#36416")] = true;
   if(rad != undefined)
   {
      eval("aso#52570")[eval("aso#36416")] = rad;
   }
   else
   {
      eval("aso#52570")[eval("aso#36416")] = 0;
   }
   eval("aso#36416")++;
   return eval("aso#36416") - 1;
}
function §aso#39621§(a, a2, type, §aso#76526§, damp)
{
   eval("aso#27643")[eval("aso#82515")] = a;
   eval("aso#84328")[eval("aso#82515")] = a2;
   if(aso#76526 != undefined)
   {
      eval("aso#81123")[eval("aso#82515")] = aso#76526;
   }
   else
   {
      eval("aso#81123")[eval("aso#82515")] = eval("aso#09676")(eval("aso#69566")[a],eval("aso#51599")[a],eval("aso#69566")[a2],eval("aso#51599")[a2]);
   }
   if(damp == undefined)
   {
      eval("aso#12039")[eval("aso#82515")] = 1;
   }
   else
   {
      eval("aso#12039")[eval("aso#82515")] = damp;
   }
   eval("aso#99090")[eval("aso#82515")] = type;
   eval("aso#89896")[eval("aso#82515")] = true;
   eval("aso#82515")++;
   return eval("aso#82515") - 1;
}
function §aso#63156§(§aso#39200§, §aso#26251§, pan, flip, isLeg)
{
   eval("aso#47973")[eval("aso#21233")] = aso#39200;
   eval("aso#00482")[eval("aso#21233")] = aso#26251;
   eval("aso#07442")[eval("aso#21233")] = pan;
   eval("aso#44768")[eval("aso#21233")] = flip;
   if(isLeg == true)
   {
      eval("aso#00061")[eval("aso#21233")] = true;
   }
   else
   {
      eval("aso#00061")[eval("aso#21233")] = false;
   }
   eval("aso#21233")++;
}
function §aso#43376§(a, time)
{
   eval("aso#62735")[eval("aso#16636")] = a;
   eval("aso#49365")[eval("aso#16636")] = time;
   eval("aso#16636")++;
}
function ObjectPos(§aso#39200§)
{
   var _loc1_ = {x:aso#39200._x,y:aso#39200._y};
   aso#39200._parent.localToGlobal(_loc1_);
   return _loc1_;
}
function ToObjectPos(pox, poy, §aso#39200§)
{
   var _loc1_ = {x:pox,y:poy};
   aso#39200._parent.globalToLocal(_loc1_);
   return _loc1_;
}
function §aso#68724§(§aso#06892§)
{
   set("aso#95464",false);
   if(_root["aso#75555"]["player" + aso#06892].w_upg1 == 2 && _root["aso#75555"]["player" + aso#06892]["aso#63577"]._currentframe == 1)
   {
      set("aso#95464",true);
   }
   if(eval("aso#95464"))
   {
      _root["aso#75555"]["player" + aso#06892]["aso#70958"].gotoAndStop(_root["aso#75555"]["player" + aso#06892]["aso#63577"]._currentframe);
      if(_root["aso#75555"]["player" + aso#06892]["aso#70958"]._visible == false)
      {
         _root["aso#75555"]["player" + aso#06892]["aso#70958"]._visible = true;
         _root["aso#75555"]["player" + aso#06892]["aso#70958"]._alpha = 0;
      }
      else if(_root["aso#75555"]["player" + aso#06892]["aso#70958"]._alpha == 0)
      {
         _root["aso#75555"]["player" + aso#06892]["aso#70958"]._alpha = 100;
      }
      _root["aso#75555"]["player" + aso#06892]["aso#70958"]._xscale = eval("aso#76105");
      _root["aso#75555"]["player" + aso#06892]["aso#70958"]._yscale = eval("aso#76105");
   }
   else
   {
      _root["aso#75555"]["player" + aso#06892]["aso#70958"].gotoAndStop(1);
      _root["aso#75555"]["player" + aso#06892]["aso#70958"]._visible = false;
      _root["aso#75555"]["player" + aso#06892]["aso#70958"]._xscale = 0;
      _root["aso#75555"]["player" + aso#06892]["aso#70958"]._yscale = 0;
   }
}
function §aso#71508§(§aso#06892§)
{
   _root["aso#75555"]["player" + aso#06892].sou.gotoAndStop(10 + Math.round(Math.random() * 2));
   _root["aso#75555"]["player" + aso#06892].deadtime = 0;
   if(aso#06892 != 0)
   {
      _root.stat_kills++;
      if(_root["aso#75555"]["player" + aso#06892].say_die != undefined)
      {
         eval("aso#86691")(_root["aso#75555"]["player" + aso#06892].say_die);
      }
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 0)
   {
      set("aso#50757",4);
      set("aso#92680",5);
      set("aso#31398",8);
      set("aso#37387",3);
      set("aso#58559",4);
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 1)
   {
      set("aso#50757",4);
      set("aso#92680",5);
      set("aso#31398",15);
      set("aso#37387",10);
      set("aso#58559",5);
   }
   set("aso#54383",_root["aso#75555"]["player" + aso#06892]["aso#57588"]);
   set("aso#85720",_root["aso#75555"]["player" + aso#06892]["aso#94914"]);
   p_body = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].body._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].body._y,eval("aso#54383"),eval("aso#85720"),eval("aso#50757"));
   _root["aso#75555"]["player" + aso#06892]["aso#13431"] = p_body;
   _root["aso#75555"]["player" + aso#06892].center = p_body;
   if(_root["aso#75555"]["player" + aso#06892]["aso#32240"] > -5)
   {
      p_arm1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].arm1._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].arm1._y,eval("aso#54383"),eval("aso#85720"),eval("aso#31398"));
   }
   else
   {
      p_arm1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].arm1._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].arm1._y,eval("aso#54383"),eval("aso#85720"),eval("aso#31398"));
   }
   set("aso#30427",_root["aso#75555"]["player" + aso#06892]["aso#02295"].upper1._rotation);
   set("aso#31819",_root["aso#75555"]["player" + aso#06892]["aso#02295"].upper2._rotation);
   _root["aso#75555"]["player" + aso#06892]["aso#02295"].gotoAndStop(1);
   _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._rotation = eval("aso#30427");
   _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._rotation = eval("aso#31819");
   _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"].gotoAndStop(1);
   _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"].gotoAndStop(1);
   if(_root["aso#75555"]["player" + aso#06892]["aso#32240"] > -10)
   {
      p_subleg1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._x - Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._rotation * eval("aso#52991")) * 35,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._y + Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._rotation * eval("aso#52991")) * (35 - eval("aso#58559")),eval("aso#54383"),eval("aso#85720"),eval("aso#58559"));
      p_subleg2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._x - Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._rotation * eval("aso#52991")) * 35,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._y + Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._rotation * eval("aso#52991")) * (35 - eval("aso#58559")),eval("aso#54383"),eval("aso#85720"),eval("aso#58559"));
   }
   else
   {
      p_subleg1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._x - Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._rotation * eval("aso#52991")) * 35,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._y + Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"]._rotation * eval("aso#52991")) * (35 - eval("aso#58559")),eval("aso#54383"),eval("aso#85720"),eval("aso#58559"));
      p_subleg2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._x + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._x - Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._rotation * eval("aso#52991")) * 35,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._y + _root["aso#75555"]["player" + aso#06892]["aso#02295"]._y + Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"]._rotation * eval("aso#52991")) * (35 - eval("aso#58559")),eval("aso#54383"),eval("aso#85720"),eval("aso#58559"));
   }
   _root["aso#75555"]["player" + aso#06892].a_stand1 = p_subleg1;
   _root["aso#75555"]["player" + aso#06892].a_stand2 = p_subleg2;
   _root["aso#75555"]["player" + aso#06892]["aso#02295"]._x = 0;
   _root["aso#75555"]["player" + aso#06892]["aso#02295"]._y = 0;
   p_subarm1 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].arm1._x - Math.sin(_root["aso#75555"]["player" + aso#06892].arm1._rotation * eval("aso#52991")) * 26,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].arm1._y + Math.cos(_root["aso#75555"]["player" + aso#06892].arm1._rotation * eval("aso#52991")) * 26,eval("aso#54383"),eval("aso#85720"),eval("aso#37387"));
   p_subarm2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892].arm2._x - Math.sin(_root["aso#75555"]["player" + aso#06892].arm2._rotation * eval("aso#52991")) * 26,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892].arm2._y + Math.cos(_root["aso#75555"]["player" + aso#06892].arm2._rotation * eval("aso#52991")) * 26,eval("aso#54383"),eval("aso#85720"),eval("aso#37387"));
   body_break = false;
   p_head = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y,eval("aso#54383"),eval("aso#85720"),eval("aso#92680"));
   if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 0)
   {
      if(_root["aso#75555"]["player" + aso#06892]["aso#35024"] == "aso#33632" || _root["aso#75555"]["player" + aso#06892]["aso#35024"] == "all")
      {
         if(_root["aso#75555"]["player" + aso#06892]["aso#32240"] < -50)
         {
            eval("aso#43376")(p_head,40);
            _root["aso#75555"]["player" + aso#06892]["aso#33632"].gotoAndStop(10);
            eval("aso#96306")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#57588"] + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x / _root["aso#75555"]["player" + aso#06892]._xscale * 100,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#94914"] + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y,2,Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#57588"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
            eval("aso#96306")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#57588"] + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x / _root["aso#75555"]["player" + aso#06892]._xscale * 100,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#94914"] + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y,2,Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#57588"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
         }
      }
      if(_root["aso#75555"]["player" + aso#06892]["aso#35024"] == "body" || _root["aso#75555"]["player" + aso#06892]["aso#35024"] == "arm" || _root["aso#75555"]["player" + aso#06892]["aso#35024"] == "all")
      {
         if(_root["aso#75555"]["player" + aso#06892]["aso#32240"] < -70)
         {
            p_body_div1 = eval("aso#21654")((eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,(eval("aso#88925")[p_arm1] + eval("aso#88925")[p_body]) / 2,(eval("aso#82936")[p_arm1] + eval("aso#82936")[p_body]) / 2,0);
            p_body_div2 = eval("aso#21654")((eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,(eval("aso#88925")[p_arm1] + eval("aso#88925")[p_body]) / 2,(eval("aso#82936")[p_arm1] + eval("aso#82936")[p_body]) / 2,0);
            eval("aso#96306")((eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,2,Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#57588"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
            eval("aso#96306")((eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,2,Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#57588"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
            eval("aso#96306")((eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,2,Math.random() * 8 - 4 + _root["aso#75555"]["player" + aso#06892]["aso#57588"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 6);
            eval("aso#96306")((eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,2,Math.random() * 18 - 9 + _root["aso#75555"]["player" + aso#06892]["aso#57588"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 9);
            eval("aso#96306")((eval("aso#69566")[p_arm1] + eval("aso#69566")[p_body]) / 2,(eval("aso#51599")[p_arm1] + eval("aso#51599")[p_body]) / 2,2,Math.random() * 18 - 9 + _root["aso#75555"]["player" + aso#06892]["aso#57588"],_root["aso#75555"]["player" + aso#06892]["aso#94914"] - Math.random() * 9);
            body_break = true;
            eval("aso#43376")(p_body,50);
            eval("aso#43376")(p_arm1,50);
         }
      }
   }
   _root["aso#75555"]["player" + aso#06892].a_stand3 = p_head;
   if(_root["aso#75555"]["player" + aso#06892]["aso#32240"] > -10)
   {
      p_subhead = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x + Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#33632"]._rotation * eval("aso#52991")) * 8,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y - Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#33632"]._rotation * eval("aso#52991")) * 8,eval("aso#54383"),eval("aso#85720"),eval("aso#92680"));
   }
   else
   {
      p_subhead = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._x + Math.sin(_root["aso#75555"]["player" + aso#06892]["aso#33632"]._rotation * eval("aso#52991")) * 8,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#33632"]._y - Math.cos(_root["aso#75555"]["player" + aso#06892]["aso#33632"]._rotation * eval("aso#52991")) * 8,eval("aso#54383"),eval("aso#85720"),eval("aso#92680"));
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 0)
   {
      p_gun = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y,eval("aso#54383") * 0.5,eval("aso#85720") * 0.5);
      sc = _root["aso#75555"]["player" + aso#06892]["aso#63577"]._xscale / 100;
      p_subgun = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#03266"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#03266"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#03266"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#03266"]._y * sc,eval("aso#54383") * 0.5,eval("aso#85720") * 0.5);
      p_subgun2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#34603"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#34603"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#34603"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#34603"]._y * sc,eval("aso#54383") * 0.5,eval("aso#85720") * 0.5);
      p_subgun3 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#65940"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#65940"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#65940"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#63577"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#63577"]["aso#65940"]._y * sc,eval("aso#54383") * 0.5,eval("aso#85720") * 0.5);
      if(_root["aso#75555"]["player" + aso#06892]["aso#70958"]._visible == true)
      {
         p2_gun = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._x,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#63577"]._y,eval("aso#54383") * 0.5,eval("aso#85720") * 0.5);
         p2_subgun = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#70958"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#03266"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#03266"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#70958"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#03266"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#03266"]._y * sc,eval("aso#54383") * 0.5,eval("aso#85720") * 0.5);
         p2_subgun2 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#70958"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#34603"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#34603"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#70958"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#34603"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#34603"]._y * sc,eval("aso#54383") * 0.5,eval("aso#85720") * 0.5);
         p2_subgun3 = eval("aso#21654")(_root["aso#75555"]["player" + aso#06892]._x + _root["aso#75555"]["player" + aso#06892]["aso#70958"]._x - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#65940"]._x * sc - Math.sin((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#65940"]._y * sc,_root["aso#75555"]["player" + aso#06892]._y + _root["aso#75555"]["player" + aso#06892]["aso#70958"]._y + Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation - 90) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#65940"]._x * sc - Math.cos((_root["aso#75555"]["player" + aso#06892]["aso#70958"]._rotation + 180) * eval("aso#52991")) * _root["aso#75555"]["player" + aso#06892]["aso#70958"]["aso#65940"]._y * sc,eval("aso#54383") * 0.5,eval("aso#85720") * 0.5);
      }
   }
   else
   {
      _root["aso#75555"]["player" + aso#06892]["aso#63577"]._visible = false;
   }
   eval("aso#11068")[p_body] = aso#06892;
   eval("aso#11068")[p_arm1] = aso#06892;
   eval("aso#11068")[p_body_div1] = aso#06892;
   eval("aso#11068")[p_body_div2] = aso#06892;
   eval("aso#11068")[p_subleg1] = aso#06892;
   eval("aso#11068")[p_subleg2] = aso#06892;
   eval("aso#11068")[p_subarm1] = aso#06892;
   eval("aso#11068")[p_subarm2] = aso#06892;
   if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 0)
   {
      eval("aso#11068")[p_gun] = -1;
      eval("aso#11068")[p_subgun] = -1;
   }
   eval("aso#11068")[p_head] = aso#06892;
   eval("aso#11068")[p_subhead] = aso#06892;
   if(body_break)
   {
      ch_head = eval("aso#39621")(p_body,p_body_div1,0);
      ch_head3 = eval("aso#39621")(p_arm1,p_body_div2,0);
      eval("aso#39621")(p_body_div2,p_subhead,0);
      ch_leg1 = eval("aso#39621")(p_body,p_subleg1,1,28,0.1);
      ch_leg2 = eval("aso#39621")(p_body,p_subleg2,1,28,0.1);
   }
   else
   {
      eval("aso#39621")(p_body,p_arm1,0);
      ch_head = eval("aso#39621")(p_body,p_head,0);
      eval("aso#39621")(p_arm1,p_subleg2,1,50);
      eval("aso#39621")(p_arm1,p_subleg1,1,50);
      eval("aso#39621")(p_body,p_subhead,1,35);
   }
   ch_leg1 = eval("aso#39621")(p_body,p_subleg1,2,33);
   ch_leg2 = eval("aso#39621")(p_body,p_subleg2,2,33);
   eval("aso#39621")(p_arm1,p_head,0);
   ch_head2 = eval("aso#39621")(p_head,p_subhead,0);
   ch_arm1 = eval("aso#39621")(p_arm1,p_subarm1,0);
   ch_arm2 = eval("aso#39621")(p_arm1,p_subarm2,0);
   eval("aso#39621")(p_subleg2,p_subleg1,2,40);
   eval("aso#39621")(p_subleg2,p_subleg1,1,5);
   eval("aso#39621")(p_subarm2,p_subarm1,1,5);
   if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 0)
   {
      ch_gun = eval("aso#39621")(p_gun,p_subgun,0);
      eval("aso#39621")(p_subgun,p_subgun2,0);
      eval("aso#39621")(p_subgun,p_subgun3,0);
      eval("aso#39621")(p_subgun2,p_subgun3,0);
      eval("aso#39621")(p_gun,p_subgun2,0);
      eval("aso#39621")(p_gun,p_subgun3,0);
      if(_root["aso#75555"]["player" + aso#06892]["aso#70958"]._visible == true)
      {
         ch_gun2 = eval("aso#39621")(p2_gun,p2_subgun,0);
         eval("aso#39621")(p2_subgun,p2_subgun2,0);
         eval("aso#39621")(p2_subgun,p2_subgun3,0);
         eval("aso#39621")(p2_subgun2,p2_subgun3,0);
         eval("aso#39621")(p2_gun,p2_subgun2,0);
         eval("aso#39621")(p2_gun,p2_subgun3,0);
      }
   }
   if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 0)
   {
      if(_root["aso#75555"]["player" + aso#06892]["aso#70958"]._visible == true)
      {
         eval("aso#39621")(p_subarm1,p_gun,3);
         eval("aso#39621")(p_subarm2,p2_gun,3);
         eval("aso#39621")(p_gun,p2_gun,1,10);
      }
      else
      {
         eval("aso#39621")(p_subarm1,p_gun,3);
         eval("aso#39621")(p_subarm2,p_gun,3);
      }
   }
   flip = _root["aso#75555"]["player" + aso#06892]._xscale / 100;
   if(flip < 0)
   {
      eval("aso#69566")[p_body] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_body] *= -1;
      eval("aso#69566")[p_body] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_arm1] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_arm1] *= -1;
      eval("aso#69566")[p_arm1] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subleg1] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subleg1] *= -1;
      eval("aso#69566")[p_subleg1] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subleg2] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subleg2] *= -1;
      eval("aso#69566")[p_subleg2] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subarm1] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subarm1] *= -1;
      eval("aso#69566")[p_subarm1] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subarm2] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subarm2] *= -1;
      eval("aso#69566")[p_subarm2] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_head] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_head] *= -1;
      eval("aso#69566")[p_head] += _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subhead] -= _root["aso#75555"]["player" + aso#06892]._x;
      eval("aso#69566")[p_subhead] *= -1;
      eval("aso#69566")[p_subhead] += _root["aso#75555"]["player" + aso#06892]._x;
      if(body_break)
      {
         eval("aso#69566")[p_body_div1] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_body_div1] *= -1;
         eval("aso#69566")[p_body_div1] += _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_body_div2] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_body_div2] *= -1;
         eval("aso#69566")[p_body_div2] += _root["aso#75555"]["player" + aso#06892]._x;
      }
      if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 0)
      {
         eval("aso#69566")[p_gun] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_gun] *= -1;
         eval("aso#69566")[p_gun] += _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_subgun] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_subgun] *= -1;
         eval("aso#69566")[p_subgun] += _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_subgun2] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_subgun2] *= -1;
         eval("aso#69566")[p_subgun2] += _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_subgun3] -= _root["aso#75555"]["player" + aso#06892]._x;
         eval("aso#69566")[p_subgun3] *= -1;
         eval("aso#69566")[p_subgun3] += _root["aso#75555"]["player" + aso#06892]._x;
         if(_root["aso#75555"]["player" + aso#06892]["aso#70958"]._visible == true)
         {
            eval("aso#69566")[p2_gun] -= _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#69566")[p2_gun] *= -1;
            eval("aso#69566")[p2_gun] += _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#69566")[p2_subgun] -= _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#69566")[p2_subgun] *= -1;
            eval("aso#69566")[p2_subgun] += _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#69566")[p2_subgun2] -= _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#69566")[p2_subgun2] *= -1;
            eval("aso#69566")[p2_subgun2] += _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#69566")[p2_subgun3] -= _root["aso#75555"]["player" + aso#06892]._x;
            eval("aso#69566")[p2_subgun3] *= -1;
            eval("aso#69566")[p2_subgun3] += _root["aso#75555"]["player" + aso#06892]._x;
         }
      }
   }
   _root["aso#75555"]["player" + aso#06892]._x = 0;
   _root["aso#75555"]["player" + aso#06892]._y = 0;
   if(body_break)
   {
      _root["aso#75555"]["player" + aso#06892]["aso#02295"].toe.bloddy._visible = true;
      _root["aso#75555"]["player" + aso#06892].body.gotoAndStop(5);
      eval("aso#63156")(_root["aso#75555"]["player" + aso#06892].body,ch_head3,0,flip);
   }
   else
   {
      eval("aso#63156")(_root["aso#75555"]["player" + aso#06892].body,ch_head,0,flip);
   }
   if(body_break)
   {
      eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#02295"].toe,ch_head,0,flip);
   }
   else
   {
      eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#02295"].toe,ch_head,0,flip);
   }
   eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#06471"],ch_leg1,180,flip,true);
   eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#02295"]["aso#37808"],ch_leg2,180,flip,true);
   eval("aso#63156")(_root["aso#75555"]["player" + aso#06892].arm1,ch_arm1,180,flip);
   eval("aso#63156")(_root["aso#75555"]["player" + aso#06892].arm2,ch_arm2,180,flip);
   eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#33632"],ch_head2,0,flip);
   if(_root["aso#75555"]["player" + aso#06892]["aso#76947"] == 0)
   {
      if(flip > 0)
      {
         eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#63577"],ch_gun,-90,flip);
      }
      else
      {
         eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#63577"],ch_gun,90,flip);
      }
      if(_root["aso#75555"]["player" + aso#06892]["aso#70958"]._visible == true)
      {
         if(flip > 0)
         {
            eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#70958"],ch_gun2,-90,flip);
         }
         else
         {
            eval("aso#63156")(_root["aso#75555"]["player" + aso#06892]["aso#70958"],ch_gun2,90,flip);
         }
      }
   }
   _root["aso#75555"]["player" + aso#06892]._xscale = 100;
}
function §aso#18028§(px, py, mast, §aso#90317§, §aso#41013§, §aso#03687§)
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
   _root["aso#75555"]["pl" + ini]._x = px + aso#41013;
   _root["aso#75555"]["pl" + ini]._y = py + aso#03687;
   _root["aso#75555"]["pl" + ini]["aso#90317"] = aso#90317;
   _root["aso#75555"]["pl" + ini]["aso#41013"] = aso#41013;
   _root["aso#75555"]["pl" + ini]["aso#03687"] = aso#03687;
   _root["aso#75555"]["pl" + ini]["aso#49786"] = mast;
   _root["aso#75555"]["pl" + ini].gotoAndStop(_root["aso#75555"]["player" + mast]["aso#63577"]._currentframe);
   _root["aso#75555"]["pl" + ini]._rotation = Math.atan2(aso#03687,aso#41013) / 3.141592653589793 * 180;
   if(ok)
   {
      pulstot++;
      if(pulstot >= pulsmax)
      {
         pulstot = 0;
      }
   }
}
function §aso#64548§(§aso#46581§, §aso#77918§, §aso#04658§, §aso#35995§)
{
   ok = true;
   set("aso#70116",- Math.atan2(aso#46581 - aso#04658,aso#77918 - aso#35995) - 1.5707963267948966);
   tracex = Math.cos(eval("aso#70116")) * 20;
   tracey = Math.sin(eval("aso#70116")) * 20;
   tracx = aso#46581;
   tracy = aso#77918;
   dst = Math.floor(eval("aso#09676")(aso#46581,aso#77918,aso#04658,aso#35995) / 20);
   z = 0;
   while(z < dst && ok == true)
   {
      tracx += tracex;
      tracy += tracey;
      if(_root["aso#75555"].colmap.hitTest(tracx + _root["aso#75555"]._x,tracy + _root["aso#75555"]._y,true))
      {
         ok = false;
      }
      z++;
   }
   return ok;
}
function finish()
{
   my_so.data.lwea = _root["aso#75555"].player0["aso#63577"]._currentframe;
   if(_root["aso#75555"].player0["aso#32240"] > 0)
   {
      _root.gotoAndStop(4);
   }
}
function §aso#94072§(hor, ver, a)
{
   hor = Math.abs(hor) * 0.5;
   ver = Math.abs(ver) * 0.5;
   if(hor > ver + 2)
   {
      _root["aso#75555"]["player" + eval("aso#11068")[a]].sou.gotoAndStop(9);
   }
   else
   {
      if(ver > 2)
      {
         if(ver <= 3)
         {
            _root["aso#75555"]["player" + eval("aso#11068")[a]].sou.gotoAndStop(7);
         }
      }
      if(ver > 3)
      {
         if(ver <= 4)
         {
            _root["aso#75555"]["player" + eval("aso#11068")[a]].sou.gotoAndStop(6);
         }
      }
      if(ver > 4)
      {
         _root["aso#75555"]["player" + eval("aso#11068")[a]].sou.gotoAndStop(8);
      }
   }
}
function §aso#95885§(mess)
{
   hinttim = mess.length * 2 + 10;
   _root.hint.htmlText = "Hint: " + mess;
}
function §aso#86691§(mess)
{
   hinttim = mess.length * 2 + 10;
   _root.hint.htmlText = mess;
}
_root["aso#42405"]._visible = false;
_root.score._visible = false;
_root["aso#67753"] = 2;
_root.stop();
_root["aso#75555"].gotoAndStop(_root["aso#25830"]);
var §aso#52991§ = 0.017453292519943295;
_root.stat_kills = 0;
_root.stat_headshots = 0;
_root.stat_shots = 0;
if(my_so.data["aso#51178"] < _root["aso#25830"])
{
   my_so.data["aso#51178"] = _root["aso#25830"];
}
set("aso#33211",1);
grenades = 0;
set("aso#38779",8);
set("aso#69566",new Array());
set("aso#51599",new Array());
set("aso#88925",new Array());
set("aso#82936",new Array());
set("aso#64969",new Array());
set("aso#11068",new Array());
set("aso#52570",new Array());
screenX = 800;
screenY = 400;
playerhmax = 400;
hscreenX = 400;
hscreenY = 200;
set("aso#85299",0);
fire = false;
hinttim = 0;
set("aso#73742",0);
grenadetim = 0;
set("aso#99090",new Array());
set("aso#27643",new Array());
set("aso#84328",new Array());
set("aso#81123",new Array());
set("aso#12039",new Array());
set("aso#89896",new Array());
set("aso#55354",new Array());
set("aso#96856",0.5);
set("aso#80702",0.6);
var §aso#00482§ = new Array();
var §aso#47973§ = new Array();
var §aso#07442§ = new Array();
var §aso#44768§ = new Array();
var §aso#00061§ = new Array();
var §aso#21233§ = 0;
var §aso#62735§ = new Array();
var §aso#49365§ = new Array();
var §aso#16636§ = 0;
_root["aso#75555"].blood._visible = false;
_root["aso#75555"].bloodm._visible = false;
_root["aso#75555"].iskra._visible = false;
_root["aso#75555"].blood.gotoAndStop(1);
_root["aso#75555"].bloodm.gotoAndStop(1);
_root["aso#75555"].iskra.gotoAndStop(1);
_root["aso#75555"].men._visible = false;
_root["aso#75555"].enemy._visible = false;
_root["aso#75555"].men.gotoAndStop(1);
_root["aso#75555"].enemy.gotoAndStop(1);
_root["aso#75555"].men["aso#02295"].gotoAndStop(1);
_root["aso#75555"].enemy["aso#02295"].gotoAndStop(1);
_root["aso#75555"].end._visible = false;
_root["aso#75555"].gilza._visible = false;
_root["aso#75555"].gilza2._visible = false;
_root["aso#75555"].gilza.disabled = true;
_root["aso#75555"].gilza2.disabled = true;
_root["aso#75555"].smoke._visible = false;
_root["aso#75555"].rock._visible = false;
set("aso#40592",0);
barrelstotal = 0;
heatotal = 0;
set("aso#20262",0);
while(eval("aso#20262") < 100)
{
   if(_root["aso#75555"].colmap["box" + eval("aso#20262")])
   {
      set("aso#40592",eval("aso#40592") + 1);
   }
   else
   {
      set("aso#20262",100);
   }
   eval("aso#20262")++;
}
set("aso#20262",0);
while(eval("aso#20262") < 100)
{
   if(_root["aso#75555"]["barrel" + eval("aso#20262")])
   {
      barrelstotal += 1;
   }
   else
   {
      set("aso#20262",100);
   }
   eval("aso#20262")++;
}
set("aso#20262",0);
while(eval("aso#20262") < 100)
{
   if(_root["aso#75555"]["medikit" + eval("aso#20262")])
   {
      heatotal += 1;
   }
   else
   {
      set("aso#20262",100);
   }
   eval("aso#20262")++;
}
playerstot = 0;
monsterstot = 0;
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
set("aso#97698",0);
maxef = 128;
set("aso#20812",2 * _root["aso#13852"] / 3);
set("aso#36416",0);
set("aso#82515",0);
if(my_so.data.weapon4 == -1)
{
   grenades = 3;
}
else
{
   grenades = 15;
}
set("aso#76105",_root["aso#75555"].men["aso#63577"]._xscale);
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
   _root["aso#75555"]["player" + eval("aso#06892")].filters = _root["aso#75555"].men.filters;
   _root["aso#75555"]["player" + eval("aso#06892")]._x = _root["aso#75555"]["start" + eval("aso#06892")]._x;
   _root["aso#75555"]["player" + eval("aso#06892")]._y = _root["aso#75555"]["start" + eval("aso#06892")]._y;
   _root["aso#75555"]["player" + eval("aso#06892")].getdown = false;
   if(eval("aso#06892") == 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")].getdown = true;
   }
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
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = playerhmax;
   }
   else
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 100;
   }
   _root["aso#75555"]["player" + eval("aso#06892")].lhea = _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"];
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#59951"] = 0;
   if(eval("aso#06892") != 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(1);
   }
   else
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(my_so.data.lwea);
   }
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
   _root["aso#75555"]["player" + eval("aso#06892")].sit = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].dead = false;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] = false;
   _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay(2);
   _root["aso#75555"]["player" + eval("aso#06892")]._visible = false;
   if(eval("aso#06892") == 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"] = 4;
   }
   else
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"] = 1;
   }
   if(eval("aso#06892") == 0)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] = 0;
   }
   else
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] = 1;
   }
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] + 1);
   _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] + 1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] + 1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] + 1);
   _root["aso#75555"]["player" + eval("aso#06892")].hunt = -1;
   if(eval("aso#06892") == 0 && monstermode)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] = 2;
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] = 1;
      _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay(2);
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(1);
      _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(1);
      _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(1);
      _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(1);
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(10);
   }
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"].gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._visible = false;
   if(eval("aso#06892") == 0)
   {
      set("aso#45610",1);
      while(eval("aso#45610") < 10)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["w_upg" + eval("aso#45610")] = my_so.data["weapon" + eval("aso#45610")];
         eval("aso#45610")++;
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg7 == -1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")].opentop = true;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(11);
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg8 == -1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 100;
         playerhmax = 100;
      }
      else
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 150 + 50 * _root["aso#75555"]["player" + eval("aso#06892")].w_upg8;
         playerhmax = 150 + 50 * _root["aso#75555"]["player" + eval("aso#06892")].w_upg8;
      }
      eval("aso#68724")(eval("aso#06892"));
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
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 300;
   _root["aso#75555"]["player" + eval("aso#06892")].lhea = _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"];
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#59951"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 1;
   _root["aso#75555"]["player" + eval("aso#06892")].sit = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
   _root["aso#75555"]["player" + eval("aso#06892")].dead = false;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] = false;
   _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay(2);
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(10);
   _root["aso#75555"]["player" + eval("aso#06892")]._visible = false;
   _root["aso#75555"]["player" + eval("aso#06892")].opentop = false;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] = 2;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] = 1;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"] = 2;
   _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(1);
   _root["aso#75555"]["player" + eval("aso#06892")].hunt = -1;
   _root["aso#75555"]["start" + eval("aso#06892")].unloadMovie();
   eval("aso#06892")++;
}
playerstot += monsterstot;
_root["aso#75555"].plazma._visible = false;
pulstot = 0;
pulsmax = 32;
_root.glow._visible = false;
_root.glow._alpha = 0;
_root["aso#75555"]._x = - _root["aso#75555"].player0.body._x - _root["aso#75555"].player0._x + hscreenX;
_root["aso#75555"]._y = - _root["aso#75555"].player0.body._y - _root["aso#75555"].player0._y + hscreenY;
pspeed = 6;
_root.onEnterFrame = function()
{
   if(_root["aso#67753"] == 2)
   {
   }
   if(grenadetim > 0)
   {
      grenadetim--;
   }
   _root["aso#75555"]._x = Math.round((- _root["aso#75555"].player0.body._x + hscreenX - _xmouse - _root["aso#75555"].player0._x + hscreenX + _root["aso#75555"]._x * 10) / 11);
   _root["aso#75555"]._y = Math.round((- _root["aso#75555"].player0.body._y + hscreenY - _ymouse - _root["aso#75555"].player0._y + hscreenY + _root["aso#75555"]._y * 10) / 11);
   hinttim -= 1;
   if(hinttim < 0)
   {
      _root.hint.text = "";
      hinttim = 100;
   }
   set("aso#85299",eval("aso#85299") - 1);
   if(eval("aso#85299") < -1)
   {
      set("aso#85299",10 + (3 - _root["aso#79731"]) * 10);
   }
   pl = 0;
   while(pl < pulsmax)
   {
      if(_root["aso#75555"]["pl" + pl]._visible == true)
      {
         set("aso#00903",_root["aso#75555"]["pl" + pl]);
         eval("aso#00903")._x += eval("aso#00903")["aso#41013"] * pspeed;
         eval("aso#00903")._y += eval("aso#00903")["aso#03687"] * pspeed;
         eval("aso#00903").life++;
         if(eval("aso#00903").life > 20)
         {
            eval("aso#00903")._visible = false;
         }
         set("aso#45610",0);
         while(eval("aso#45610") < playerstot)
         {
            if(_root["aso#75555"]["player" + eval("aso#45610")].dead && eval("aso#00903")._x < _root["aso#75555"]["player" + eval("aso#45610")].body._x + 400 && eval("aso#00903")._x > _root["aso#75555"]["player" + eval("aso#45610")].body._x - 400 && eval("aso#00903")._y < _root["aso#75555"]["player" + eval("aso#45610")].body._y + 400 && eval("aso#00903")._y > _root["aso#75555"]["player" + eval("aso#45610")].body._y - 400 || !_root["aso#75555"]["player" + eval("aso#45610")].dead && eval("aso#00903")._x < _root["aso#75555"]["player" + eval("aso#45610")]._x + 200 && eval("aso#00903")._x > _root["aso#75555"]["player" + eval("aso#45610")]._x - 200 && eval("aso#00903")._y < _root["aso#75555"]["player" + eval("aso#45610")]._y + 100 && eval("aso#00903")._y > _root["aso#75555"]["player" + eval("aso#45610")]._y - 300)
            {
               if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] <= 0 || _root["aso#75555"]["player" + eval("aso#00903")["aso#49786"]]["aso#58980"] == _root["aso#75555"]["player" + eval("aso#45610")]["aso#58980"] && _root["aso#75555"]["player" + eval("aso#45610")]["aso#58980"] != 0 || _root["aso#75555"]["player" + eval("aso#00903")["aso#49786"]]["aso#58980"] != _root["aso#75555"]["player" + eval("aso#45610")]["aso#58980"])
               {
                  if(eval("aso#00903")["aso#49786"] != eval("aso#45610"))
                  {
                     set("aso#29035",pspeed - 1);
                     while(eval("aso#29035") >= 0)
                     {
                        if(_root["aso#75555"]["player" + eval("aso#45610")].hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                        {
                           if(eval("aso#00903")["aso#90317"] >= 0.2)
                           {
                              type = 1;
                              if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] <= 0 && _root["aso#75555"]["player" + eval("aso#45610")].dead)
                              {
                                 tt = 0;
                                 a = 0;
                                 while(a < eval("aso#36416"))
                                 {
                                    if(eval("aso#64969")[a] == true || eval("aso#64969")[a] == false)
                                    {
                                       if(eval("aso#09676")(eval("aso#69566")[a],eval("aso#51599")[a],eval("aso#00903")._x,eval("aso#00903")._y) < 40)
                                       {
                                          tt++;
                                       }
                                    }
                                    a++;
                                 }
                                 a = 0;
                                 while(a < eval("aso#36416"))
                                 {
                                    if(eval("aso#64969")[a] == true || eval("aso#64969")[a] == false)
                                    {
                                       if(eval("aso#09676")(eval("aso#69566")[a],eval("aso#51599")[a],eval("aso#00903")._x,eval("aso#00903")._y) < 40)
                                       {
                                          eval("aso#88925")[a] += eval("aso#00903")["aso#41013"] * eval("aso#00903")["aso#90317"] / tt;
                                          eval("aso#82936")[a] += eval("aso#00903")["aso#03687"] * eval("aso#00903")["aso#90317"] / tt;
                                          eval("aso#64969")[a] = true;
                                       }
                                    }
                                    a++;
                                 }
                              }
                              set("aso#01874",1);
                              if(eval("aso#45610") == 0)
                              {
                                 if(my_so.data["aso#79731"] == 2)
                                 {
                                    set("aso#01874",0.5);
                                 }
                                 if(my_so.data["aso#79731"] == 1)
                                 {
                                    set("aso#01874",0.25);
                                 }
                              }
                              if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#33632"].hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#35024"] = "aso#33632";
                                 if(eval("aso#00903")["aso#49786"] == 0)
                                 {
                                    if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] > 0)
                                    {
                                       eval("aso#86691")("Headshot!");
                                       _root.stat_headshots += 1;
                                    }
                                 }
                                 if(_root["aso#75555"]["player" + eval("aso#45610")].opentop)
                                 {
                                    _root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] -= 200 * eval("aso#00903")["aso#90317"] * eval("aso#01874");
                                 }
                                 else
                                 {
                                    _root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] -= 70 * eval("aso#00903")["aso#90317"] * eval("aso#01874");
                                 }
                                 type = 2;
                              }
                              else if(_root["aso#75555"]["player" + eval("aso#45610")].body.hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] -= 30 * eval("aso#00903")["aso#90317"] * eval("aso#01874");
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#35024"] = "body";
                              }
                              else if(_root["aso#75555"]["player" + eval("aso#45610")].arm1.hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035") + _root["aso#75555"]._y,true) || _root["aso#75555"]["player" + eval("aso#45610")].arm2.hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] -= 35 * eval("aso#00903")["aso#90317"] * eval("aso#01874");
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#35024"] = "arm";
                              }
                              else if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#02295"].hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] -= 40 * eval("aso#00903")["aso#90317"] * eval("aso#01874");
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#35024"] = "leg";
                              }
                              else if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#63577"].hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035") + _root["aso#75555"]._y,true) || _root["aso#75555"]["player" + eval("aso#45610")]["aso#70958"].hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 type = 0;
                              }
                              if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#76947"] == 1)
                              {
                                 type = 5;
                              }
                              _root["aso#75555"]["player" + eval("aso#45610")]["aso#75134"] += 10 * eval("aso#00903")["aso#90317"];
                              eval("aso#96306")(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * eval("aso#29035"),eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * eval("aso#29035"),type,eval("aso#00903")["aso#41013"] * eval("aso#00903")["aso#90317"] * 3,eval("aso#00903")["aso#03687"] * eval("aso#00903")["aso#90317"] * 3);
                              if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] > 0)
                              {
                                 if(type != 0)
                                 {
                                    _root["aso#75555"]["player" + eval("aso#45610")].gotoAndPlay("hurt");
                                 }
                                 if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#58980"] != 0 || _root["aso#75555"]["player" + eval("aso#00903")["aso#49786"]]["aso#58980"] != 0)
                                 {
                                    _root["aso#75555"]["player" + eval("aso#45610")].hunt = eval("aso#00903")["aso#49786"];
                                 }
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#23046"] = true;
                              }
                              else if(!_root["aso#75555"]["player" + eval("aso#45610")].dead)
                              {
                                 eval("aso#00903")._x -= eval("aso#00903")["aso#41013"] * eval("aso#29035");
                                 eval("aso#00903")._y -= eval("aso#00903")["aso#03687"] * eval("aso#29035");
                              }
                              if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] > 0)
                              {
                                 set("aso#72350",0);
                                 while(eval("aso#72350") < playerstot)
                                 {
                                    if(eval("aso#45610") != eval("aso#72350") && eval("aso#72350") != eval("aso#00903")["aso#49786"])
                                    {
                                       if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#58980"] == _root["aso#75555"]["player" + eval("aso#72350")]["aso#58980"])
                                       {
                                          if(_root["aso#75555"]["player" + eval("aso#72350")]["aso#32240"] > 0)
                                          {
                                             if(_root["aso#75555"]["player" + eval("aso#72350")]["aso#23046"] == true)
                                             {
                                                if(Math.abs(_root["aso#75555"]["player" + eval("aso#45610")]._x - _root["aso#75555"]["player" + eval("aso#72350")]._x) < hscreenX)
                                                {
                                                   if(Math.abs(_root["aso#75555"]["player" + eval("aso#45610")]._y - _root["aso#75555"]["player" + eval("aso#72350")]._y) < hscreenY)
                                                   {
                                                      _root["aso#75555"]["player" + eval("aso#72350")].hunt = eval("aso#00903")["aso#49786"];
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    eval("aso#72350")++;
                                 }
                              }
                              if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] > 0 || _root["aso#75555"]["player" + eval("aso#45610")].dead)
                              {
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#57588"] += eval("aso#00903")["aso#41013"] * 0.5 * eval("aso#00903")["aso#90317"];
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#94914"] += eval("aso#00903")["aso#03687"] * 0.5 * eval("aso#00903")["aso#90317"];
                              }
                              else
                              {
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#57588"] += eval("aso#00903")["aso#41013"] * 0.2 * eval("aso#00903")["aso#90317"];
                                 _root["aso#75555"]["player" + eval("aso#45610")]["aso#94914"] += eval("aso#00903")["aso#03687"] * 0.2 * eval("aso#00903")["aso#90317"];
                              }
                           }
                           else
                           {
                              eval("aso#00903")._visible = false;
                           }
                           if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] > 0 || _root["aso#75555"]["player" + eval("aso#45610")].dead)
                           {
                              eval("aso#00903")["aso#90317"] -= 0.5;
                              if(eval("aso#00903")["aso#90317"] < 0.2)
                              {
                                 eval("aso#00903")._visible = false;
                              }
                           }
                        }
                        eval("aso#29035")--;
                     }
                  }
               }
            }
            eval("aso#45610")++;
         }
         if(_root["aso#75555"].colmap.hitTest(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * pspeed / 2 + _root["aso#75555"]._x,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * pspeed / 2 + _root["aso#75555"]._y,true))
         {
            eval("aso#96306")(eval("aso#00903")._x - eval("aso#00903")["aso#41013"] * pspeed / 2,eval("aso#00903")._y - eval("aso#00903")["aso#03687"] * pspeed / 2,0);
            eval("aso#00903")["aso#90317"] -= 0.7;
            if(eval("aso#00903")["aso#90317"] < 0.2)
            {
               eval("aso#00903")._visible = false;
            }
         }
         if(eval("aso#00903")._visible)
         {
            if(_root["aso#75555"].colmap.hitTest(eval("aso#00903")._x + _root["aso#75555"]._x,eval("aso#00903")._y + _root["aso#75555"]._y,true))
            {
               eval("aso#96306")(eval("aso#00903")._x,eval("aso#00903")._y,0);
               eval("aso#00903")["aso#90317"] -= 0.7;
               if(eval("aso#00903")["aso#90317"] < 0.2)
               {
                  eval("aso#00903")._visible = false;
               }
            }
         }
         if(eval("aso#00903")._y > 1000)
         {
            eval("aso#96306")(eval("aso#00903")._x,eval("aso#00903")._y,0);
            eval("aso#00903")._visible = false;
         }
         set("aso#20262",0);
         while(eval("aso#20262") < barrelstotal)
         {
            if(_root["aso#75555"]["barrel" + eval("aso#20262")]._currentframe < 4)
            {
               if(_root["aso#75555"]["barrel" + eval("aso#20262")].hitTest(eval("aso#00903")))
               {
                  eval("aso#96306")(eval("aso#00903")._x,eval("aso#00903")._y,0);
                  hur = Math.floor(eval("aso#00903")["aso#90317"] * 2);
                  if(hur < 0)
                  {
                     hur = 0;
                  }
                  if(_root["aso#75555"]["barrel" + eval("aso#20262")]._currentframe + hur > 3)
                  {
                     _root["aso#75555"]["barrel" + eval("aso#20262")].gotoAndPlay(4);
                  }
                  else
                  {
                     _root["aso#75555"]["barrel" + eval("aso#20262")].gotoAndStop(_root["aso#75555"]["barrel" + eval("aso#20262")]._currentframe + hur);
                  }
                  eval("aso#00903")["aso#90317"] -= 0.5;
                  if(eval("aso#00903")["aso#90317"] < 0.2)
                  {
                     eval("aso#00903")._visible = false;
                  }
               }
            }
            eval("aso#20262")++;
         }
      }
      pl++;
   }
   _root["aso#83486"].text = Math.max(Math.round(_root["aso#75555"].player0["aso#32240"] / playerhmax * 100),0);
   _root.playergr.text = grenades;
   if(_root["aso#75555"].player0["aso#32240"] > 0)
   {
      if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].end))
      {
         finish();
      }
      if(_root["aso#75555"].player0["aso#32240"] < playerhmax)
      {
         set("aso#20262",0);
         while(eval("aso#20262") < heatotal)
         {
            if(_root["aso#75555"]["medikit" + eval("aso#20262")]._currentframe == 1)
            {
               if(_root["aso#75555"].player0.hitTest(_root["aso#75555"]["medikit" + eval("aso#20262")]))
               {
                  _root["aso#75555"]["medikit" + eval("aso#20262")].gotoAndPlay(2);
                  _root["aso#75555"].player0["aso#32240"] = Math.min(playerhmax,_root["aso#75555"].player0["aso#32240"] + 50);
               }
            }
            eval("aso#20262")++;
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
   set("aso#06892",0);
   while(eval("aso#06892") < playerstot)
   {
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] == true)
         {
            set("aso#91709",_root["aso#75555"]["player" + eval("aso#06892")].body._rotation * eval("aso#52991"));
            set("aso#31819",Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")].body.headbone._y,_root["aso#75555"]["player" + eval("aso#06892")].body.headbone._x) - 1.5707963267948966);
            set("aso#14273",eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")].body.headbone._x,_root["aso#75555"]["player" + eval("aso#06892")].body.headbone._y,0,0));
            plx = Math.sin(eval("aso#91709") + eval("aso#31819")) * eval("aso#14273");
            ply = Math.cos(eval("aso#91709") + eval("aso#31819")) * eval("aso#14273");
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"]._x = _root["aso#75555"]["player" + eval("aso#06892")].body._x - plx;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"]._y = _root["aso#75555"]["player" + eval("aso#06892")].body._y + ply;
            set("aso#91709",_root["aso#75555"]["player" + eval("aso#06892")].body._rotation * eval("aso#52991"));
            set("aso#31819",Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")].body.armbone._y,_root["aso#75555"]["player" + eval("aso#06892")].body.armbone._x) - 1.5707963267948966);
            set("aso#14273",eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")].body.armbone._x,_root["aso#75555"]["player" + eval("aso#06892")].body.armbone._y,0,0));
            plx = Math.sin(eval("aso#91709") + eval("aso#31819")) * eval("aso#14273");
            ply = Math.cos(eval("aso#91709") + eval("aso#31819")) * eval("aso#14273");
            _root["aso#75555"]["player" + eval("aso#06892")].arm1._x = _root["aso#75555"]["player" + eval("aso#06892")].body._x - plx;
            _root["aso#75555"]["player" + eval("aso#06892")].arm1._y = _root["aso#75555"]["player" + eval("aso#06892")].body._y + ply;
            _root["aso#75555"]["player" + eval("aso#06892")].arm2._x = _root["aso#75555"]["player" + eval("aso#06892")].body._x - plx + 1.5;
            _root["aso#75555"]["player" + eval("aso#06892")].arm2._y = _root["aso#75555"]["player" + eval("aso#06892")].body._y + ply;
            set("aso#91709",_root["aso#75555"]["player" + eval("aso#06892")].arm2._rotation * eval("aso#52991"));
            set("aso#31819",Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")].arm2.wea._y,_root["aso#75555"]["player" + eval("aso#06892")].arm2.wea._x) - 1.5707963267948966);
            set("aso#45610",0);
            while(eval("aso#45610") < playerstot)
            {
               if(eval("aso#06892") != eval("aso#45610"))
               {
                  if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] <= 0)
                  {
                     set("aso#39200",_root["aso#75555"]["player" + eval("aso#45610")].center);
                     if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(eval("aso#69566")[eval("aso#39200")] + _root["aso#75555"]._x,eval("aso#51599")[eval("aso#39200")] + _root["aso#75555"]._y,true))
                     {
                        set("aso#14273",eval("aso#09676")(0,0,eval("aso#88925")[eval("aso#39200")],eval("aso#82936")[eval("aso#39200")]));
                        if(eval("aso#14273") > 5)
                        {
                           _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] += eval("aso#88925")[eval("aso#39200")] * 0.7;
                           _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] += eval("aso#82936")[eval("aso#39200")] * 0.7;
                           eval("aso#88925")[eval("aso#39200")] *= 0.5;
                           eval("aso#82936")[eval("aso#39200")] *= 0.5;
                        }
                     }
                  }
               }
               eval("aso#45610")++;
            }
         }
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] == false)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(_root.visarea))
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] = true;
         }
         else if(_root["aso#75555"]["player" + eval("aso#06892")].hunt == -1)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] = false;
            _root["aso#75555"]["player" + eval("aso#06892")]._visible = false;
         }
      }
      else
      {
         if(!_root["aso#75555"]["player" + eval("aso#06892")]._visible)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]._visible = true;
         }
         if(_root["aso#75555"]["player" + eval("aso#06892")].hunt != -1)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")].say_vis != undefined)
            {
               eval("aso#86691")(_root["aso#75555"]["player" + eval("aso#06892")].say_vis);
               _root["aso#75555"]["player" + eval("aso#06892")].say_vis = undefined;
            }
         }
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] == true)
         {
            set("aso#45610",0);
            while(eval("aso#45610") < playerstot)
            {
               if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#23046"] == true)
               {
                  if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] > 0)
                  {
                     if(eval("aso#06892") != eval("aso#45610"))
                     {
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] != 0 || _root["aso#75555"]["player" + eval("aso#45610")]["aso#58980"] != 0)
                        {
                           if(_root["aso#75555"]["player" + eval("aso#06892")]._y > _root["aso#75555"]["player" + eval("aso#45610")]._y - 100)
                           {
                              if(_root["aso#75555"]["player" + eval("aso#06892")]._y < _root["aso#75555"]["player" + eval("aso#45610")]._y + 100)
                              {
                                 if(_root["aso#75555"]["player" + eval("aso#06892")]._x > _root["aso#75555"]["player" + eval("aso#45610")]._x - 40)
                                 {
                                    if(_root["aso#75555"]["player" + eval("aso#06892")]._x < _root["aso#75555"]["player" + eval("aso#45610")]._x + 40)
                                    {
                                       set("aso#55775",(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#45610")]._x) / 2);
                                       if(_root["aso#75555"]["player" + eval("aso#06892")]._x > _root["aso#75555"]["player" + eval("aso#45610")]._x)
                                       {
                                          _root["aso#75555"]["player" + eval("aso#06892")]._x = eval("aso#55775") + 20;
                                          _root["aso#75555"]["player" + eval("aso#45610")]._x = eval("aso#55775") - 20;
                                       }
                                       else
                                       {
                                          _root["aso#75555"]["player" + eval("aso#06892")]._x = eval("aso#55775") - 20;
                                          _root["aso#75555"]["player" + eval("aso#45610")]._x = eval("aso#55775") + 20;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               eval("aso#45610")++;
            }
            set("aso#47002",_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]._xscale * 3);
            set("aso#78339",_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y);
            _root["aso#75555"]["player" + eval("aso#06892")]._x += _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"];
            _root["aso#75555"]["player" + eval("aso#06892")]._y += _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"];
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] += eval("aso#33211");
            if(_root["aso#75555"]["player" + eval("aso#06892")]._y > 1000)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] -= Math.abs(_root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] * _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] * 0.19);
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 0;
               }
               _root["aso#75555"]["player" + eval("aso#06892")].getdown = true;
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
               {
                  eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 20,1);
                  eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 20,1);
                  eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 20,1);
               }
               else
               {
                  eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 20,5);
                  eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 20,5);
                  eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 20,5);
               }
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] > 10)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 10;
               }
            }
            if(eval("aso#06892") != 0)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")].hunt != -1)
               {
                  set("aso#47002",_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]._x);
                  set("aso#78339",_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]._y - 10 - Math.random() * 50);
                  set("aso#76526",Math.abs(eval("aso#47002") - _root["aso#75555"]["player" + eval("aso#06892")]._x));
                  if(eval("aso#76526") < 200 || _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] == 1)
                  {
                     if(Math.random() > 0.4)
                     {
                        set("aso#78339",_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]._y - 70);
                     }
                     else
                     {
                        set("aso#78339",_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]._y - 10 - Math.random() * 50);
                     }
                  }
                  set("aso#76526",eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#47002"),eval("aso#78339")));
                  set("aso#47002",eval("aso#47002") + _root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]["aso#57588"] * (eval("aso#76526") / pspeed) * 0.3);
                  set("aso#78339",eval("aso#78339") + _root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]["aso#94914"] * (eval("aso#76526") / pspeed) * 0.3);
                  set("aso#20262",0);
                  while(eval("aso#20262") < barrelstotal)
                  {
                     if(_root["aso#75555"]["barrel" + eval("aso#20262")]._currentframe < 4)
                     {
                        if(eval("aso#09676")(_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]._x,_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]._y - 40,_root["aso#75555"]["barrel" + eval("aso#20262")]._x,_root["aso#75555"]["barrel" + eval("aso#20262")]._y) < 100)
                        {
                           if(eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y - 40,_root["aso#75555"]["barrel" + eval("aso#20262")]._x,_root["aso#75555"]["barrel" + eval("aso#20262")]._y) > 150)
                           {
                              set("aso#47002",_root["aso#75555"]["barrel" + eval("aso#20262")]._x);
                              set("aso#78339",_root["aso#75555"]["barrel" + eval("aso#20262")]._y);
                           }
                        }
                     }
                     eval("aso#20262")++;
                  }
                  if(_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt]["aso#32240"] <= 0)
                  {
                     if(Math.random() > 0.97)
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")].hunt = -1;
                     }
                     else
                     {
                        set("aso#47002",_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt].body._x);
                        set("aso#78339",_root["aso#75555"]["player" + _root["aso#75555"]["player" + eval("aso#06892")].hunt].body._y);
                     }
                  }
               }
               else if(Math.random() > 0.95 || _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] == 1)
               {
                  ran = 0;
                  while(ran < playerstot)
                  {
                     if(_root["aso#75555"]["player" + eval("aso#06892")].hunt == -1)
                     {
                        if(_root["aso#75555"]["player" + ran]["aso#58980"] != _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"])
                        {
                           if(_root["aso#75555"]["player" + ran]["aso#32240"] > 0)
                           {
                              if(ran != eval("aso#06892"))
                              {
                                 if(_root["aso#75555"]["player" + ran]["aso#23046"] == true)
                                 {
                                    if(Math.abs(_root["aso#75555"]["player" + ran]._x - _root["aso#75555"]["player" + eval("aso#06892")]._x) < hscreenX && Math.abs(_root["aso#75555"]["player" + ran]._y - _root["aso#75555"]["player" + eval("aso#06892")]._y) < hscreenY)
                                    {
                                       _root["aso#75555"]["player" + eval("aso#06892")].hunt = ran;
                                    }
                                    else if(eval("aso#64548")(_root["aso#75555"]["player" + eval("aso#06892")]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"]._y,_root["aso#75555"]["player" + ran]._x,_root["aso#75555"]["player" + ran]._y))
                                    {
                                       _root["aso#75555"]["player" + eval("aso#06892")].hunt = ran;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     ran++;
                  }
               }
            }
            else
            {
               set("aso#47002",_xmouse - _root["aso#75555"]._x);
               set("aso#78339",_ymouse - _root["aso#75555"]._y);
            }
            stand = false;
            set("aso#20262",0);
            while(eval("aso#20262") < eval("aso#40592"))
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]._x > _root["aso#75555"].colmap["box" + eval("aso#20262")]._x - 10)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")]._x < _root["aso#75555"].colmap["box" + eval("aso#20262")]._x + _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale + 10)
                  {
                     if(_root["aso#75555"]["player" + eval("aso#06892")]._y > _root["aso#75555"].colmap["box" + eval("aso#20262")]._y + _root["aso#75555"]["player" + eval("aso#06892")].sit * eval("aso#38779"))
                     {
                        if(_root["aso#75555"]["player" + eval("aso#06892")]._y < _root["aso#75555"].colmap["box" + eval("aso#20262")]._y + _root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale + 82)
                        {
                           set("aso#73321",(_root["aso#75555"].colmap["box" + eval("aso#20262")]._x + _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale / 2 - (_root["aso#75555"]["player" + eval("aso#06892")]._x - _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"])) / (_root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale + 20) * 100);
                           set("aso#53962",(_root["aso#75555"].colmap["box" + eval("aso#20262")]._y + (_root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale + 82) / 2 - (_root["aso#75555"]["player" + eval("aso#06892")]._y - _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"])) / (_root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale + 82) * 100);
                           if(_root["aso#75555"]["player" + eval("aso#06892")]._y < _root["aso#75555"].colmap["box" + eval("aso#20262")]._y + 30)
                           {
                              set("aso#73321",1);
                              set("aso#53962",2);
                           }
                           if(Math.abs(eval("aso#73321")) > Math.abs(eval("aso#53962")))
                           {
                              _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "all";
                              if(Math.abs(_root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"]) > 16)
                              {
                                 if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
                                 {
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,1);
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,1);
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,1);
                                 }
                                 else
                                 {
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,5);
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,5);
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,5);
                                 }
                                 _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] -= Math.abs(_root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] * _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] * 0.22);
                                 _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
                              }
                              if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
                              {
                                 _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] *= 0.5;
                                 _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= 0.5;
                                 if(eval("aso#73321") < 0)
                                 {
                                    _root["aso#75555"]["player" + eval("aso#06892")]._x = _root["aso#75555"].colmap["box" + eval("aso#20262")]._x + _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale + 11;
                                    _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] = Math.abs(_root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"]) + 0.1;
                                 }
                                 else
                                 {
                                    _root["aso#75555"]["player" + eval("aso#06892")]._x = _root["aso#75555"].colmap["box" + eval("aso#20262")]._x - 11;
                                    _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] = - Math.abs(_root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"]) - 0.1;
                                 }
                              }
                           }
                           else
                           {
                              if(eval("aso#53962") < 0)
                              {
                                 _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "all";
                              }
                              else
                              {
                                 _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                              }
                              if(Math.abs(_root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"]) > 23)
                              {
                                 if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
                                 {
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,1);
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,1);
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,1);
                                 }
                                 else
                                 {
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,5);
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,5);
                                    eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,_root["aso#75555"]["player" + eval("aso#06892")]._y - Math.random() * 90,5);
                                 }
                                 _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] -= Math.abs(_root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] * _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] * 0.19);
                                 _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("hurt");
                                 _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                              }
                              if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
                              {
                                 _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] *= 0.5;
                                 if(eval("aso#53962") < 0)
                                 {
                                    _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] *= -0.5;
                                    _root["aso#75555"]["player" + eval("aso#06892")]._y = _root["aso#75555"].colmap["box" + eval("aso#20262")]._y + _root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale + 84;
                                 }
                                 else
                                 {
                                    _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] = 0;
                                    stand = true;
                                    _root["aso#75555"]["player" + eval("aso#06892")]._y = _root["aso#75555"].colmap["box" + eval("aso#20262")]._y + _root["aso#75555"]["player" + eval("aso#06892")].sit * eval("aso#38779");
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               eval("aso#20262")++;
            }
            walkok = false;
            if(eval("aso#85299") < 0)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].botaction = -1;
               if(eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].hunt != -1)
               {
                  if(eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#47002"),eval("aso#78339")) < 600)
                  {
                     if(eval("aso#64548")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#47002"),eval("aso#78339")))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")].botaction = 0;
                     }
                  }
               }
            }
            if(eval("aso#85299") < 0)
            {
               if(eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].hunt != -1)
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")].botaction != 0)
                  {
                     if(eval("aso#64548")(200 + _root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#47002"),eval("aso#78339")))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")].botaction = 1;
                     }
                  }
                  if(_root["aso#75555"]["player" + eval("aso#06892")].botaction != 0)
                  {
                     if(eval("aso#64548")(-200 + _root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#47002"),eval("aso#78339")))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")].botaction = 2;
                     }
                  }
                  if(_root["aso#75555"]["player" + eval("aso#06892")].botaction == -1)
                  {
                     if(eval("aso#64548")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y - 60,eval("aso#47002"),eval("aso#78339")))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")].botaction = 4;
                     }
                  }
                  if(_root["aso#75555"]["player" + eval("aso#06892")].botaction != 0)
                  {
                     if(eval("aso#64548")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,-60 + _root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#47002"),eval("aso#78339")))
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")].botaction = 3;
                     }
                  }
                  pl = 0;
                  while(pl < pulsmax)
                  {
                     if(_root["aso#75555"]["pl" + pl]._visible == true)
                     {
                        set("aso#00903",_root["aso#75555"]["pl" + pl]);
                        if(_root["aso#75555"]["player" + eval("aso#00903")["aso#49786"]]["aso#58980"] != _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] || _root["aso#75555"]["player" + eval("aso#06892")].hunt == eval("aso#00903")["aso#49786"])
                        {
                           if(eval("aso#00903")._x > _root["aso#75555"]["player" + eval("aso#06892")]._x - 20 - Math.abs(eval("aso#00903")["aso#41013"] * pspeed * 20))
                           {
                              if(eval("aso#00903")._x < _root["aso#75555"]["player" + eval("aso#06892")]._x + 20 + Math.abs(eval("aso#00903")["aso#41013"] * pspeed * 20))
                              {
                                 if(eval("aso#00903")._y > _root["aso#75555"]["player" + eval("aso#06892")]._y - 90 - Math.abs(eval("aso#00903")["aso#03687"] * pspeed * 20))
                                 {
                                    if(eval("aso#00903")._y < _root["aso#75555"]["player" + eval("aso#06892")]._y + 90 + Math.abs(eval("aso#00903")["aso#03687"] * pspeed * 20))
                                    {
                                       set("aso#46581",eval("aso#00903")._x);
                                       set("aso#77918",eval("aso#00903")._y);
                                       set("aso#04658",eval("aso#00903")._x + eval("aso#00903")["aso#41013"]);
                                       set("aso#35995",eval("aso#00903")._y + eval("aso#00903")["aso#03687"]);
                                       if(Math.abs(eval("aso#00903")["aso#41013"]) > Math.abs(eval("aso#00903")["aso#03687"]))
                                       {
                                          set("aso#93101",_root["aso#75555"]["player" + eval("aso#06892")]._x);
                                          set("aso#24438",_root["aso#75555"]["player" + eval("aso#06892")]._y);
                                          set("aso#57167",_root["aso#75555"]["player" + eval("aso#06892")]._x);
                                          set("aso#88504",_root["aso#75555"]["player" + eval("aso#06892")]._y - 83);
                                          v = ((eval("aso#04658") - eval("aso#46581")) * (eval("aso#24438") - eval("aso#77918")) + (eval("aso#35995") - eval("aso#77918")) * (eval("aso#46581") - eval("aso#93101"))) / ((eval("aso#35995") - eval("aso#77918")) * (eval("aso#57167") - eval("aso#93101")) - (eval("aso#04658") - eval("aso#46581")) * (eval("aso#88504") - eval("aso#24438")));
                                          retux = eval("aso#93101") + (eval("aso#57167") - eval("aso#93101")) * v;
                                          retuy = eval("aso#24438") + (eval("aso#88504") - eval("aso#24438")) * v;
                                          if((retux >= eval("aso#93101") || retux >= eval("aso#57167")) && (retux <= eval("aso#93101") || retux <= eval("aso#57167")))
                                          {
                                             if((retuy >= eval("aso#24438") || retuy >= eval("aso#88504")) && (retuy <= eval("aso#24438") || retuy <= eval("aso#88504")))
                                             {
                                                if(retuy < (eval("aso#24438") + eval("aso#88504")) / 2)
                                                {
                                                   _root["aso#75555"]["player" + eval("aso#06892")].botaction = 4;
                                                }
                                                else
                                                {
                                                   _root["aso#75555"]["player" + eval("aso#06892")].botaction = 3;
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          set("aso#93101",_root["aso#75555"]["player" + eval("aso#06892")]._x - 30);
                                          set("aso#24438",_root["aso#75555"]["player" + eval("aso#06892")]._y - 40);
                                          set("aso#57167",_root["aso#75555"]["player" + eval("aso#06892")]._x + 30);
                                          set("aso#88504",_root["aso#75555"]["player" + eval("aso#06892")]._y - 40);
                                          v = ((eval("aso#04658") - eval("aso#46581")) * (eval("aso#24438") - eval("aso#77918")) + (eval("aso#35995") - eval("aso#77918")) * (eval("aso#46581") - eval("aso#93101"))) / ((eval("aso#35995") - eval("aso#77918")) * (eval("aso#57167") - eval("aso#93101")) - (eval("aso#04658") - eval("aso#46581")) * (eval("aso#88504") - eval("aso#24438")));
                                          retux = eval("aso#93101") + (eval("aso#57167") - eval("aso#93101")) * v;
                                          retuy = eval("aso#24438") + (eval("aso#88504") - eval("aso#24438")) * v;
                                          if((retux >= eval("aso#93101") || retux >= eval("aso#57167")) && (retux <= eval("aso#93101") || retux <= eval("aso#57167")))
                                          {
                                             if((retuy >= eval("aso#24438") || retuy >= eval("aso#88504")) && (retuy <= eval("aso#24438") || retuy <= eval("aso#88504")))
                                             {
                                                if(retux < (eval("aso#93101") + eval("aso#57167")) / 2)
                                                {
                                                   _root["aso#75555"]["player" + eval("aso#06892")].botaction = 1;
                                                }
                                                else
                                                {
                                                   _root["aso#75555"]["player" + eval("aso#06892")].botaction = 2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     pl++;
                  }
               }
            }
            if(stand)
            {
               if((Key.isDown(65) || Key.isDown(37)) && eval("aso#06892") == 0 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 2)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] -= 4 / (_root["aso#75555"]["player" + eval("aso#06892")].sit + 1);
                  if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]._currentframe <= 60 && (_root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]._currentframe < 30 || _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]._currentframe > 50))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].gotoAndPlay("walk");
                  }
               }
               if((Key.isDown(68) || Key.isDown(39)) && eval("aso#06892") == 0 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 1)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] += 4 / (_root["aso#75555"]["player" + eval("aso#06892")].sit + 1);
                  if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]._currentframe <= 60 && (_root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]._currentframe < 30 || _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]._currentframe > 50))
                  {
                     _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].gotoAndPlay("walk");
                  }
               }
               if((Key.isDown(32) || Key.isDown(87) || Key.isDown(38)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].botaction == 3)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"] -= 5 + eval("aso#33211") * 4;
               }
            }
            if(!stand)
            {
               if((Key.isDown(65) || Key.isDown(37)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].botaction == 2)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] -= 0.1;
               }
               if((Key.isDown(68) || Key.isDown(39)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].botaction == 1)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] += 0.1;
               }
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")].botaction == 4 || (_root["aso#75555"]["player" + eval("aso#06892")].botaction == -1 || _root["aso#75555"]["player" + eval("aso#06892")].botaction == 0) && _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] < 80 && _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 30)
            {
               walkok = true;
            }
            if((Key.isDown(13) || Key.isDown(71)) && eval("aso#06892") == 0)
            {
               if(grenadetim <= 0)
               {
                  if(grenades > 0)
                  {
                     if(_root["aso#75555"]["player" + eval("aso#06892")]._currentframe < 21 || _root["aso#75555"]["player" + eval("aso#06892")]._currentframe > 25)
                     {
                        grenadetim = 20;
                        grenades -= 1;
                        _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("fire");
                        rn = Math.random();
                        duplicateMovieClip(_root["aso#75555"].grenad,"aso#07863" + eval("aso#73742"),16384 + (400 + eval("aso#73742")));
                        set("aso#91709",Math.atan2(eval("aso#47002") - _root["aso#75555"]["player" + eval("aso#06892")]._x,eval("aso#78339") - _root["aso#75555"]["player" + eval("aso#06892")]._y));
                        _root["aso#75555"]["aso#07863" + eval("aso#73742")]._x = _root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100;
                        _root["aso#75555"]["aso#07863" + eval("aso#73742")]._y = _root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y;
                        _root["aso#75555"]["aso#07863" + eval("aso#73742")]["aso#57588"] = Math.sin(eval("aso#91709")) * 20 + _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"];
                        _root["aso#75555"]["aso#07863" + eval("aso#73742")]["aso#94914"] = Math.cos(eval("aso#91709")) * 20 + _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"];
                        set("aso#73742",eval("aso#73742") + 1);
                     }
                  }
               }
            }
            tosit = 0;
            if((Key.isDown(16) || Key.isDown(83) || Key.isDown(40)) && eval("aso#06892") == 0 || walkok && eval("aso#06892") != 0 || !_root["aso#75555"].colmap.hitTest(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]._x,_root["aso#75555"]["player" + eval("aso#06892")]._y + 12 + _root["aso#75555"]._y,true))
            {
               tosit = 1;
            }
            else
            {
               tosit = -1;
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] > 30)
            {
               tosit = 1;
            }
            _root["aso#75555"]["player" + eval("aso#06892")].sit += tosit;
            if(_root["aso#75555"]["player" + eval("aso#06892")].sit > 2)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].sit = 2;
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")].sit < 0)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].sit = 0;
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")].sit == 1 && tosit == 1)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].gotoAndPlay("sitdown");
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")].sit == 1 && tosit == -1)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].gotoAndPlay("situp");
            }
            set("aso#30427",- Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100 - eval("aso#47002"),_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y - eval("aso#78339")) - 1.5707963267948966);
            if(eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#47002"),eval("aso#78339")) < 80)
            {
               set("aso#30427",- Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")].arm1._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100 - eval("aso#47002"),_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")].arm1._y - eval("aso#78339")) - 1.5707963267948966);
            }
            set("aso#30427",eval("aso#30427") + (Math.random() * _root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"] * 2 - _root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"]) * 0.01);
            set("aso#91709",eval("aso#30427") / 3.141592653589793 * 180);
            TEMP = eval("aso#30427");
            if(_root["aso#75555"]["player" + eval("aso#06892")]._x < eval("aso#47002"))
            {
               _root["aso#75555"]["player" + eval("aso#06892")]._xscale = 100;
            }
            else
            {
               _root["aso#75555"]["player" + eval("aso#06892")]._xscale = -100;
               set("aso#91709",- eval("aso#91709") + 180);
            }
            if(eval("aso#06892") == 0)
            {
               _root["aso#77497"].gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe);
            }
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._rotation = eval("aso#91709");
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._visible == true)
            {
               set("aso#74713",- Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100 - eval("aso#47002"),_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._y - eval("aso#78339")) - 1.5707963267948966);
               if(eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._y,eval("aso#47002"),eval("aso#78339")) < 80)
               {
                  set("aso#74713",- Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")].arm2._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100 - eval("aso#47002"),_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")].arm2._y - eval("aso#78339")) - 1.5707963267948966);
               }
               set("aso#74713",eval("aso#74713") + (Math.random() * _root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"] * 2 - _root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"]) * 0.01);
               set("aso#88083",eval("aso#74713") / 3.141592653589793 * 180);
               if(_root["aso#75555"]["player" + eval("aso#06892")]._x < eval("aso#47002"))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]._xscale = 100;
               }
               else
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]._xscale = -100;
                  set("aso#88083",- eval("aso#88083") + 180);
               }
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._rotation = eval("aso#88083");
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")]._xscale > 0)
            {
               set("aso#61764",eval("aso#91709") / 2 - 90);
            }
            else
            {
               set("aso#61764",eval("aso#91709") / 2 + 90);
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"] > 0.1 || _root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"] < -0.1)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"] *= 0.9;
            }
            else
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"] = 0;
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")]._xscale > 0)
            {
               if(eval("aso#61764") < -135 && eval("aso#61764") >= -180)
               {
                  set("aso#61764",-135);
               }
               if(eval("aso#61764") > -45 || eval("aso#61764") < -180)
               {
                  set("aso#61764",-45);
               }
            }
            else
            {
               if(eval("aso#61764") > 315 || eval("aso#61764") < 180)
               {
                  set("aso#61764",315);
               }
               if(eval("aso#61764") < 225)
               {
                  set("aso#61764",225);
               }
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#08834"] == 0)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].arm1._rotation = eval("aso#61764") + 21 - _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] * 0.8;
               _root["aso#75555"]["player" + eval("aso#06892")].arm2._rotation = eval("aso#61764") + 21 + 2 + _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] * 0.3;
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"]._rotation = eval("aso#61764") + 90 + _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"];
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#25409"]._rotation -= _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] * 0.8;
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._visible == true)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._rotation += _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] * 0.3;
               }
            }
            else
            {
               _root["aso#75555"]["player" + eval("aso#06892")].arm1._rotation = eval("aso#61764") + 21 + _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] * 0.8;
               _root["aso#75555"]["player" + eval("aso#06892")].arm2._rotation = eval("aso#61764") + 21 + 2 + _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] * 0.5;
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"]._rotation = eval("aso#61764") + 90 - _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"];
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#25409"]._rotation += _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] * 0.8;
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._visible == true)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._rotation += _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] * 0.5;
               }
            }
            set("aso#91709",_root["aso#75555"]["player" + eval("aso#06892")].arm1._rotation * eval("aso#52991"));
            set("aso#31819",Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")].arm1.wea._y,_root["aso#75555"]["player" + eval("aso#06892")].arm1.wea._x) - 1.5707963267948966);
            set("aso#14273",eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")].arm1.wea._x,_root["aso#75555"]["player" + eval("aso#06892")].arm1.wea._y,0,0));
            plx = Math.sin(eval("aso#91709") + eval("aso#31819")) * eval("aso#14273");
            ply = Math.cos(eval("aso#91709") + eval("aso#31819")) * eval("aso#14273");
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x = _root["aso#75555"]["player" + eval("aso#06892")].arm1._x - plx;
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y = _root["aso#75555"]["player" + eval("aso#06892")].arm1._y + ply;
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._visible == true)
            {
               set("aso#91709",_root["aso#75555"]["player" + eval("aso#06892")].arm2._rotation * eval("aso#52991"));
               set("aso#31819",Math.atan2(_root["aso#75555"]["player" + eval("aso#06892")].arm2.wea._y,_root["aso#75555"]["player" + eval("aso#06892")].arm2.wea._x) - 1.5707963267948966);
               set("aso#14273",eval("aso#09676")(_root["aso#75555"]["player" + eval("aso#06892")].arm2.wea._x,_root["aso#75555"]["player" + eval("aso#06892")].arm2.wea._y,0,0));
               plx = Math.sin(eval("aso#91709") + eval("aso#31819")) * eval("aso#14273");
               ply = Math.cos(eval("aso#91709") + eval("aso#31819")) * eval("aso#14273");
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._x = _root["aso#75555"]["player" + eval("aso#06892")].arm2._x - plx + 2;
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._y = _root["aso#75555"]["player" + eval("aso#06892")].arm2._y + ply - 1;
            }
            if(eval("aso#85299") < 0)
            {
               _root["aso#75555"]["player" + eval("aso#06892")].lastvis = eval("aso#64548")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#47002"),eval("aso#78339"));
            }
            if(fire && eval("aso#06892") == 0 || eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")].hunt != -1)
            {
               if(eval("aso#06892") == 0 || eval("aso#06892") != 0 && (Math.random() > 0.95 || Math.random() > 0.7 && _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] == 1) && _root["aso#75555"]["player" + eval("aso#06892")].lastvis && (Math.abs(eval("aso#47002") - _root["aso#75555"]["player" + eval("aso#06892")]._x) < screenX || _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] == 1 && Math.abs(eval("aso#47002") - _root["aso#75555"]["player" + eval("aso#06892")]._x) < screenX))
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")]._currentframe < 21 || _root["aso#75555"]["player" + eval("aso#06892")]._currentframe > 25)
                  {
                     if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].whea._currentframe == 1)
                     {
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].whea.gotoAndPlay(2);
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"]._visible == true)
                        {
                           _root["aso#75555"]["player" + eval("aso#06892")]["aso#70958"].whea.gotoAndPlay(2);
                        }
                        _root["aso#75555"]["player" + eval("aso#06892")].gotoAndPlay("fire");
                        if(eval("aso#06892") == 0)
                        {
                           _root.stat_shots++;
                        }
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 1)
                        {
                           puli = 1;
                           if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg1 == 2)
                           {
                              puli = 2;
                           }
                           set("aso#27222",3);
                           noise = 7;
                        }
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 2)
                        {
                           puli = 1;
                           set("aso#27222",3);
                           if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg2 == 0)
                           {
                              noise = 5;
                           }
                           if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg2 == 1)
                           {
                              noise = 1;
                           }
                           if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg2 == 2)
                           {
                              noise = 2;
                           }
                        }
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 3)
                        {
                           puli = 2;
                           set("aso#27222",4);
                           noise = 20;
                           if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg3 == 1)
                           {
                              noise = 12;
                           }
                           if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg3 == 2)
                           {
                              noise = 12;
                              puli = 3;
                           }
                        }
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 5 || _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 12)
                        {
                           puli = 1;
                           set("aso#27222",3);
                           noise = 10;
                        }
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 6)
                        {
                           puli = 0;
                           set("aso#27222",-1);
                           noise = 0;
                           set("aso#45610",0);
                           while(eval("aso#45610") < playerstot)
                           {
                              if(eval("aso#06892") != eval("aso#45610"))
                              {
                                 if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] > 0)
                                 {
                                    if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#76947"] == 0)
                                    {
                                       if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].hitTest(_root["aso#75555"]["player" + eval("aso#45610")]))
                                       {
                                          if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] < 50)
                                          {
                                             _root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] = 0;
                                          }
                                          else
                                          {
                                             _root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] -= 50;
                                          }
                                          _root["aso#75555"]["player" + eval("aso#45610")]["aso#35024"] = "none";
                                          eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y,1,0,0);
                                          if(_root["aso#75555"]["player" + eval("aso#45610")]["aso#32240"] > 0)
                                          {
                                             _root["aso#75555"]["player" + eval("aso#45610")].gotoAndPlay("hurt");
                                             _root["aso#75555"]["player" + eval("aso#45610")].hunt = eval("aso#06892");
                                             _root["aso#75555"]["player" + eval("aso#45610")]["aso#75134"] += 20;
                                          }
                                       }
                                    }
                                 }
                              }
                              eval("aso#45610")++;
                           }
                        }
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 10)
                        {
                           puli = 2;
                           set("aso#27222",6);
                           noise = 20;
                        }
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 11)
                        {
                           puli = 1;
                           set("aso#27222",3);
                           noise = 20;
                        }
                        if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 4 || _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 13)
                        {
                           puli = 0;
                           set("aso#27222",-1);
                           if(grenades > 0 && eval("aso#06892") == 0 || eval("aso#06892") != 0)
                           {
                              noise = 30;
                              if(eval("aso#06892") == 0)
                              {
                                 grenades -= 1;
                              }
                              rn = Math.random();
                              duplicateMovieClip(_root["aso#75555"].rocket,"aso#07863" + eval("aso#73742"),16384 + (400 + eval("aso#73742")));
                              _root["aso#75555"]["aso#07863" + eval("aso#73742")]._x = _root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100;
                              _root["aso#75555"]["aso#07863" + eval("aso#73742")]._y = _root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y;
                              _root["aso#75555"]["aso#07863" + eval("aso#73742")]["aso#57588"] = Math.cos(eval("aso#30427")) * 10;
                              _root["aso#75555"]["aso#07863" + eval("aso#73742")]["aso#94914"] = Math.sin(eval("aso#30427")) * 10;
                              _root["aso#75555"]["aso#07863" + eval("aso#73742")]["aso#32790"] = _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"];
                              _root["aso#75555"]["aso#07863" + eval("aso#73742")]["aso#64127"] = _root["aso#75555"]["player" + eval("aso#06892")]["aso#94914"];
                              _root["aso#75555"]["aso#07863" + eval("aso#73742")]["aso#49786"] = eval("aso#06892");
                              set("aso#73742",eval("aso#73742") + 1);
                           }
                        }
                        _root["aso#75555"]["player" + eval("aso#06892")]["aso#75134"] += noise;
                        if(eval("aso#27222") != -1)
                        {
                           eval("aso#96306")(_root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100,_root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y,eval("aso#27222"));
                        }
                        px = _root["aso#75555"]["player" + eval("aso#06892")]._x + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._x * _root["aso#75555"]["player" + eval("aso#06892")]._xscale / 100;
                        py = _root["aso#75555"]["player" + eval("aso#06892")]._y + _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._y;
                        p = 0;
                        while(p < puli)
                        {
                           sm = 0;
                           set("aso#90317",0);
                           if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 1)
                           {
                              sm = -0.02 + Math.random() * 0.04;
                              if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg1 == 0)
                              {
                                 set("aso#90317",0.8);
                              }
                              else
                              {
                                 set("aso#90317",1.3);
                              }
                           }
                           if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 2)
                           {
                              sm = -0.05 + Math.random() * 0.1;
                              set("aso#90317",0.5);
                              if(_root["aso#75555"]["player" + eval("aso#06892")].w_upg2 == 2)
                              {
                                 set("aso#90317",0.9);
                              }
                           }
                           if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 3)
                           {
                              sm = -0.05 + Math.random() * 0.1;
                              set("aso#90317",1.5);
                           }
                           if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 5 || _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 12)
                           {
                              sm = -0.01 + Math.random() * 0.02;
                              set("aso#90317",2);
                           }
                           if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 10)
                           {
                              sm = -0.015 + Math.random() * 0.03;
                              set("aso#90317",0.7);
                           }
                           if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 11)
                           {
                              sm = -0.015 + Math.random() * 0.03;
                              set("aso#90317",1);
                           }
                           set("aso#41013",Math.cos(eval("aso#30427") + sm) * 10);
                           set("aso#03687",Math.sin(eval("aso#30427") + sm) * 10);
                           if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"]._currentframe == 3)
                           {
                              if(p == 0)
                              {
                                 eval("aso#18028")(px + Math.sin(eval("aso#30427")),py + Math.cos(eval("aso#30427")),eval("aso#06892"),eval("aso#90317"),eval("aso#41013"),eval("aso#03687"));
                              }
                              else
                              {
                                 eval("aso#18028")(px - Math.sin(eval("aso#30427")),py - Math.cos(eval("aso#30427")),eval("aso#06892"),eval("aso#90317"),eval("aso#41013"),eval("aso#03687"));
                              }
                           }
                           else
                           {
                              eval("aso#18028")(px,py,eval("aso#06892"),eval("aso#90317"),eval("aso#41013"),eval("aso#03687"));
                           }
                           p++;
                        }
                     }
                  }
               }
            }
         }
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] <= 0)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")].dead == false)
         {
            _root["aso#75555"]["player" + eval("aso#06892")].dead = true;
            eval("aso#71508")(eval("aso#06892"));
         }
         else if(_root["aso#70537"] < 3 && eval("aso#06892") != 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")].deadtime += 1;
            if(_root["aso#75555"]["player" + eval("aso#06892")].deadtime > 60 && _root["aso#70537"] == 2 || _root["aso#75555"]["player" + eval("aso#06892")].deadtime > 40 && _root["aso#70537"] == 1)
            {
               if(_root["aso#75555"]["player" + eval("aso#06892")]._alpha > 0)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]._alpha -= 10;
               }
               else
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]._visible = false;
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] = false;
                  eval("aso#64969")[_root["aso#75555"]["player" + eval("aso#06892")]["aso#13431"]] = 2;
                  _root["aso#75555"]["player" + eval("aso#06892")].unloadMovie();
               }
            }
         }
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] == true)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] += _root["aso#75555"]["player" + eval("aso#06892")].lhea - _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"];
            if(_root["aso#75555"]["player" + eval("aso#06892")].lhea != _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"])
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#59951"] = 0;
            }
            else
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] -= _root["aso#75555"]["player" + eval("aso#06892")]["aso#59951"];
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#59951"] += 5;
               if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#59951"] > 15)
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#59951"] = 15;
               }
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] > 45)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] = 45;
            }
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] < 0)
            {
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#48394"] = 0;
               _root["aso#75555"]["player" + eval("aso#06892")]["aso#08834"] = Math.round(Math.random());
            }
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].upper1.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].upper2.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].lower1.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].lower2.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].middle1.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].middle2.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].toe.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
         }
         else
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]["aso#06471"].upper.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]["aso#37808"].upper.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]["aso#06471"].lower.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]["aso#37808"].lower.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]["aso#06471"].middle.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"]["aso#37808"].middle.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#02295"].toe.gotoAndStop(_root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"]);
         }
      }
      _root["aso#75555"]["player" + eval("aso#06892")].lhea = _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"];
      eval("aso#06892")++;
   }
   a = 0;
   while(a < eval("aso#36416"))
   {
      if(eval("aso#64969")[a] == true)
      {
         eval("aso#69566")[a] += eval("aso#88925")[a];
         eval("aso#51599")[a] += eval("aso#82936")[a];
         if(eval("aso#51599")[a] > 1000)
         {
            eval("aso#94072")(eval("aso#88925")[a],eval("aso#82936")[a],a);
            eval("aso#51599")[a] = 1000;
            eval("aso#88925")[a] *= 0.5;
            eval("aso#82936")[a] = (- Math.abs(eval("aso#82936")[a])) * 0.5;
         }
         set("aso#76526",eval("aso#09676")(eval("aso#88925")[a],eval("aso#82936")[a],0,0));
         if(eval("aso#76526") > eval("aso#82094"))
         {
            eval("aso#88925")[a] /= eval("aso#76526") * eval("aso#82094");
            eval("aso#82936")[a] /= eval("aso#76526") * eval("aso#82094");
         }
         if(eval("aso#76526") > 30)
         {
            eval("aso#88925")[a] = eval("aso#88925")[a] / eval("aso#76526") * 30;
            eval("aso#82936")[a] = eval("aso#82936")[a] / eval("aso#76526") * 30;
         }
         eval("aso#82936")[a] += eval("aso#33211");
         if(eval("aso#52570")[a] == 0 && _root["aso#75555"].colmap.hitTest(eval("aso#69566")[a] + _root["aso#75555"]._x,eval("aso#51599")[a] + _root["aso#75555"]._y,true) || eval("aso#52570")[a] > 0 && _root["aso#75555"].colmap.hitTest(eval("aso#69566")[a] + _root["aso#75555"]._x,eval("aso#51599")[a] + eval("aso#52570")[a] + _root["aso#75555"]._y,true))
         {
            set("aso#20262",0);
            while(eval("aso#20262") < eval("aso#40592"))
            {
               if(eval("aso#69566")[a] > _root["aso#75555"].colmap["box" + eval("aso#20262")]._x)
               {
                  if(eval("aso#69566")[a] < _root["aso#75555"].colmap["box" + eval("aso#20262")]._x + _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale)
                  {
                     if(eval("aso#51599")[a] + eval("aso#52570")[a] > _root["aso#75555"].colmap["box" + eval("aso#20262")]._y)
                     {
                        if(eval("aso#51599")[a] + eval("aso#52570")[a] < _root["aso#75555"].colmap["box" + eval("aso#20262")]._y + _root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale)
                        {
                           minside = Math.min(_root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale,_root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale);
                           if(_root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale < _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale)
                           {
                              set("aso#58138",Math.max(_root["aso#75555"].colmap["box" + eval("aso#20262")]._x + _root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale / 2,Math.min(_root["aso#75555"].colmap["box" + eval("aso#20262")]._x + _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale - _root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale / 2,eval("aso#69566")[a] - eval("aso#88925")[a])));
                              set("aso#89475",_root["aso#75555"].colmap["box" + eval("aso#20262")]._y + _root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale / 2);
                           }
                           else
                           {
                              set("aso#89475",Math.max(_root["aso#75555"].colmap["box" + eval("aso#20262")]._y + _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale / 2,Math.min(_root["aso#75555"].colmap["box" + eval("aso#20262")]._y + _root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale - _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale / 2,eval("aso#51599")[a] - eval("aso#82936")[a])));
                              set("aso#58138",_root["aso#75555"].colmap["box" + eval("aso#20262")]._x + _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale / 2);
                           }
                           set("aso#73321",eval("aso#58138") - eval("aso#69566")[a] + eval("aso#88925")[a]);
                           set("aso#53962",eval("aso#89475") - eval("aso#51599")[a] + eval("aso#82936")[a]);
                           if(Math.abs(eval("aso#73321")) > Math.abs(eval("aso#53962")))
                           {
                              eval("aso#88925")[a] *= 0.5;
                              if(eval("aso#82936")[a] > 0)
                              {
                                 eval("aso#82936")[a] = Math.max(eval("aso#82936")[a] - eval("aso#80702") * Math.abs(eval("aso#88925")[a]),0);
                              }
                              else
                              {
                                 eval("aso#82936")[a] = Math.min(eval("aso#82936")[a] + eval("aso#80702") * Math.abs(eval("aso#88925")[a]),0);
                              }
                              eval("aso#94072")(eval("aso#82936")[a],eval("aso#88925")[a],a);
                              if(eval("aso#73321") < 0)
                              {
                                 eval("aso#69566")[a] = _root["aso#75555"].colmap["box" + eval("aso#20262")]._x + _root["aso#75555"].colmap["box" + eval("aso#20262")]._xscale;
                                 eval("aso#88925")[a] = Math.abs(eval("aso#88925")[a]);
                              }
                              else
                              {
                                 eval("aso#69566")[a] = _root["aso#75555"].colmap["box" + eval("aso#20262")]._x;
                                 eval("aso#88925")[a] = - Math.abs(eval("aso#88925")[a]);
                              }
                           }
                           else
                           {
                              if(eval("aso#88925")[a] > 0)
                              {
                                 eval("aso#88925")[a] = Math.max(eval("aso#88925")[a] - eval("aso#80702") * Math.abs(eval("aso#82936")[a]),0);
                              }
                              else
                              {
                                 eval("aso#88925")[a] = Math.min(eval("aso#88925")[a] + eval("aso#80702") * Math.abs(eval("aso#82936")[a]),0);
                              }
                              eval("aso#82936")[a] *= 0.5;
                              eval("aso#94072")(eval("aso#88925")[a],eval("aso#82936")[a],a);
                              if(eval("aso#53962") < 0)
                              {
                                 eval("aso#51599")[a] = _root["aso#75555"].colmap["box" + eval("aso#20262")]._y - eval("aso#52570")[a] + _root["aso#75555"].colmap["box" + eval("aso#20262")]._yscale;
                                 eval("aso#82936")[a] = Math.abs(eval("aso#82936")[a]);
                              }
                              else
                              {
                                 eval("aso#51599")[a] = _root["aso#75555"].colmap["box" + eval("aso#20262")]._y - eval("aso#52570")[a];
                                 eval("aso#82936")[a] = - Math.abs(eval("aso#82936")[a]);
                              }
                           }
                        }
                     }
                  }
               }
               eval("aso#20262")++;
            }
         }
      }
      a++;
   }
   set("aso#26251",0);
   while(eval("aso#26251") < eval("aso#82515"))
   {
      if(eval("aso#89896")[eval("aso#26251")] == true || eval("aso#89896")[eval("aso#26251")] == false)
      {
         if(eval("aso#64969")[eval("aso#27643")[eval("aso#26251")]] == false && eval("aso#64969")[eval("aso#84328")[eval("aso#26251")]] == false)
         {
            eval("aso#89896")[eval("aso#26251")] = false;
         }
         else
         {
            eval("aso#89896")[eval("aso#26251")] = true;
         }
         if(eval("aso#64969")[eval("aso#27643")[eval("aso#26251")]] == 2 || eval("aso#64969")[eval("aso#84328")[eval("aso#26251")]] == 2)
         {
            eval("aso#89896")[eval("aso#26251")] = 2;
         }
         if(eval("aso#89896")[eval("aso#26251")] == true)
         {
            els = false;
            if(Math.abs(eval("aso#88925")[eval("aso#27643")[eval("aso#26251")]]) + Math.abs(eval("aso#82936")[eval("aso#27643")[eval("aso#26251")]]) + Math.abs(eval("aso#88925")[eval("aso#84328")[eval("aso#26251")]]) + Math.abs(eval("aso#82936")[eval("aso#84328")[eval("aso#26251")]]) < 5)
            {
               eval("aso#55354")[eval("aso#26251")] += 1;
               if(eval("aso#55354")[eval("aso#26251")] > 7)
               {
                  eval("aso#64969")[eval("aso#27643")[eval("aso#26251")]] = false;
                  eval("aso#64969")[eval("aso#84328")[eval("aso#26251")]] = false;
                  eval("aso#89896")[eval("aso#26251")] = false;
               }
            }
            else
            {
               els = true;
            }
            set("aso#14273",eval("aso#09676")(eval("aso#69566")[eval("aso#27643")[eval("aso#26251")]],eval("aso#51599")[eval("aso#27643")[eval("aso#26251")]],eval("aso#69566")[eval("aso#84328")[eval("aso#26251")]],eval("aso#51599")[eval("aso#84328")[eval("aso#26251")]]));
            set("aso#97277",0.5 * Math.abs(eval("aso#14273") - eval("aso#81123")[eval("aso#26251")]) * eval("aso#12039")[eval("aso#26251")]);
            if(eval("aso#14273") < 1)
            {
               set("aso#14273",1);
            }
            if(eval("aso#99090")[eval("aso#26251")] == 3)
            {
               if(eval("aso#14273") > eval("aso#81123")[eval("aso#26251")] + 8 || eval("aso#14273") < eval("aso#81123")[eval("aso#26251")] - 8)
               {
                  eval("aso#99090")[eval("aso#26251")] = 1;
                  eval("aso#81123")[eval("aso#26251")] = 0;
               }
            }
            if(eval("aso#99090")[eval("aso#26251")] == 4)
            {
               if(eval("aso#14273") > eval("aso#81123")[eval("aso#26251")] + 7 || eval("aso#14273") < eval("aso#81123")[eval("aso#26251")] - 7)
               {
                  eval("aso#99090")[eval("aso#26251")] = 1;
                  eval("aso#81123")[eval("aso#26251")] = 0;
               }
            }
            if(eval("aso#14273") > eval("aso#81123")[eval("aso#26251")] && (eval("aso#99090")[eval("aso#26251")] == 0 || eval("aso#99090")[eval("aso#26251")] == 3 || eval("aso#99090")[eval("aso#26251")] == 4 || eval("aso#99090")[eval("aso#26251")] == 2))
            {
               eval("aso#88925")[eval("aso#84328")[eval("aso#26251")]] += (eval("aso#69566")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#69566")[eval("aso#84328")[eval("aso#26251")]]) / eval("aso#14273") * eval("aso#97277");
               eval("aso#82936")[eval("aso#84328")[eval("aso#26251")]] += (eval("aso#51599")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#51599")[eval("aso#84328")[eval("aso#26251")]]) / eval("aso#14273") * eval("aso#97277");
               eval("aso#88925")[eval("aso#27643")[eval("aso#26251")]] -= (eval("aso#69566")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#69566")[eval("aso#84328")[eval("aso#26251")]]) / eval("aso#14273") * eval("aso#97277");
               eval("aso#82936")[eval("aso#27643")[eval("aso#26251")]] -= (eval("aso#51599")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#51599")[eval("aso#84328")[eval("aso#26251")]]) / eval("aso#14273") * eval("aso#97277");
            }
            else if(eval("aso#14273") < eval("aso#81123")[eval("aso#26251")] && (eval("aso#99090")[eval("aso#26251")] == 0 || eval("aso#99090")[eval("aso#26251")] == 3 || eval("aso#99090")[eval("aso#26251")] == 4 || eval("aso#99090")[eval("aso#26251")] == 1))
            {
               eval("aso#88925")[eval("aso#84328")[eval("aso#26251")]] -= (eval("aso#69566")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#69566")[eval("aso#84328")[eval("aso#26251")]]) / eval("aso#14273") * eval("aso#97277");
               eval("aso#82936")[eval("aso#84328")[eval("aso#26251")]] -= (eval("aso#51599")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#51599")[eval("aso#84328")[eval("aso#26251")]]) / eval("aso#14273") * eval("aso#97277");
               eval("aso#88925")[eval("aso#27643")[eval("aso#26251")]] += (eval("aso#69566")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#69566")[eval("aso#84328")[eval("aso#26251")]]) / eval("aso#14273") * eval("aso#97277");
               eval("aso#82936")[eval("aso#27643")[eval("aso#26251")]] += (eval("aso#51599")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#51599")[eval("aso#84328")[eval("aso#26251")]]) / eval("aso#14273") * eval("aso#97277");
            }
            else
            {
               els = false;
            }
            if(eval("aso#12039")[eval("aso#26251")] == 1 && (eval("aso#99090")[eval("aso#26251")] == 0 || eval("aso#99090")[eval("aso#26251")] == 3 || eval("aso#99090")[eval("aso#26251")] == 4 || eval("aso#14273") > eval("aso#81123")[eval("aso#26251")] && eval("aso#99090")[eval("aso#26251")] == 2 || eval("aso#14273") < eval("aso#81123")[eval("aso#26251")] && eval("aso#99090")[eval("aso#26251")] == 1))
            {
               set("aso#47002",(eval("aso#69566")[eval("aso#27643")[eval("aso#26251")]] + eval("aso#69566")[eval("aso#84328")[eval("aso#26251")]]) / 2);
               set("aso#78339",(eval("aso#51599")[eval("aso#27643")[eval("aso#26251")]] + eval("aso#51599")[eval("aso#84328")[eval("aso#26251")]]) / 2);
               srx = (eval("aso#88925")[eval("aso#84328")[eval("aso#26251")]] + eval("aso#88925")[eval("aso#27643")[eval("aso#26251")]]) / 2;
               sry = (eval("aso#82936")[eval("aso#84328")[eval("aso#26251")]] + eval("aso#82936")[eval("aso#27643")[eval("aso#26251")]]) / 2;
               set("aso#54383",(eval("aso#88925")[eval("aso#84328")[eval("aso#26251")]] + (- eval("aso#88925")[eval("aso#27643")[eval("aso#26251")]])) / 2);
               set("aso#85720",(eval("aso#82936")[eval("aso#84328")[eval("aso#26251")]] + (- eval("aso#82936")[eval("aso#27643")[eval("aso#26251")]])) / 2);
               eval("aso#88925")[eval("aso#84328")[eval("aso#26251")]] = srx + eval("aso#54383");
               eval("aso#82936")[eval("aso#84328")[eval("aso#26251")]] = sry + eval("aso#85720");
               eval("aso#88925")[eval("aso#27643")[eval("aso#26251")]] = srx - eval("aso#54383");
               eval("aso#82936")[eval("aso#27643")[eval("aso#26251")]] = sry - eval("aso#85720");
               eval("aso#69566")[eval("aso#27643")[eval("aso#26251")]] = eval("aso#47002") + (eval("aso#69566")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#47002")) * eval("aso#81123")[eval("aso#26251")] / eval("aso#14273");
               eval("aso#51599")[eval("aso#27643")[eval("aso#26251")]] = eval("aso#78339") + (eval("aso#51599")[eval("aso#27643")[eval("aso#26251")]] - eval("aso#78339")) * eval("aso#81123")[eval("aso#26251")] / eval("aso#14273");
               eval("aso#69566")[eval("aso#84328")[eval("aso#26251")]] = eval("aso#47002") + (eval("aso#69566")[eval("aso#84328")[eval("aso#26251")]] - eval("aso#47002")) * eval("aso#81123")[eval("aso#26251")] / eval("aso#14273");
               eval("aso#51599")[eval("aso#84328")[eval("aso#26251")]] = eval("aso#78339") + (eval("aso#51599")[eval("aso#84328")[eval("aso#26251")]] - eval("aso#78339")) * eval("aso#81123")[eval("aso#26251")] / eval("aso#14273");
            }
            if(els)
            {
               eval("aso#55354")[eval("aso#26251")] = 0;
               eval("aso#64969")[eval("aso#27643")[eval("aso#26251")]] = true;
               eval("aso#64969")[eval("aso#84328")[eval("aso#26251")]] = true;
            }
         }
      }
      else
      {
         eval("aso#64969")[eval("aso#27643")[eval("aso#26251")]] = 2;
         eval("aso#64969")[eval("aso#84328")[eval("aso#26251")]] = 2;
      }
      eval("aso#26251")++;
   }
   set("aso#09255",0);
   while(eval("aso#09255") < maxef)
   {
      if(_root["aso#75555"]["p" + eval("aso#09255")])
      {
         if(_root["aso#75555"]["p" + eval("aso#09255")].kill == true)
         {
            _root["aso#75555"]["p" + eval("aso#09255")].removeMovieClip();
         }
      }
      eval("aso#09255")++;
   }
   eval("aso#40171")();
   if(_root["aso#75555"].player0["aso#32240"] != lhea)
   {
      if(lhea > 0 && _root["aso#75555"].player0["aso#32240"] <= 0)
      {
         set("aso#26801",Math.random() * 3.141592653589793 * 2);
         _root["aso#75555"]._x += Math.sin(eval("aso#26801")) * 200;
         _root["aso#75555"]._y += Math.cos(eval("aso#26801")) * 200;
         _root["aso#95885"]("<font color=\"#FFFF00\">Press SPACE for qucik restart</font>");
      }
   }
   if(_root["aso#75555"].player0["aso#32240"] <= 0)
   {
      if(Key.isDown(32))
      {
         _root.gotoAndStop(5);
         _root.gotoAndStop(3);
      }
   }
   lhea = _root["aso#75555"].player0["aso#32240"];
   if(Key.getCode() >= 49)
   {
      if(Key.getCode() <= 54)
      {
         if(Key.getCode() == 49)
         {
            set("aso#67332",6);
         }
         if(Key.getCode() == 50)
         {
            set("aso#67332",1);
         }
         if(Key.getCode() == 51)
         {
            set("aso#67332",2);
         }
         if(Key.getCode() == 52)
         {
            set("aso#67332",3);
         }
         if(Key.getCode() == 53)
         {
            set("aso#67332",4);
         }
         if(Key.getCode() == 54)
         {
            set("aso#67332",5);
         }
         if(my_so.data["weapon" + eval("aso#67332")] != -1)
         {
            _root["aso#75555"].player0["aso#63577"].gotoAndStop(eval("aso#67332"));
         }
         eval("aso#68724")(0);
      }
   }
   _root.gcur._x = _xmouse;
   _root.gcur._y = _ymouse;
   _root.gcur.gotoAndStop(_root["aso#75555"].player0["aso#63577"]._currentframe);
};
Mouse.hide();
_root.gcur.gotoAndStop(1);
_root.gcur._visible = true;
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
};
