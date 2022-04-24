function SHOT()
{
   if(eval("aso#18870")["aso#44218"].whea._currentframe == 1)
   {
      eval("aso#18870")["aso#44218"].whea.gotoAndPlay(2);
      if(eval("aso#18870")["aso#51599"]._visible == true)
      {
         eval("aso#18870")["aso#51599"].whea.gotoAndPlay(2);
      }
      eval("aso#18870").gotoAndPlay("fire");
      if(eval("aso#87533") == 0)
      {
         if(eval("aso#18870")["aso#44218"]._currentframe != 6)
         {
            _root.stat_shots++;
         }
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 1)
      {
         puli = 1;
         set("aso#51178",3);
         noise = 7;
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 2)
      {
         puli = 1;
         set("aso#51178",3);
         if(eval("aso#18870").w_upg2 == 0)
         {
            noise = 5;
         }
         if(eval("aso#18870").w_upg2 == 1)
         {
            noise = 1;
         }
         if(eval("aso#18870").w_upg2 == 2)
         {
            noise = 2;
         }
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 3)
      {
         puli = 2;
         set("aso#51178",4);
         noise = 20;
         if(eval("aso#18870").w_upg3 == 1)
         {
            noise = 12;
         }
         if(eval("aso#18870").w_upg3 == 2)
         {
            noise = 12;
            puli = 3;
         }
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 5 || eval("aso#18870")["aso#44218"]._currentframe == 12)
      {
         puli = 4;
         set("aso#51178",3);
         noise = 10;
         if(eval("aso#18870")["aso#44218"]._currentframe == 12)
         {
            puli = 1;
         }
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 7)
      {
         puli = 0;
         set("aso#51178",-1);
         noise = 0;
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 6)
      {
         puli = 0;
         set("aso#51178",-1);
         noise = 0;
         set("aso#26251",0);
         while(eval("aso#26251") < playerstot)
         {
            set("aso#57588",_root["aso#56196"]["player" + eval("aso#26251")]);
            if(eval("aso#87533") != eval("aso#26251"))
            {
               if(eval("aso#57588")["aso#12881"] > 0)
               {
                  if(eval("aso#18870")["aso#33632"] == eval("aso#57588")["aso#33632"] && eval("aso#57588")["aso#33632"] != 0 && eval("aso#57588")["aso#33632"] != 3 || eval("aso#18870")["aso#33632"] != eval("aso#57588")["aso#33632"])
                  {
                     if(eval("aso#18870")["aso#44218"].hitTest(eval("aso#57588")))
                     {
                        if(eval("aso#57588")["aso#12881"] < 50)
                        {
                           eval("aso#57588")["aso#12881"] = 0;
                        }
                        else
                        {
                           eval("aso#57588")["aso#12881"] -= 50;
                        }
                        eval("aso#57588")["aso#15665"] = "none";
                        if(eval("aso#57588")["aso#12881"] > 0)
                        {
                           eval("aso#57588").gotoAndPlay("hurt");
                           eval("aso#57588").hunt = eval("aso#87533");
                           eval("aso#57588")["aso#93101"] += 20;
                        }
                     }
                  }
               }
            }
            eval("aso#26251")++;
         }
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 9)
      {
         puli = 1;
         set("aso#51178",3);
         noise = 1;
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 10)
      {
         puli = 2;
         set("aso#51178",6);
         noise = 20;
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 11)
      {
         puli = 1;
         set("aso#51178",3);
         noise = 20;
      }
      if(eval("aso#18870")["aso#44218"]._currentframe == 4 || eval("aso#18870")["aso#44218"]._currentframe == 13)
      {
         puli = 0;
         set("aso#51178",-1);
         noise = 30;
         rn = Math.random();
         duplicateMovieClip(_root["aso#56196"].rocket,"aso#94493" + eval("aso#23046"),16384 + (400 + eval("aso#23046")));
         _root["aso#56196"]["aso#94493" + eval("aso#23046")]._x = eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100;
         _root["aso#56196"]["aso#94493" + eval("aso#23046")]._y = eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y;
         _root["aso#56196"]["aso#94493" + eval("aso#23046")]["aso#38229"] = Math.cos(eval("aso#79731")) * 10;
         _root["aso#56196"]["aso#94493" + eval("aso#23046")]["aso#75555"] = Math.sin(eval("aso#79731")) * 10;
         _root["aso#56196"]["aso#94493" + eval("aso#23046")]["aso#94072"] = 0;
         _root["aso#56196"]["aso#94493" + eval("aso#23046")]["aso#25409"] = 0;
         _root["aso#56196"]["aso#94493" + eval("aso#23046")]["aso#99090"] = eval("aso#87533");
         set("aso#23046",eval("aso#23046") + 1);
      }
      eval("aso#18870")["aso#93101"] += noise;
      if(eval("aso#51178") != -1)
      {
         eval("aso#76947")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#51178"));
      }
      px = eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100;
      py = eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y;
      p = 0;
      while(p < puli)
      {
         sm = 0;
         set("aso#08284",0);
         if(eval("aso#18870")["aso#44218"]._currentframe == 1)
         {
            sm = -0.02 + Math.random() * 0.04;
            if(eval("aso#18870").w_upg1 == 0)
            {
               set("aso#08284",0.3);
            }
            else if(eval("aso#18870").w_upg1 == 1)
            {
               set("aso#08284",0.8);
            }
            else
            {
               set("aso#08284",0.8);
            }
         }
         if(eval("aso#18870")["aso#44218"]._currentframe == 2)
         {
            sm = -0.05 + Math.random() * 0.1;
            set("aso#08284",0.5);
            if(eval("aso#18870").w_upg2 == 2)
            {
               set("aso#08284",0.9);
            }
         }
         if(eval("aso#18870")["aso#44218"]._currentframe == 3)
         {
            sm = -0.05 + Math.random() * 0.1;
            set("aso#08284",1.5);
         }
         if(eval("aso#18870")["aso#44218"]._currentframe == 5 || eval("aso#18870")["aso#44218"]._currentframe == 12)
         {
            sm = -0.04 + Math.random() * 0.08;
            set("aso#08284",1);
            if(eval("aso#18870").w_upg5 == 1)
            {
               set("aso#08284",1.5);
            }
            if(eval("aso#18870").w_upg5 == 2)
            {
               set("aso#08284",2);
            }
         }
         if(eval("aso#18870")["aso#44218"]._currentframe == 9)
         {
            sm = -0.05 + Math.random() * 0.1;
            set("aso#08284",1.3);
         }
         if(eval("aso#18870")["aso#44218"]._currentframe == 10)
         {
            sm = -0.015 + Math.random() * 0.03;
            set("aso#08284",0.7);
         }
         if(eval("aso#18870")["aso#44218"]._currentframe == 11)
         {
            sm = -0.015 + Math.random() * 0.03;
            set("aso#08284",1);
         }
         if(eval("aso#18870").dead)
         {
            set("aso#21654",Math.cos(eval("aso#18870")["aso#44218"]._rotation / 180 * 3.141592653589793 + sm) * 10 * eval("aso#18870")["aso#44218"]._xscale / 50);
            set("aso#84328",(- Math.sin(eval("aso#18870")["aso#44218"]._rotation / 180 * 3.141592653589793 + sm)) * 10);
         }
         else
         {
            set("aso#21654",Math.cos(eval("aso#79731") + sm) * 10);
            set("aso#84328",Math.sin(eval("aso#79731") + sm) * 10);
         }
         if(eval("aso#18870")["aso#44218"]._currentframe == 3)
         {
            if(p == 0)
            {
               eval("aso#41984")(px + Math.sin(eval("aso#79731")),py + Math.cos(eval("aso#79731")),eval("aso#87533"),eval("aso#08284"),eval("aso#21654"),eval("aso#84328"));
            }
            else
            {
               eval("aso#41984")(px - Math.sin(eval("aso#79731")),py - Math.cos(eval("aso#79731")),eval("aso#87533"),eval("aso#08284"),eval("aso#21654"),eval("aso#84328"));
            }
         }
         else
         {
            eval("aso#41984")(px,py,eval("aso#87533"),eval("aso#08284"),eval("aso#21654"),eval("aso#84328"));
         }
         p++;
      }
      if(eval("aso#18870").dead)
      {
         eval("aso#69566")[eval("aso#39621")[eval("aso#18870").whold1]] -= eval("aso#21654") * eval("aso#08284");
         eval("aso#63577")[eval("aso#39621")[eval("aso#18870").whold1]] -= eval("aso#84328") * eval("aso#08284");
         eval("aso#69566")[eval("aso#64969")[eval("aso#18870").whold1]] -= (10 - Math.random() * 20) * eval("aso#08284");
         eval("aso#63577")[eval("aso#64969")[eval("aso#18870").whold1]] -= (10 - Math.random() * 20) * eval("aso#08284");
      }
   }
}
function §aso#26801§()
{
   pl = 0;
   while(pl < pulsmax)
   {
      if(_root["aso#56196"]["pl" + pl]._visible == true)
      {
         set("aso#81544",_root["aso#56196"]["pl" + pl]);
         eval("aso#81544")._x += eval("aso#81544")["aso#21654"] * pspeed;
         eval("aso#81544")._y += eval("aso#81544")["aso#84328"] * pspeed;
         eval("aso#81544").life++;
         if(eval("aso#81544").life > 20)
         {
            eval("aso#81544")._visible = false;
         }
         set("aso#26251",0);
         while(eval("aso#26251") < playerstot)
         {
            set("aso#57588",_root["aso#56196"]["player" + eval("aso#26251")]);
            if(eval("aso#57588").dead && eval("aso#81544")._x < eval("aso#57588").body._x + 400 && eval("aso#81544")._x > eval("aso#57588").body._x - 400 && eval("aso#81544")._y < eval("aso#57588").body._y + 400 && eval("aso#81544")._y > eval("aso#57588").body._y - 400 || !eval("aso#57588").dead && eval("aso#81544")._x < eval("aso#57588")._x + 200 && eval("aso#81544")._x > eval("aso#57588")._x - 200 && eval("aso#81544")._y < eval("aso#57588")._y + 100 && eval("aso#81544")._y > eval("aso#57588")._y - 300)
            {
               if(eval("aso#57588")["aso#12881"] <= 0 || _root["aso#56196"]["player" + eval("aso#81544")["aso#99090"]]["aso#33632"] == eval("aso#57588")["aso#33632"] && eval("aso#57588")["aso#33632"] != 0 && eval("aso#57588")["aso#33632"] != 3 || _root["aso#56196"]["player" + eval("aso#81544")["aso#99090"]]["aso#33632"] != eval("aso#57588")["aso#33632"])
               {
                  if(eval("aso#81544")["aso#99090"] != eval("aso#26251"))
                  {
                     set("aso#41013",pspeed - 1);
                     while(eval("aso#41013") >= 0)
                     {
                        if(eval("aso#57588").hitTest(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") + _root["aso#56196"]._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") + _root["aso#56196"]._y,true))
                        {
                           if(eval("aso#81544")["aso#08284"] >= 0.2)
                           {
                              type = 1;
                              if(eval("aso#57588")["aso#12881"] <= 0 && eval("aso#57588").dead)
                              {
                                 tt = 0;
                                 a = 0;
                                 while(a < eval("aso#54383"))
                                 {
                                    if(eval("aso#45610")[a] == true || eval("aso#45610")[a] == false)
                                    {
                                       if(eval("aso#90317")(eval("aso#50207")[a],eval("aso#32240")[a],eval("aso#81544")._x,eval("aso#81544")._y) < 60)
                                       {
                                          tt++;
                                       }
                                    }
                                    a++;
                                 }
                                 a = 0;
                                 while(a < eval("aso#54383"))
                                 {
                                    if(eval("aso#45610")[a] == true || eval("aso#45610")[a] == false)
                                    {
                                       if(eval("aso#90317")(eval("aso#50207")[a],eval("aso#32240")[a],eval("aso#81544")._x,eval("aso#81544")._y) < 60)
                                       {
                                          eval("aso#69566")[a] += eval("aso#81544")["aso#21654"] * eval("aso#81544")["aso#08284"] / tt;
                                          eval("aso#63577")[a] += eval("aso#81544")["aso#84328"] * eval("aso#81544")["aso#08284"] / tt;
                                          eval("aso#45610")[a] = true;
                                          if(eval("aso#90317")(eval("aso#50207")[a],eval("aso#32240")[a],eval("aso#81544")._x,eval("aso#81544")._y) < 15)
                                          {
                                             Blood(a,30,eval("aso#91709")[a]);
                                          }
                                       }
                                    }
                                    a++;
                                 }
                              }
                              set("aso#25830",1);
                              if(eval("aso#26251") == 0)
                              {
                                 if(my_so.data.opt_bot == 2)
                                 {
                                    set("aso#25830",0.5);
                                 }
                                 if(my_so.data.opt_bot == 1)
                                 {
                                    set("aso#25830",0.25);
                                 }
                                 if(my_so.data.opt_bot == 1 || my_so.data.opt_bot == 2)
                                 {
                                    if(_root["aso#56196"]._currentframe < 5)
                                    {
                                       if(eval("aso#57588")["aso#12881"] < 50)
                                       {
                                          set("aso#25830",eval("aso#25830") * 0.5);
                                       }
                                    }
                                    else if(_root["aso#56196"]._currentframe < 7)
                                    {
                                       if(eval("aso#57588")["aso#12881"] < 25)
                                       {
                                          set("aso#25830",eval("aso#25830") * 0.5);
                                       }
                                    }
                                 }
                              }
                              if(eval("aso#57588")["aso#14273"].hitTest(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") + _root["aso#56196"]._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") + _root["aso#56196"]._y,true))
                              {
                                 eval("aso#57588")["aso#15665"] = "aso#14273";
                                 if(eval("aso#57588").opentop)
                                 {
                                    eval("aso#57588")["aso#12881"] -= 200 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                 }
                                 else if(eval("aso#87533") == 0)
                                 {
                                    if(eval("aso#57588").w_upg7 == 0)
                                    {
                                       eval("aso#57588")["aso#12881"] -= 70 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                    }
                                    else if(eval("aso#57588").w_upg7 == 1)
                                    {
                                       eval("aso#57588")["aso#12881"] -= 40 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                    }
                                    else
                                    {
                                       eval("aso#57588")["aso#12881"] -= 70 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                    }
                                 }
                                 else
                                 {
                                    eval("aso#57588")["aso#12881"] -= 110 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                 }
                                 type = 2;
                                 if(eval("aso#81544")["aso#99090"] == 0)
                                 {
                                    if(eval("aso#57588").lhea > 0)
                                    {
                                       if(eval("aso#57588")["aso#12881"] <= 0)
                                       {
                                          eval("aso#10647")("Headshot!");
                                          _root.stat_headshots += 1;
                                       }
                                    }
                                 }
                              }
                              else if(eval("aso#57588").body.hitTest(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") + _root["aso#56196"]._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") + _root["aso#56196"]._y,true))
                              {
                                 eval("aso#57588")["aso#12881"] -= 30 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                 eval("aso#57588")["aso#15665"] = "body";
                              }
                              else if(eval("aso#57588").arm1.hitTest(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") + _root["aso#56196"]._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") + _root["aso#56196"]._y,true) || eval("aso#57588").arm2.hitTest(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") + _root["aso#56196"]._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") + _root["aso#56196"]._y,true))
                              {
                                 eval("aso#57588")["aso#12881"] -= 35 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                 eval("aso#57588")["aso#15665"] = "arm";
                              }
                              else if(eval("aso#57588")["aso#82936"].hitTest(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") + _root["aso#56196"]._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") + _root["aso#56196"]._y,true))
                              {
                                 if(eval("aso#57588")["aso#20262"] == 2 && eval("aso#57588")["aso#47002"] != 9)
                                 {
                                    eval("aso#57588")["aso#12881"] -= 50 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                 }
                                 else
                                 {
                                    eval("aso#57588")["aso#12881"] -= 40 * eval("aso#81544")["aso#08284"] * eval("aso#25830");
                                 }
                                 eval("aso#57588")["aso#15665"] = "leg";
                              }
                              else if(eval("aso#57588")["aso#44218"].hitTest(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") + _root["aso#56196"]._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") + _root["aso#56196"]._y,true) || eval("aso#57588")["aso#51599"].hitTest(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") + _root["aso#56196"]._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") + _root["aso#56196"]._y,true))
                              {
                                 type = 0;
                              }
                              if(eval("aso#87533") != 0)
                              {
                                 eval("aso#57588")["aso#93101"] += 10 * eval("aso#81544")["aso#08284"];
                              }
                              else
                              {
                                 eval("aso#57588")["aso#93101"] += 0.5 * eval("aso#81544")["aso#08284"];
                              }
                              if(type != 0)
                              {
                                 if(eval("aso#57588")["aso#15665"] == "aso#14273")
                                 {
                                    _root["aso#17057"](eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013"),eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013"),eval("aso#57588")["aso#20262"],"shot_head",eval("aso#81544")["aso#21654"] * eval("aso#81544")["aso#08284"] * 3 * eval("aso#57588").easymove,eval("aso#81544")["aso#84328"] * eval("aso#81544")["aso#08284"] * 3 * eval("aso#57588").easymove);
                                 }
                                 else
                                 {
                                    _root["aso#17057"](eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013"),eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013"),eval("aso#57588")["aso#20262"],"shot",eval("aso#81544")["aso#21654"] * eval("aso#81544")["aso#08284"] * 3 * eval("aso#57588").easymove,eval("aso#81544")["aso#84328"] * eval("aso#81544")["aso#08284"] * 3 * eval("aso#57588").easymove);
                                 }
                                 if(eval("aso#57588").w_upg8 > 2 || eval("aso#57588")["aso#47002"] == 9)
                                 {
                                    type = 3;
                                 }
                                 if(type == 3)
                                 {
                                    _root["aso#76947"](eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013"),eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013"),11);
                                 }
                                 else
                                 {
                                    Blood2(eval("aso#26251"),30,eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013") - eval("aso#57588")._x,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013") - eval("aso#57588")._y);
                                 }
                              }
                              else
                              {
                                 _root["aso#76947"](eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013"),eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013"),11);
                                 eval("aso#76947")(eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * eval("aso#41013"),eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * eval("aso#41013"),type,eval("aso#81544")["aso#21654"] * eval("aso#81544")["aso#08284"] * 3,eval("aso#81544")["aso#84328"] * eval("aso#81544")["aso#08284"] * 3);
                              }
                              if(eval("aso#57588")["aso#12881"] > 0)
                              {
                                 if(type != 0)
                                 {
                                    eval("aso#57588").gotoAndPlay("hurt");
                                 }
                                 if(eval("aso#57588")["aso#33632"] != 3 || _root["aso#56196"]["player" + eval("aso#81544")["aso#99090"]]["aso#33632"] != 3)
                                 {
                                    eval("aso#57588").hunt = eval("aso#81544")["aso#99090"];
                                 }
                                 eval("aso#57588")["aso#35024"] = true;
                              }
                              else if(!eval("aso#57588").dead)
                              {
                                 eval("aso#81544")._x -= eval("aso#81544")["aso#21654"] * eval("aso#41013");
                                 eval("aso#81544")._y -= eval("aso#81544")["aso#84328"] * eval("aso#41013");
                              }
                              if(eval("aso#57588")["aso#33632"] == 1 || _root["aso#56196"]["player" + eval("aso#81544")["aso#99090"]]["aso#33632"] == 1)
                              {
                                 if(eval("aso#57588")["aso#12881"] > 0)
                                 {
                                    set("aso#52991",0);
                                    while(eval("aso#52991") < playerstot)
                                    {
                                       if(eval("aso#26251") != eval("aso#52991") && eval("aso#52991") != eval("aso#81544")["aso#99090"])
                                       {
                                          if(eval("aso#57588")["aso#33632"] == _root["aso#56196"]["player" + eval("aso#52991")]["aso#33632"])
                                          {
                                             if(_root["aso#56196"]["player" + eval("aso#52991")]["aso#12881"] > 0)
                                             {
                                                if(_root["aso#56196"]["player" + eval("aso#52991")]["aso#35024"] == true)
                                                {
                                                   if(Math.abs(eval("aso#57588")._x - _root["aso#56196"]["player" + eval("aso#52991")]._x) < hscreenX)
                                                   {
                                                      if(Math.abs(eval("aso#57588")._y - _root["aso#56196"]["player" + eval("aso#52991")]._y) < hscreenY)
                                                      {
                                                         _root["aso#56196"]["player" + eval("aso#52991")].hunt = eval("aso#81544")["aso#99090"];
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       eval("aso#52991")++;
                                    }
                                 }
                              }
                              if(eval("aso#57588")["aso#12881"] > 0)
                              {
                                 eval("aso#57588")["aso#38229"] += eval("aso#81544")["aso#21654"] * 0.3 * eval("aso#81544")["aso#08284"] * eval("aso#57588").easymove;
                                 eval("aso#57588")["aso#75555"] += eval("aso#81544")["aso#84328"] * 0.3 * eval("aso#81544")["aso#08284"] * eval("aso#57588").easymove;
                              }
                           }
                           else
                           {
                              eval("aso#81544")._visible = false;
                           }
                           if(eval("aso#57588")["aso#12881"] > 0 || eval("aso#57588").dead)
                           {
                              eval("aso#81544")["aso#08284"] -= 0.5 / eval("aso#57588").easymove;
                              if(eval("aso#81544")["aso#08284"] < 0.2)
                              {
                                 eval("aso#81544")._visible = false;
                              }
                           }
                        }
                        eval("aso#41013")--;
                     }
                  }
               }
            }
            eval("aso#26251")++;
         }
         set("aso#70537",eval("aso#81544")._x);
         set("aso#01874",eval("aso#81544")._y);
         set("aso#97277",eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * pspeed);
         set("aso#28614",eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * pspeed);
         set("aso#00903",0);
         while(eval("aso#00903") < eval("aso#64548"))
         {
            if(_root["aso#56196"].colmap["box" + eval("aso#00903")].hitTest(eval("aso#81544")))
            {
               boxx = _root["aso#56196"].colmap["box" + eval("aso#00903")];
               rx = undefined;
               ry = undefined;
               sides = 0;
               while(sides < 4)
               {
                  if(sides == 0)
                  {
                     set("aso#42405",boxx._x);
                     set("aso#73742",boxx._y);
                     set("aso#75134",boxx._x + boxx._xscale);
                     set("aso#06471",boxx._y);
                  }
                  else if(sides == 1)
                  {
                     set("aso#42405",boxx._x + boxx._xscale);
                     set("aso#73742",boxx._y);
                     set("aso#75134",boxx._x + boxx._xscale);
                     set("aso#06471",boxx._y + boxx._yscale);
                  }
                  else if(sides == 2)
                  {
                     set("aso#42405",boxx._x);
                     set("aso#73742",boxx._y);
                     set("aso#75134",boxx._x);
                     set("aso#06471",boxx._y + boxx._yscale);
                  }
                  else if(sides == 3)
                  {
                     set("aso#42405",boxx._x);
                     set("aso#73742",boxx._y + boxx._yscale);
                     set("aso#75134",boxx._x + boxx._xscale);
                     set("aso#06471",boxx._y + boxx._yscale);
                  }
                  v = ((eval("aso#97277") - eval("aso#70537")) * (eval("aso#73742") - eval("aso#01874")) + (eval("aso#28614") - eval("aso#01874")) * (eval("aso#70537") - eval("aso#42405"))) / ((eval("aso#28614") - eval("aso#01874")) * (eval("aso#75134") - eval("aso#42405")) - (eval("aso#97277") - eval("aso#70537")) * (eval("aso#06471") - eval("aso#73742")));
                  retux = eval("aso#42405") + (eval("aso#75134") - eval("aso#42405")) * v;
                  retuy = eval("aso#73742") + (eval("aso#06471") - eval("aso#73742")) * v;
                  if(Math.min(eval("aso#81544")._x,eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * pspeed * 2) - 1 <= retux)
                  {
                     if(Math.max(eval("aso#81544")._x,eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * pspeed * 2) + 1 >= retux)
                     {
                        if(Math.min(eval("aso#81544")._y,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * pspeed * 2) - 1 <= retuy)
                        {
                           if(Math.max(eval("aso#81544")._y,eval("aso#81544")._y - eval("aso#81544")["aso#84328"] * pspeed * 2) + 2 >= retuy)
                           {
                              if(boxx._x - 1 <= retux)
                              {
                                 if(boxx._x + 1 + boxx._xscale >= retux)
                                 {
                                    if(boxx._y - 1 <= retuy)
                                    {
                                       if(boxx._y + 1 + boxx._yscale >= retuy)
                                       {
                                          if(undefined == rx || eval("aso#90317")(rx,ry,eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * pspeed * 3,eval("aso#81544")._y - eval("aso#81544")["aso#21654"] * pspeed * 3) < eval("aso#90317")(retux,retuy,eval("aso#81544")._x - eval("aso#81544")["aso#21654"] * pspeed * 3,eval("aso#81544")._y - eval("aso#81544")["aso#21654"] * pspeed * 3))
                                          {
                                             rx = retux;
                                             ry = retuy;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  sides++;
               }
               if(rx != undefined)
               {
                  eval("aso#76947")(rx,ry,0);
                  Sprite(rx,ry,0);
                  eval("aso#81544")._visible = false;
               }
            }
            eval("aso#00903")++;
         }
         if(eval("aso#81544")._y > 1000)
         {
            if(_root["aso#56196"]._currentframe == 11)
            {
               eval("aso#76947")(eval("aso#81544")._x,eval("aso#81544")._y,0);
            }
            eval("aso#81544")._visible = false;
         }
         set("aso#00903",0);
         while(eval("aso#00903") < barrelstotal)
         {
            if(_root["aso#56196"]["barrel" + eval("aso#00903")]._currentframe < 4)
            {
               if(_root["aso#56196"]["barrel" + eval("aso#00903")].hitTest(eval("aso#81544")))
               {
                  _root["aso#76947"](eval("aso#81544")._x,eval("aso#81544")._y,11);
                  hur = Math.floor(eval("aso#81544")["aso#08284"] * 2);
                  if(hur < 0)
                  {
                     hur = 0;
                  }
                  if(_root["aso#56196"]["barrel" + eval("aso#00903")]._currentframe + hur > 3)
                  {
                     _root["aso#56196"]["barrel" + eval("aso#00903")].gotoAndPlay(4);
                  }
                  else
                  {
                     _root["aso#56196"]["barrel" + eval("aso#00903")].gotoAndStop(_root["aso#56196"]["barrel" + eval("aso#00903")]._currentframe + hur);
                  }
                  eval("aso#81544")["aso#08284"] -= 0.5;
                  if(eval("aso#81544")["aso#08284"] < 0.2)
                  {
                     eval("aso#81544")._visible = false;
                  }
               }
            }
            eval("aso#00903")++;
         }
      }
      pl++;
   }
}
gunpaused = true;
cbk = true;
var myListener2 = new Object();
myListener2.onKillFocus = function()
{
   trace("OUTTTT");
   _root.gunpaused = false;
};
Stage.addListener(myListener2);
_root.onEnterFrame = function()
{
   if(_root["aso#85720"] == 2)
   {
      if(Key.isDown(80) || Key.isDown(32) && !gunpaused || Key.isDown(13) && !gunpaused)
      {
         if(cbk)
         {
            if(_root.gunpaused)
            {
               gunpaused = false;
               Mouse.show();
            }
            else
            {
               gunpaused = true;
               _root.glow._visible = false;
               _root.glow._alpha = 0;
               Mouse.hide();
            }
            cbk = false;
         }
      }
      else
      {
         cbk = true;
      }
      if(!gunpaused)
      {
         _root.glow._visible = true;
         if(_root.glow._alpha < 50)
         {
            _root.glow._alpha += 1;
         }
      }
      if(_root.gunpaused)
      {
         if(grenadetim > 0)
         {
            grenadetim--;
         }
         xmo = _xmouse;
         ymo = _ymouse;
         if(xmo < 0)
         {
            xmo = 0;
         }
         if(ymo < 0)
         {
            ymo = 0;
         }
         if(xmo > hscreenX * 2)
         {
            xmo = hscreenX * 2;
         }
         if(ymo > hscreenY * 2)
         {
            ymo = hscreenY * 2;
         }
         _root["aso#56196"]._x = Math.round((- _root["aso#56196"].player0.body._x + hscreenX - xmo - _root["aso#56196"].player0._x + hscreenX + _root["aso#56196"]._x * 10) / 11);
         _root["aso#56196"]._y = Math.round((- _root["aso#56196"].player0.body._y + hscreenY - ymo - _root["aso#56196"].player0._y + hscreenY + _root["aso#56196"]._y * 10) / 11);
         if(_root["aso#56196"]._y - hscreenY * 2 < -1000)
         {
            _root["aso#56196"]._y = hscreenY * 2 - 1000;
         }
         hinttim -= 1;
         if(hinttim < 0)
         {
            _root.hint.text = "";
            hinttim = 100;
         }
         set("aso#77918",eval("aso#77918") - 1);
         if(eval("aso#77918") < -1)
         {
            set("aso#77918",10 + (3 - _root.opt_bot) * 10);
         }
         eval("aso#26801")();
         _root["aso#44768"].text = Math.max(Math.ceil(_root["aso#56196"].player0["aso#12881"] / playerhmax * 100),0);
         _root.playergr.text = grenades;
         if(_root["aso#56196"].player0["aso#12881"] > 0)
         {
            if(_root["aso#56196"].player0.hitTest(_root["aso#56196"].end))
            {
               finish();
            }
            if(_root["aso#56196"].player0["aso#12881"] < playerhmax)
            {
               set("aso#00903",0);
               while(eval("aso#00903") < heatotal)
               {
                  if(_root["aso#56196"]["medikit" + eval("aso#00903")]._currentframe == 1)
                  {
                     if(_root["aso#56196"].player0.hitTest(_root["aso#56196"]["medikit" + eval("aso#00903")]))
                     {
                        _root["aso#56196"]["medikit" + eval("aso#00903")].gotoAndPlay(2);
                        _root["aso#56196"].player0["aso#12881"] = Math.min(playerhmax,_root["aso#56196"].player0["aso#12881"] + playerhmax / 4);
                     }
                  }
                  eval("aso#00903")++;
               }
            }
         }
         if(_root["aso#56196"].player0["aso#12881"] <= 0 || _root.loose != 0)
         {
            _root.glow._visible = true;
            _root.glow._alpha += 1;
            if(_root.glow._alpha > 100)
            {
               _root.glow._visible = false;
               _root.whydead = "Your Warrior Has been killed!";
               if(_root.loose == 1)
               {
                  _root.whydead = "Your Friend Has been killed!";
               }
               stpsnds();
               _root.gotoAndStop(5);
            }
         }
         set("aso#87533",0);
         while(eval("aso#87533") < playerstot)
         {
            set("aso#18870",_root["aso#56196"]["player" + eval("aso#87533")]);
            if(eval("aso#18870")["aso#12881"] > 0)
            {
               if(eval("aso#18870")["aso#35024"] == true)
               {
                  set("aso#03687",eval("aso#18870").body._rotation * eval("aso#02295"));
                  set("aso#81123",Math.atan2(eval("aso#18870").body.headbone._y,eval("aso#18870").body.headbone._x) - 1.5707963267948966);
                  set("aso#94914",eval("aso#90317")(eval("aso#18870").body.headbone._x,eval("aso#18870").body.headbone._y,0,0));
                  plx = Math.sin(eval("aso#03687") + eval("aso#81123")) * eval("aso#94914");
                  ply = Math.cos(eval("aso#03687") + eval("aso#81123")) * eval("aso#94914");
                  eval("aso#18870")["aso#14273"]._x = eval("aso#18870").body._x - plx;
                  eval("aso#18870")["aso#14273"]._y = eval("aso#18870").body._y + ply;
                  set("aso#03687",eval("aso#18870").body._rotation * eval("aso#02295"));
                  set("aso#81123",Math.atan2(eval("aso#18870").body.armbone._y,eval("aso#18870").body.armbone._x) - 1.5707963267948966);
                  set("aso#94914",eval("aso#90317")(eval("aso#18870").body.armbone._x,eval("aso#18870").body.armbone._y,0,0));
                  plx = Math.sin(eval("aso#03687") + eval("aso#81123")) * eval("aso#94914");
                  ply = Math.cos(eval("aso#03687") + eval("aso#81123")) * eval("aso#94914");
                  eval("aso#18870").arm1._x = eval("aso#18870").body._x - plx;
                  eval("aso#18870").arm1._y = eval("aso#18870").body._y + ply;
                  eval("aso#18870").arm2._x = eval("aso#18870").body._x - plx + 2;
                  eval("aso#18870").arm2._y = eval("aso#18870").body._y + ply;
                  set("aso#03687",eval("aso#18870").arm2._rotation * eval("aso#02295"));
                  set("aso#81123",Math.atan2(eval("aso#18870").arm2.wea._y,eval("aso#18870").arm2.wea._x) - 1.5707963267948966);
                  set("aso#26251",0);
                  while(eval("aso#26251") < playerstot)
                  {
                     if(eval("aso#87533") != eval("aso#26251"))
                     {
                        set("aso#57588",_root["aso#56196"]["player" + eval("aso#26251")]);
                        if(eval("aso#57588")["aso#12881"] <= 0)
                        {
                           set("aso#78339",eval("aso#57588").center);
                           if(eval("aso#18870").hitTest(eval("aso#50207")[eval("aso#78339")] + _root["aso#56196"]._x,eval("aso#32240")[eval("aso#78339")] + _root["aso#56196"]._y,true))
                           {
                              set("aso#94914",eval("aso#90317")(0,0,eval("aso#69566")[eval("aso#78339")],eval("aso#63577")[eval("aso#78339")]));
                              if(eval("aso#94914") > 5)
                              {
                                 set("aso#05079",(eval("aso#18870")["aso#38229"] + eval("aso#69566")[eval("aso#78339")]) / 2);
                                 set("aso#00482",(eval("aso#18870")["aso#75555"] + eval("aso#63577")[eval("aso#78339")]) / 2);
                                 set("aso#94914",eval("aso#90317")(eval("aso#18870")["aso#38229"],eval("aso#18870")["aso#75555"],eval("aso#69566")[eval("aso#78339")],eval("aso#63577")[eval("aso#78339")]));
                                 if(eval("aso#94914") > 25)
                                 {
                                    eval("aso#18870")["aso#12881"] -= eval("aso#94914") * 2;
                                    if(eval("aso#18870")["aso#12881"] > 0)
                                    {
                                       eval("aso#18870").gotoAndPlay("Hurt");
                                    }
                                 }
                                 eval("aso#18870")["aso#38229"] = eval("aso#05079");
                                 eval("aso#18870")["aso#75555"] = eval("aso#00482");
                                 eval("aso#69566")[eval("aso#78339")] = eval("aso#05079");
                                 eval("aso#63577")[eval("aso#78339")] = eval("aso#00482");
                              }
                           }
                        }
                     }
                     eval("aso#26251")++;
                  }
               }
            }
            if(eval("aso#18870")["aso#35024"] == false)
            {
               if(eval("aso#18870").hitTest(_root.visarea))
               {
                  eval("aso#18870")["aso#35024"] = true;
               }
               else if(eval("aso#18870").hunt == -1)
               {
                  eval("aso#18870")["aso#35024"] = false;
                  eval("aso#18870")._visible = false;
               }
            }
            else
            {
               if(!eval("aso#18870")._visible)
               {
                  eval("aso#18870")._visible = true;
               }
               if(eval("aso#18870").hunt != -1)
               {
                  if(eval("aso#18870").say_vis == undefined)
                  {
                     if(eval("aso#18870")["aso#20262"] == 0 && Math.random() > 0.5)
                     {
                        eval("aso#18870").sou.gotoAndStop(14);
                     }
                     else
                     {
                        eval("aso#18870").sou.gotoAndStop(13);
                     }
                     if(eval("aso#18870").myi == -1)
                     {
                        rn = Math.floor(Math.random() * 3);
                        if(rn == 0)
                        {
                           eval("aso#18870").sou.gotoAndStop(30);
                        }
                        else if(rn == 1)
                        {
                           eval("aso#18870").sou.gotoAndStop(31);
                        }
                        else
                        {
                           eval("aso#18870").sou.gotoAndStop(32);
                        }
                     }
                     eval("aso#18870").say_vis = false;
                  }
               }
            }
            if(eval("aso#18870")["aso#12881"] > 0)
            {
               if(eval("aso#18870")["aso#35024"] == true)
               {
                  if(eval("aso#18870").ranytim == undefined)
                  {
                     eval("aso#18870").ranytim = 0;
                  }
                  else
                  {
                     eval("aso#18870").ranytim += Math.random() * 0.5;
                  }
                  if(eval("aso#18870").rany50 == undefined)
                  {
                     eval("aso#18870").rany50 = Math.random() * 50;
                  }
                  else
                  {
                     eval("aso#18870").rany50 = 25 + Math.sin(eval("aso#18870").ranytim) * 25;
                  }
                  set("aso#26251",0);
                  while(eval("aso#26251") < playerstot)
                  {
                     set("aso#57588",_root["aso#56196"]["player" + eval("aso#26251")]);
                     if(eval("aso#57588")["aso#35024"] == true)
                     {
                        if(eval("aso#57588")["aso#12881"] > 0)
                        {
                           if(eval("aso#87533") != eval("aso#26251"))
                           {
                              if(eval("aso#18870")["aso#33632"] != 0 || eval("aso#57588")["aso#33632"] != 0)
                              {
                                 if(eval("aso#18870")._y > eval("aso#57588")._y - 100)
                                 {
                                    if(eval("aso#18870")._y < eval("aso#57588")._y + 100)
                                    {
                                       if(eval("aso#18870")._x > eval("aso#57588")._x - 40)
                                       {
                                          if(eval("aso#18870")._x < eval("aso#57588")._x + 40)
                                          {
                                             set("aso#05079",(eval("aso#18870")._x + eval("aso#57588")._x) / 2);
                                             if(eval("aso#18870")._x > eval("aso#57588")._x)
                                             {
                                                eval("aso#18870")._x = eval("aso#05079") + 20;
                                                eval("aso#57588")._x = eval("aso#05079") - 20;
                                             }
                                             else
                                             {
                                                eval("aso#18870")._x = eval("aso#05079") - 20;
                                                eval("aso#57588")._x = eval("aso#05079") + 20;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     eval("aso#26251")++;
                  }
                  set("aso#27643",eval("aso#18870")._x + eval("aso#18870")._xscale * 3);
                  set("aso#58980",eval("aso#18870")._y + Math.sin(eval("aso#18870").ranytim * 0.3) * 75);
                  eval("aso#18870")._x += eval("aso#18870")["aso#38229"];
                  eval("aso#18870")._y += eval("aso#18870")["aso#75555"];
                  eval("aso#18870")["aso#75555"] += eval("aso#57167");
                  if(eval("aso#18870")._y > 1000)
                  {
                     eval("aso#18870")["aso#15665"] = "body";
                     eval("aso#18870")["aso#12881"] = 0;
                     eval("aso#18870").getdown = true;
                     _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 20,eval("aso#18870")["aso#20262"],"fall");
                     _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 20,eval("aso#18870")["aso#20262"],"fall");
                     _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 20,eval("aso#18870")["aso#20262"],"fall");
                     if(eval("aso#18870")["aso#75555"] > 10)
                     {
                        eval("aso#18870")["aso#75555"] = 10;
                     }
                  }
                  if(eval("aso#87533") != 0)
                  {
                     if(eval("aso#18870").hunt != -1)
                     {
                        set("aso#27643",_root["aso#56196"]["player" + eval("aso#18870").hunt]._x);
                        set("aso#58980",_root["aso#56196"]["player" + eval("aso#18870").hunt]._y - 10 - eval("aso#18870").rany50);
                        set("aso#63156",Math.abs(eval("aso#27643") - eval("aso#18870")._x));
                        if(eval("aso#18870")["aso#29035"] == 1)
                        {
                           if(Math.random() > 0.4 || eval("aso#63156") < 200)
                           {
                              set("aso#58980",_root["aso#56196"]["player" + eval("aso#18870").hunt]._y - 70);
                           }
                           else
                           {
                              set("aso#58980",_root["aso#56196"]["player" + eval("aso#18870").hunt]._y - 10 - Math.random() * 50);
                           }
                        }
                        set("aso#63156",eval("aso#90317")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980")));
                        pspx = _root["aso#56196"]["player" + eval("aso#18870").hunt]["aso#38229"] * (eval("aso#63156") / pspeed) * 0.3;
                        pspy = _root["aso#56196"]["player" + eval("aso#18870").hunt]["aso#75555"] * (eval("aso#63156") / pspeed) * 0.3;
                        set("aso#27643",eval("aso#27643") + pspx);
                        set("aso#58980",eval("aso#58980") + pspy);
                        if(!eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980")))
                        {
                           if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643") - pspx,eval("aso#58980") - pspy))
                           {
                              set("aso#27643",eval("aso#27643") - pspx);
                              set("aso#58980",eval("aso#58980") - pspy);
                           }
                           else if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643") - pspx,eval("aso#58980") - pspy + 50))
                           {
                              set("aso#27643",eval("aso#27643") - pspx);
                              set("aso#58980",eval("aso#58980") - pspy);
                              set("aso#58980",eval("aso#58980") + 50);
                           }
                           else if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643") - pspx,eval("aso#58980") - pspy - 50))
                           {
                              set("aso#27643",eval("aso#27643") - pspx);
                              set("aso#58980",eval("aso#58980") - pspy);
                              set("aso#58980",eval("aso#58980") - 50);
                           }
                        }
                        set("aso#00903",0);
                        while(eval("aso#00903") < barrelstotal)
                        {
                           if(_root["aso#56196"]["barrel" + eval("aso#00903")]._currentframe < 4)
                           {
                              if(eval("aso#90317")(_root["aso#56196"]["player" + eval("aso#18870").hunt]._x,_root["aso#56196"]["player" + eval("aso#18870").hunt]._y - 40,_root["aso#56196"]["barrel" + eval("aso#00903")]._x,_root["aso#56196"]["barrel" + eval("aso#00903")]._y) < 100)
                              {
                                 if(eval("aso#90317")(eval("aso#18870")._x,eval("aso#18870")._y - 40,_root["aso#56196"]["barrel" + eval("aso#00903")]._x,_root["aso#56196"]["barrel" + eval("aso#00903")]._y) > 150)
                                 {
                                    if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,_root["aso#56196"]["barrel" + eval("aso#00903")]._x,_root["aso#56196"]["barrel" + eval("aso#00903")]._y))
                                    {
                                       set("aso#27643",_root["aso#56196"]["barrel" + eval("aso#00903")]._x);
                                       set("aso#58980",_root["aso#56196"]["barrel" + eval("aso#00903")]._y);
                                    }
                                 }
                              }
                           }
                           eval("aso#00903")++;
                        }
                        if(_root["aso#56196"]["player" + eval("aso#18870").hunt]["aso#12881"] <= 0)
                        {
                           if(Math.random() > 0.97)
                           {
                              eval("aso#18870").hunt = -1;
                           }
                           else
                           {
                              set("aso#27643",_root["aso#56196"]["player" + eval("aso#18870").hunt].body._x);
                              set("aso#58980",_root["aso#56196"]["player" + eval("aso#18870").hunt].body._y);
                           }
                        }
                     }
                     else if(Math.random() > 0.95 || eval("aso#18870")["aso#29035"] == 1)
                     {
                        ran = 0;
                        while(ran < playerstot)
                        {
                           if(eval("aso#18870").hunt == -1)
                           {
                              if(_root["aso#56196"]["player" + ran]["aso#33632"] != eval("aso#18870")["aso#33632"])
                              {
                                 if(_root["aso#56196"]["player" + ran]["aso#12881"] > 0)
                                 {
                                    if(ran != eval("aso#87533"))
                                    {
                                       if(_root["aso#56196"]["player" + ran]["aso#35024"] == true)
                                       {
                                          if(Math.abs(_root["aso#56196"]["player" + ran]._x - eval("aso#18870")._x) < hscreenX && Math.abs(_root["aso#56196"]["player" + ran]._y - eval("aso#18870")._y) < hscreenY)
                                          {
                                             eval("aso#18870").hunt = ran;
                                          }
                                          else if(eval("aso#88504")(eval("aso#18870")._x,eval("aso#18870")._y + eval("aso#18870")["aso#14273"]._y,_root["aso#56196"]["player" + ran]._x,_root["aso#56196"]["player" + ran]._y))
                                          {
                                             eval("aso#18870").hunt = ran;
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
                     set("aso#27643",_xmouse - _root["aso#56196"]._x);
                     set("aso#58980",_ymouse - _root["aso#56196"]._y);
                  }
                  stand = false;
                  hup = false;
                  cantlift = false;
                  set("aso#00903",0);
                  while(eval("aso#00903") < eval("aso#64548") + barrelstotal)
                  {
                     if(eval("aso#00903") < eval("aso#64548") || eval("aso#00903") >= eval("aso#64548") && _root["aso#56196"]["barrel" + (eval("aso#00903") - eval("aso#64548"))]._currentframe < 4 && _root["aso#56196"]["barrel" + (eval("aso#00903") - eval("aso#64548"))].cols)
                     {
                        if(eval("aso#00903") < eval("aso#64548"))
                        {
                           boxx = _root["aso#56196"].colmap["box" + eval("aso#00903")];
                        }
                        else
                        {
                           boxx = _root["aso#56196"]["barrel" + (eval("aso#00903") - eval("aso#64548"))];
                        }
                        if(eval("aso#00903") < eval("aso#64548"))
                        {
                           minx = boxx._x - 10;
                           maxx = boxx._x + boxx._xscale + 10;
                           miny = boxx._y + eval("aso#18870").sit * eval("aso#00061");
                           maxy = boxx._y + boxx._yscale + 82;
                        }
                        else
                        {
                           minx = boxx._x - 20;
                           maxx = boxx._x + 20;
                           miny = boxx._y - 20 + eval("aso#18870").sit * eval("aso#00061");
                           maxy = boxx._y + 20 + 82;
                        }
                        if(eval("aso#18870")._x > minx && eval("aso#18870")._x < maxx && eval("aso#18870")._y > miny - 10 && eval("aso#18870")._y < maxy - 82)
                        {
                           hup = true;
                        }
                        if(eval("aso#18870").sit != 0)
                        {
                           if(eval("aso#18870")._x > minx && eval("aso#18870")._x < maxx && eval("aso#18870")._y > maxy - 5 && eval("aso#18870")._y < maxy + 5)
                           {
                              cantlift = true;
                           }
                        }
                        if(eval("aso#18870")._x > minx && eval("aso#18870")._x < maxx && eval("aso#18870")._y > miny && eval("aso#18870")._y < maxy)
                        {
                           if(eval("aso#00903") < eval("aso#64548"))
                           {
                              set("aso#65940",(boxx._x + boxx._xscale / 2 - (eval("aso#18870")._x - eval("aso#18870")["aso#38229"])) / (boxx._xscale + 20) * 100);
                              set("aso#46581",(boxx._y + (boxx._yscale + 82) / 2 - (eval("aso#18870")._y - eval("aso#18870")["aso#75555"])) / (boxx._yscale + 82) * 100);
                           }
                           else
                           {
                              set("aso#65940",((minx + maxx) / 2 - (eval("aso#18870")._x - eval("aso#18870")["aso#38229"])) / 40 * 100);
                              set("aso#46581",((miny + maxy) / 2 - (eval("aso#18870")._y - eval("aso#18870")["aso#75555"])) / 61 * 100);
                           }
                           if(eval("aso#18870")._y < miny + 30)
                           {
                              set("aso#65940",1);
                              set("aso#46581",2);
                           }
                           if(Math.abs(eval("aso#65940")) > Math.abs(eval("aso#46581")))
                           {
                              eval("aso#18870")["aso#15665"] = "all";
                              if(Math.abs(eval("aso#18870")["aso#38229"]) > 16)
                              {
                                 _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 80,eval("aso#18870")["aso#20262"],"fall");
                                 _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 80,eval("aso#18870")["aso#20262"],"fall");
                                 _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 80,eval("aso#18870")["aso#20262"],"fall");
                                 if(eval("aso#87533") != 0)
                                 {
                                    eval("aso#18870")["aso#12881"] -= Math.abs(eval("aso#18870")["aso#38229"] * eval("aso#18870")["aso#38229"] * 0.22);
                                 }
                                 else
                                 {
                                    eval("aso#18870")["aso#12881"] -= Math.abs(eval("aso#18870")["aso#38229"]) / 100 * playerhmax;
                                 }
                                 eval("aso#18870").gotoAndPlay("hurt");
                              }
                              if(eval("aso#18870")["aso#12881"] > 0)
                              {
                                 if(Math.abs(eval("aso#18870")["aso#38229"]) < 6)
                                 {
                                    eval("aso#18870")["aso#38229"] = 0;
                                 }
                                 else
                                 {
                                    eval("aso#18870")["aso#75555"] *= 0.5;
                                    eval("aso#18870")["aso#38229"] *= 0.5;
                                 }
                                 if(eval("aso#65940") < 0)
                                 {
                                    eval("aso#18870")._x = maxx + 1;
                                    eval("aso#18870")["aso#38229"] = Math.abs(eval("aso#18870")["aso#38229"]) + 0.1;
                                 }
                                 else
                                 {
                                    eval("aso#18870")._x = minx - 1;
                                    eval("aso#18870")["aso#38229"] = - Math.abs(eval("aso#18870")["aso#38229"]) - 0.1;
                                 }
                              }
                           }
                           else
                           {
                              if(eval("aso#46581") < 0)
                              {
                                 eval("aso#18870")["aso#15665"] = "all";
                              }
                              else
                              {
                                 eval("aso#18870")["aso#15665"] = "body";
                              }
                              if(Math.abs(eval("aso#18870")["aso#75555"]) > 15)
                              {
                                 eval("aso#18870").falltim = 10;
                              }
                              if(Math.abs(eval("aso#18870")["aso#75555"]) > 23)
                              {
                                 _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 80,eval("aso#18870")["aso#20262"],"fall");
                                 _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 80,eval("aso#18870")["aso#20262"],"fall");
                                 _root["aso#17057"](eval("aso#18870")._x - 20 + Math.random() * 40,eval("aso#18870")._y - Math.random() * 80,eval("aso#18870")["aso#20262"],"fall");
                                 if(eval("aso#87533") != 0)
                                 {
                                    eval("aso#18870")["aso#12881"] -= Math.abs(eval("aso#18870")["aso#75555"] * eval("aso#18870")["aso#75555"] * 0.19);
                                 }
                                 else
                                 {
                                    eval("aso#18870")["aso#12881"] -= Math.abs(eval("aso#18870")["aso#75555"]) / 100 * playerhmax;
                                 }
                                 eval("aso#18870").gotoAndPlay("hurt");
                                 eval("aso#18870")["aso#15665"] = "body";
                              }
                              if(eval("aso#18870")["aso#12881"] > 0)
                              {
                                 eval("aso#18870")["aso#38229"] *= 0.5;
                                 if(eval("aso#46581") < 0)
                                 {
                                    eval("aso#18870")["aso#75555"] *= -0.5;
                                    cantlift = true;
                                    eval("aso#18870")._y = maxy + 2;
                                 }
                                 else
                                 {
                                    eval("aso#18870")["aso#75555"] = 0;
                                    stand = true;
                                    eval("aso#18870")._y = miny;
                                 }
                              }
                           }
                        }
                     }
                     eval("aso#00903")++;
                  }
                  walkok = false;
                  if(eval("aso#77918") < 0)
                  {
                     eval("aso#18870").botaction = -1;
                     if(eval("aso#87533") != 0 && eval("aso#18870").hunt != -1)
                     {
                        if(eval("aso#90317")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980")) < 600)
                        {
                           if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980")))
                           {
                              eval("aso#18870").botaction = 0;
                           }
                        }
                     }
                  }
                  if(eval("aso#77918") < 0)
                  {
                     if(eval("aso#87533") != 0 && eval("aso#18870").hunt != -1)
                     {
                        if(eval("aso#18870").botaction != 0)
                        {
                           if(eval("aso#88504")(200 + eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980")))
                           {
                              eval("aso#18870").botaction = 1;
                           }
                        }
                        if(eval("aso#18870").botaction != 0)
                        {
                           if(eval("aso#88504")(-200 + eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980")))
                           {
                              eval("aso#18870").botaction = 2;
                           }
                        }
                        if(eval("aso#18870")["aso#20262"] != 2)
                        {
                           if(eval("aso#18870").botaction == -1)
                           {
                              if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y - 60,eval("aso#27643"),eval("aso#58980")))
                              {
                                 eval("aso#18870").botaction = 3;
                              }
                           }
                        }
                        else if(eval("aso#18870").botaction == -1)
                        {
                           if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y - 150,eval("aso#27643"),eval("aso#58980")))
                           {
                              eval("aso#18870").botaction = 3;
                           }
                        }
                        if(eval("aso#18870").botaction != 0)
                        {
                           if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,60 + eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980")))
                           {
                              eval("aso#18870").botaction = 4;
                           }
                        }
                        pl = 0;
                        while(pl < pulsmax)
                        {
                           if(_root["aso#56196"]["pl" + pl]._visible == true)
                           {
                              set("aso#81544",_root["aso#56196"]["pl" + pl]);
                              if(_root["aso#56196"]["player" + eval("aso#81544")["aso#99090"]]["aso#33632"] != eval("aso#18870")["aso#33632"] || eval("aso#18870").hunt == eval("aso#81544")["aso#99090"])
                              {
                                 if(eval("aso#81544")._x > eval("aso#18870")._x - 20 - Math.abs(eval("aso#81544")["aso#21654"] * pspeed * 20))
                                 {
                                    if(eval("aso#81544")._x < eval("aso#18870")._x + 20 + Math.abs(eval("aso#81544")["aso#21654"] * pspeed * 20))
                                    {
                                       if(eval("aso#81544")._y > eval("aso#18870")._y - 90 - Math.abs(eval("aso#81544")["aso#84328"] * pspeed * 20))
                                       {
                                          if(eval("aso#81544")._y < eval("aso#18870")._y + 90 + Math.abs(eval("aso#81544")["aso#84328"] * pspeed * 20))
                                          {
                                             set("aso#70537",eval("aso#81544")._x);
                                             set("aso#01874",eval("aso#81544")._y);
                                             set("aso#97277",eval("aso#81544")._x + eval("aso#81544")["aso#21654"]);
                                             set("aso#28614",eval("aso#81544")._y + eval("aso#81544")["aso#84328"]);
                                             if(Math.abs(eval("aso#81544")["aso#21654"]) > Math.abs(eval("aso#81544")["aso#84328"]))
                                             {
                                                set("aso#42405",eval("aso#18870")._x);
                                                set("aso#73742",eval("aso#18870")._y);
                                                set("aso#75134",eval("aso#18870")._x);
                                                set("aso#06471",eval("aso#18870")._y - 83);
                                                v = ((eval("aso#97277") - eval("aso#70537")) * (eval("aso#73742") - eval("aso#01874")) + (eval("aso#28614") - eval("aso#01874")) * (eval("aso#70537") - eval("aso#42405"))) / ((eval("aso#28614") - eval("aso#01874")) * (eval("aso#75134") - eval("aso#42405")) - (eval("aso#97277") - eval("aso#70537")) * (eval("aso#06471") - eval("aso#73742")));
                                                retux = eval("aso#42405") + (eval("aso#75134") - eval("aso#42405")) * v;
                                                retuy = eval("aso#73742") + (eval("aso#06471") - eval("aso#73742")) * v;
                                                if((retux >= eval("aso#42405") || retux >= eval("aso#75134")) && (retux <= eval("aso#42405") || retux <= eval("aso#75134")))
                                                {
                                                   if((retuy >= eval("aso#73742") || retuy >= eval("aso#06471")) && (retuy <= eval("aso#73742") || retuy <= eval("aso#06471")))
                                                   {
                                                      if(retuy < (eval("aso#73742") + eval("aso#06471")) / 2)
                                                      {
                                                         eval("aso#18870").botaction = 4;
                                                      }
                                                      else
                                                      {
                                                         eval("aso#18870").botaction = 3;
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                set("aso#42405",eval("aso#18870")._x - 30);
                                                set("aso#73742",eval("aso#18870")._y - 40);
                                                set("aso#75134",eval("aso#18870")._x + 30);
                                                set("aso#06471",eval("aso#18870")._y - 40);
                                                v = ((eval("aso#97277") - eval("aso#70537")) * (eval("aso#73742") - eval("aso#01874")) + (eval("aso#28614") - eval("aso#01874")) * (eval("aso#70537") - eval("aso#42405"))) / ((eval("aso#28614") - eval("aso#01874")) * (eval("aso#75134") - eval("aso#42405")) - (eval("aso#97277") - eval("aso#70537")) * (eval("aso#06471") - eval("aso#73742")));
                                                retux = eval("aso#42405") + (eval("aso#75134") - eval("aso#42405")) * v;
                                                retuy = eval("aso#73742") + (eval("aso#06471") - eval("aso#73742")) * v;
                                                if((retux >= eval("aso#42405") || retux >= eval("aso#75134")) && (retux <= eval("aso#42405") || retux <= eval("aso#75134")))
                                                {
                                                   if((retuy >= eval("aso#73742") || retuy >= eval("aso#06471")) && (retuy <= eval("aso#73742") || retuy <= eval("aso#06471")))
                                                   {
                                                      if(retux < (eval("aso#42405") + eval("aso#75134")) / 2)
                                                      {
                                                         eval("aso#18870").botaction = 1;
                                                      }
                                                      else
                                                      {
                                                         eval("aso#18870").botaction = 2;
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
                        if(eval("aso#18870").botaction == 0 || eval("aso#18870").botaction == -1)
                        {
                           if(Math.random() > 0.8 && my_so.data.opt_bot == 2 || Math.random() > 0.5 && my_so.data.opt_bot == 3)
                           {
                              eval("aso#18870").botaction = 1 + Math.floor(Math.random() * 4);
                           }
                        }
                        if(eval("aso#18870").botaction == 1 || eval("aso#18870").botaction == 2)
                        {
                           if(eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100 + (1.5 - eval("aso#18870").botaction) * 200,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100 + (1.5 - eval("aso#18870").botaction) * 200,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y + 400))
                           {
                              eval("aso#18870").botaction = 4;
                           }
                        }
                     }
                  }
                  if(stand)
                  {
                     gotone = true;
                     if(eval("aso#87533") == 0)
                     {
                        set("aso#26251",0);
                        while(eval("aso#26251") < playerstot)
                        {
                           set("aso#57588",_root["aso#56196"]["player" + eval("aso#26251")]);
                           if(eval("aso#57588").dead)
                           {
                              if(eval("aso#57588")["aso#44218"]._visible == true)
                              {
                                 if(eval("aso#18870").hitTest(eval("aso#57588")["aso#44218"]))
                                 {
                                    if(_root["aso#56196"].player0["w_upg" + eval("aso#57588")["aso#44218"]._currentframe] < eval("aso#57588")["w_upg" + eval("aso#57588")["aso#44218"]._currentframe])
                                    {
                                       _root.gun_pickup.gotoAndStop(eval("aso#57588")["aso#44218"]._currentframe + 1);
                                       _root["aso#56196"].player0["w_upg" + eval("aso#57588")["aso#44218"]._currentframe] = eval("aso#57588")["w_upg" + eval("aso#57588")["aso#44218"]._currentframe];
                                       eval("aso#57588")["aso#44218"]._visible = false;
                                       eval("aso#57588")["aso#51599"]._visible = false;
                                       if(eval("aso#57588")["aso#44218"]._currentframe <= 6)
                                       {
                                          if(_root["aso#56196"].player0["aso#44218"]._currentframe < eval("aso#57588")["aso#44218"]._currentframe)
                                          {
                                             _root["aso#56196"].player0["aso#44218"].gotoAndStop(eval("aso#57588")["aso#44218"]._currentframe);
                                          }
                                          if(_root["aso#56196"].player0["aso#44218"]._currentframe == eval("aso#57588")["aso#44218"]._currentframe)
                                          {
                                             _root["aso#56196"].player0["aso#44218"].gotoAndStop(7);
                                             _root["aso#56196"].player0["aso#44218"].gotoAndStop(eval("aso#57588")["aso#44218"]._currentframe);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(Key.isDown(69))
                           {
                              if(gotone && eval("aso#87533") != eval("aso#26251"))
                              {
                                 if(eval("aso#57588").dead)
                                 {
                                    if(eval("aso#45610")[eval("aso#57588")["aso#59951"]] == true || eval("aso#45610")[eval("aso#57588")["aso#59951"]] == false)
                                    {
                                       set("aso#05079",eval("aso#18870")._x + eval("aso#18870")._xscale / 100 * eval("aso#18870")["aso#44218"]._x);
                                       set("aso#00482",eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y);
                                       set("aso#62735",eval("aso#90317")(eval("aso#50207")[eval("aso#57588").a_stand1],eval("aso#32240")[eval("aso#57588").a_stand1],eval("aso#05079"),eval("aso#00482")));
                                       set("aso#13431",eval("aso#90317")(eval("aso#50207")[eval("aso#57588")["aso#07442"]],eval("aso#32240")[eval("aso#57588")["aso#07442"]],eval("aso#05079"),eval("aso#00482")));
                                       if(eval("aso#62735") < 100 || eval("aso#13431") < 100)
                                       {
                                          eval("aso#57588").deadtime = 0;
                                          gotone = false;
                                          point = eval("aso#57588").a_stand1;
                                          point2 = eval("aso#57588")["aso#07442"];
                                          set("aso#05079",eval("aso#18870")._x + eval("aso#18870")._xscale / 100 * eval("aso#18870")["aso#44218"]._x);
                                          set("aso#00482",eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y);
                                          if(eval("aso#13431") < 100 && eval("aso#62735") >= 100 || eval("aso#13431") < 100 && eval("aso#62735") < 100 && eval("aso#13431") < eval("aso#62735"))
                                          {
                                             eval("aso#69566")[point2] -= (eval("aso#50207")[point2] - eval("aso#05079")) * 0.2;
                                             eval("aso#63577")[point2] -= (eval("aso#32240")[point2] - eval("aso#00482")) * 0.2;
                                             eval("aso#18870")["aso#38229"] += (eval("aso#50207")[point2] - eval("aso#05079")) * 0.05;
                                             eval("aso#18870")["aso#75555"] += (eval("aso#32240")[point2] - eval("aso#00482")) * 0.05;
                                             eval("aso#45610")[point2] = true;
                                          }
                                          else if(eval("aso#62735") < 100)
                                          {
                                             eval("aso#69566")[point] -= (eval("aso#50207")[point] - eval("aso#05079")) * 0.3;
                                             eval("aso#63577")[point] -= (eval("aso#32240")[point] - eval("aso#00482")) * 0.3;
                                             eval("aso#18870")["aso#38229"] += (eval("aso#50207")[point] - eval("aso#05079")) * 0.05;
                                             eval("aso#18870")["aso#75555"] += (eval("aso#32240")[point] - eval("aso#00482")) * 0.05;
                                             eval("aso#45610")[point] = true;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           eval("aso#26251")++;
                        }
                     }
                     if((Key.isDown(65) || Key.isDown(37)) && eval("aso#87533") == 0 || eval("aso#18870").botaction == 2)
                     {
                        eval("aso#18870")["aso#38229"] -= 5 / (eval("aso#18870").sit + 1);
                        if(eval("aso#18870")["aso#82936"]._currentframe <= 60 && (eval("aso#18870")["aso#82936"]._currentframe < 30 || eval("aso#18870")["aso#82936"]._currentframe > 50))
                        {
                           eval("aso#18870")["aso#82936"].gotoAndPlay("walk");
                        }
                     }
                     if((Key.isDown(68) || Key.isDown(39)) && eval("aso#87533") == 0 || eval("aso#18870").botaction == 1)
                     {
                        eval("aso#18870")["aso#38229"] += 5 / (eval("aso#18870").sit + 1);
                        if(eval("aso#18870")["aso#82936"]._currentframe <= 60 && (eval("aso#18870")["aso#82936"]._currentframe < 30 || eval("aso#18870")["aso#82936"]._currentframe > 50))
                        {
                           eval("aso#18870")["aso#82936"].gotoAndPlay("walk");
                        }
                     }
                     if((Key.isDown(32) || Key.isDown(87) || Key.isDown(38)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && eval("aso#18870").botaction == 3)
                     {
                        eval("aso#18870")["aso#75555"] -= 5 + eval("aso#57167") * 4;
                     }
                  }
                  if(!stand)
                  {
                     if((Key.isDown(65) || Key.isDown(37)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && eval("aso#18870").botaction == 2)
                     {
                        if(eval("aso#18870")["aso#38229"] > -4)
                        {
                           eval("aso#18870")["aso#38229"] -= 0.1;
                        }
                     }
                     if((Key.isDown(68) || Key.isDown(39)) && eval("aso#87533") == 0 || eval("aso#87533") != 0 && eval("aso#18870").botaction == 1)
                     {
                        if(eval("aso#18870")["aso#38229"] < 4)
                        {
                           eval("aso#18870")["aso#38229"] += 0.1;
                        }
                     }
                     if(eval("aso#87533") != 0 && eval("aso#18870")["aso#20262"] == 2)
                     {
                        if(eval("aso#18870").botaction == 3)
                        {
                           if(eval("aso#18870").jet != true)
                           {
                              eval("aso#18870").body.jet.gotoAndPlay("jet_on");
                           }
                           eval("aso#18870").jet = true;
                        }
                        else if(eval("aso#18870")._y < eval("aso#58980") - 150)
                        {
                           if(eval("aso#18870").jet != false)
                           {
                              eval("aso#18870").body.jet.gotoAndPlay("jet_off");
                           }
                           eval("aso#18870").jet = false;
                        }
                     }
                  }
                  if(eval("aso#18870").botaction == 4 || (eval("aso#18870").botaction == -1 || eval("aso#18870").botaction == 0) && eval("aso#18870")["aso#12881"] < 80 && eval("aso#18870")["aso#12881"] > 30)
                  {
                     walkok = true;
                  }
                  if(eval("aso#87533") != 0 && eval("aso#18870")["aso#20262"] == 2)
                  {
                     if(eval("aso#18870").jet)
                     {
                        eval("aso#18870")["aso#75555"] *= 0.9;
                        eval("aso#18870")["aso#38229"] *= 0.9;
                        eval("aso#18870")["aso#75555"] -= eval("aso#57167") * 1.4;
                     }
                  }
                  if(eval("aso#87533") != 0)
                  {
                     eval("aso#18870").mtarx = eval("aso#27643");
                     eval("aso#18870").mtary = eval("aso#58980");
                     if(eval("aso#18870").ltarx == undefined)
                     {
                        eval("aso#18870").ltarx = eval("aso#27643");
                        eval("aso#18870").ltary = eval("aso#58980");
                     }
                     if(my_so.data.opt_bot == 1)
                     {
                        set("aso#27643",(eval("aso#18870").ltarx * 10 + eval("aso#27643")) / 11);
                        set("aso#58980",(eval("aso#18870").ltary * 10 + eval("aso#58980")) / 11);
                     }
                     else if(my_so.data.opt_bot == 2)
                     {
                        set("aso#27643",(eval("aso#18870").ltarx * 4 + eval("aso#27643")) / 5);
                        set("aso#58980",(eval("aso#18870").ltary * 4 + eval("aso#58980")) / 5);
                     }
                     else
                     {
                        set("aso#27643",(eval("aso#18870").ltarx * 4 + eval("aso#27643")) / 5);
                        set("aso#58980",(eval("aso#18870").ltary * 4 + eval("aso#58980")) / 5);
                     }
                     eval("aso#18870").ltarx = eval("aso#27643");
                     eval("aso#18870").ltary = eval("aso#58980");
                  }
                  if((Key.isDown(13) || Key.isDown(71) || Key.isDown(45) || Key.isDown(96) || Key.isDown(81)) && eval("aso#87533") == 0)
                  {
                     if(grenadetim <= 0)
                     {
                        if(grenades > 0)
                        {
                           if(eval("aso#18870")._currentframe < 21 || eval("aso#18870")._currentframe > 25)
                           {
                              grenadetim = 20;
                              grenades -= 1;
                              eval("aso#18870").gotoAndPlay("fire");
                              rn = Math.random();
                              duplicateMovieClip(_root["aso#56196"].grenad,"aso#94493" + eval("aso#23046"),16384 + (400 + eval("aso#23046")));
                              set("aso#03687",Math.atan2(eval("aso#27643") - eval("aso#18870")._x,eval("aso#58980") - eval("aso#18870")._y));
                              _root["aso#56196"]["aso#94493" + eval("aso#23046")]._x = eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100;
                              _root["aso#56196"]["aso#94493" + eval("aso#23046")]._y = eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y;
                              _root["aso#56196"]["aso#94493" + eval("aso#23046")]["aso#38229"] = Math.sin(eval("aso#03687")) * 15 + eval("aso#18870")["aso#38229"];
                              _root["aso#56196"]["aso#94493" + eval("aso#23046")]["aso#75555"] = Math.cos(eval("aso#03687")) * 15 + eval("aso#18870")["aso#75555"];
                              set("aso#23046",eval("aso#23046") + 1);
                           }
                        }
                     }
                  }
                  if(eval("aso#18870").falltim > 0)
                  {
                     eval("aso#18870").falltim -= 1;
                  }
                  tosit = 0;
                  if((Key.isDown(16) || Key.isDown(83) || Key.isDown(40)) && eval("aso#87533") == 0 || eval("aso#18870").falltim > 0 || walkok && eval("aso#87533") != 0 || !hup)
                  {
                     tosit = 1;
                  }
                  else
                  {
                     tosit = -1;
                  }
                  if(cantlift)
                  {
                     tosit = 1;
                  }
                  if(eval("aso#18870")["aso#60372"] > 30)
                  {
                     tosit = 1;
                  }
                  eval("aso#18870").sit += tosit;
                  if(eval("aso#18870").sit > 2)
                  {
                     eval("aso#18870").sit = 2;
                  }
                  if(eval("aso#18870").sit < 0)
                  {
                     eval("aso#18870").sit = 0;
                  }
                  if(eval("aso#18870").sit == 1 && tosit == 1)
                  {
                     eval("aso#18870")["aso#82936"].gotoAndPlay("sitdown");
                  }
                  if(eval("aso#18870").sit == 1 && tosit == -1)
                  {
                     eval("aso#18870")["aso#82936"].gotoAndPlay("situp");
                  }
                  set("aso#79731",- Math.atan2(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100 - eval("aso#27643"),eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y - eval("aso#58980")) - 1.5707963267948966);
                  if(eval("aso#90317")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980")) < 80)
                  {
                     set("aso#79731",- Math.atan2(eval("aso#18870")._x + eval("aso#18870").arm1._x * eval("aso#18870")._xscale / 100 - eval("aso#27643"),eval("aso#18870")._y + eval("aso#18870").arm1._y - eval("aso#58980")) - 1.5707963267948966);
                  }
                  set("aso#79731",eval("aso#79731") + (Math.random() * eval("aso#18870")["aso#93101"] * 2 - eval("aso#18870")["aso#93101"]) * 0.01);
                  set("aso#03687",eval("aso#79731") / 3.141592653589793 * 180);
                  TEMP = eval("aso#79731");
                  if(eval("aso#18870")._x < eval("aso#27643"))
                  {
                     eval("aso#18870")._xscale = 100;
                  }
                  else
                  {
                     eval("aso#18870")._xscale = -100;
                     set("aso#03687",- eval("aso#03687") + 180);
                  }
                  if(eval("aso#87533") == 0)
                  {
                     _root["aso#38779"].gotoAndStop(eval("aso#18870")["aso#44218"]._currentframe);
                  }
                  eval("aso#18870")["aso#44218"]._rotation = eval("aso#03687");
                  if(eval("aso#18870")["aso#51599"]._visible == true)
                  {
                     set("aso#67332",- Math.atan2(eval("aso#18870")._x + eval("aso#18870")["aso#51599"]._x * eval("aso#18870")._xscale / 100 - eval("aso#27643"),eval("aso#18870")._y + eval("aso#18870")["aso#51599"]._y - eval("aso#58980")) - 1.5707963267948966);
                     if(eval("aso#90317")(eval("aso#18870")._x + eval("aso#18870")["aso#51599"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#51599"]._y,eval("aso#27643"),eval("aso#58980")) < 80)
                     {
                        set("aso#67332",- Math.atan2(eval("aso#18870")._x + eval("aso#18870").arm2._x * eval("aso#18870")._xscale / 100 - eval("aso#27643"),eval("aso#18870")._y + eval("aso#18870").arm2._y - eval("aso#58980")) - 1.5707963267948966);
                     }
                     set("aso#67332",eval("aso#67332") + (Math.random() * eval("aso#18870")["aso#93101"] * 2 - eval("aso#18870")["aso#93101"]) * 0.01);
                     set("aso#80702",eval("aso#67332") / 3.141592653589793 * 180);
                     if(eval("aso#18870")._x < eval("aso#27643"))
                     {
                        eval("aso#18870")._xscale = 100;
                     }
                     else
                     {
                        eval("aso#18870")._xscale = -100;
                        set("aso#80702",- eval("aso#80702") + 180);
                     }
                     eval("aso#18870")["aso#51599"]._rotation = eval("aso#80702");
                  }
                  if(eval("aso#18870")._xscale > 0)
                  {
                     set("aso#11068",eval("aso#03687") / 2 - 90);
                  }
                  else
                  {
                     set("aso#11068",eval("aso#03687") / 2 + 90);
                  }
                  if(eval("aso#18870")["aso#93101"] > 0.1 || eval("aso#18870")["aso#93101"] < -0.1)
                  {
                     eval("aso#18870")["aso#93101"] *= 0.9;
                  }
                  else
                  {
                     eval("aso#18870")["aso#93101"] = 0;
                  }
                  if(eval("aso#18870")._xscale > 0)
                  {
                     if(eval("aso#11068") < -135 && eval("aso#11068") >= -180)
                     {
                        set("aso#11068",-135);
                     }
                     if(eval("aso#11068") > -45 || eval("aso#11068") < -180)
                     {
                        set("aso#11068",-45);
                     }
                  }
                  else
                  {
                     if(eval("aso#11068") > 315 || eval("aso#11068") < 180)
                     {
                        set("aso#11068",315);
                     }
                     if(eval("aso#11068") < 225)
                     {
                        set("aso#11068",225);
                     }
                  }
                  if(eval("aso#18870")["aso#70116"] == 0)
                  {
                     eval("aso#18870").arm1._rotation = eval("aso#11068") + 21 - eval("aso#18870")["aso#60372"] * 0.8;
                     eval("aso#18870").arm2._rotation = eval("aso#11068") + 21 + 2 + eval("aso#18870")["aso#60372"] * 0.3;
                     eval("aso#18870")["aso#14273"]._rotation = eval("aso#11068") + 90 + eval("aso#18870")["aso#60372"];
                     eval("aso#18870")["aso#18028"]._rotation -= eval("aso#18870")["aso#60372"] * 0.8;
                     if(eval("aso#18870")["aso#51599"]._visible == true)
                     {
                        eval("aso#18870")["aso#51599"]._rotation += eval("aso#18870")["aso#60372"] * 0.3;
                     }
                  }
                  else
                  {
                     eval("aso#18870").arm1._rotation = eval("aso#11068") + 21 + eval("aso#18870")["aso#60372"] * 0.8;
                     eval("aso#18870").arm2._rotation = eval("aso#11068") + 21 + 2 + eval("aso#18870")["aso#60372"] * 0.5;
                     eval("aso#18870")["aso#14273"]._rotation = eval("aso#11068") + 90 - eval("aso#18870")["aso#60372"];
                     eval("aso#18870")["aso#18028"]._rotation += eval("aso#18870")["aso#60372"] * 0.8;
                     if(eval("aso#18870")["aso#51599"]._visible == true)
                     {
                        eval("aso#18870")["aso#51599"]._rotation += eval("aso#18870")["aso#60372"] * 0.5;
                     }
                  }
                  set("aso#03687",eval("aso#18870").arm1._rotation * eval("aso#02295"));
                  set("aso#81123",Math.atan2(eval("aso#18870").arm1.wea._y,eval("aso#18870").arm1.wea._x) - 1.5707963267948966);
                  set("aso#94914",eval("aso#90317")(eval("aso#18870").arm1.wea._x,eval("aso#18870").arm1.wea._y,0,0));
                  plx = Math.sin(eval("aso#03687") + eval("aso#81123")) * eval("aso#94914");
                  ply = Math.cos(eval("aso#03687") + eval("aso#81123")) * eval("aso#94914");
                  eval("aso#18870")["aso#44218"]._x = eval("aso#18870").arm1._x - plx;
                  eval("aso#18870")["aso#44218"]._y = eval("aso#18870").arm1._y + ply;
                  if(eval("aso#18870")["aso#51599"]._visible == true)
                  {
                     set("aso#03687",eval("aso#18870").arm2._rotation * eval("aso#02295"));
                     set("aso#81123",Math.atan2(eval("aso#18870").arm2.wea._y,eval("aso#18870").arm2.wea._x) - 1.5707963267948966);
                     set("aso#94914",eval("aso#90317")(eval("aso#18870").arm2.wea._x,eval("aso#18870").arm2.wea._y,0,0));
                     plx = Math.sin(eval("aso#03687") + eval("aso#81123")) * eval("aso#94914");
                     ply = Math.cos(eval("aso#03687") + eval("aso#81123")) * eval("aso#94914");
                     eval("aso#18870")["aso#51599"]._x = eval("aso#18870").arm2._x - plx + 2;
                     eval("aso#18870")["aso#51599"]._y = eval("aso#18870").arm2._y + ply - 1;
                  }
                  if(eval("aso#77918") < 0)
                  {
                     eval("aso#18870").lastvis = eval("aso#88504")(eval("aso#18870")._x + eval("aso#18870")["aso#44218"]._x * eval("aso#18870")._xscale / 100,eval("aso#18870")._y + eval("aso#18870")["aso#44218"]._y,eval("aso#27643"),eval("aso#58980"));
                  }
                  if(eval("aso#18870").lhunt != eval("aso#18870").hunt)
                  {
                     eval("aso#18870").lhunt = eval("aso#18870").hunt;
                     eval("aso#18870")["aso#76105"] = 0;
                  }
                  else
                  {
                     eval("aso#18870")["aso#76105"]++;
                  }
                  if(fire && eval("aso#87533") == 0 || eval("aso#87533") != 0 && eval("aso#18870").hunt != -1 && eval("aso#90317")(eval("aso#18870").mtarx,eval("aso#18870").mtary,eval("aso#27643"),eval("aso#58980")) < 300)
                  {
                     if(eval("aso#87533") == 0 || eval("aso#87533") != 0 && eval("aso#18870")["aso#76105"] > 1 && (Math.random() > 0.95 || Math.random() > 0.7 && eval("aso#18870")["aso#29035"] == 1) && eval("aso#18870").lastvis && (Math.abs(eval("aso#27643") - eval("aso#18870")._x) < screenX || eval("aso#18870")["aso#29035"] == 1 && Math.abs(eval("aso#27643") - eval("aso#18870")._x) < screenX))
                     {
                        if(eval("aso#18870")._currentframe < 21 || eval("aso#18870")._currentframe > 25)
                        {
                           SHOT();
                        }
                     }
                  }
               }
            }
            if(eval("aso#18870")["aso#12881"] <= 0)
            {
               if(eval("aso#18870").dead == false)
               {
                  eval("aso#18870").dead = true;
                  eval("aso#32790")(eval("aso#87533"));
               }
               else
               {
                  if(eval("aso#18870").jet)
                  {
                     eval("aso#69566")[eval("aso#18870")["aso#59951"]] -= (eval("aso#50207")[eval("aso#18870")["aso#16636"]] - eval("aso#50207")[eval("aso#18870")["aso#59951"]]) * 0.3;
                     eval("aso#63577")[eval("aso#18870")["aso#59951"]] -= (eval("aso#32240")[eval("aso#18870")["aso#16636"]] - eval("aso#32240")[eval("aso#18870")["aso#59951"]]) * 0.3;
                     eval("aso#45610")[eval("aso#18870")["aso#59951"]] = true;
                     eval("aso#18870")["aso#12881"] -= 1;
                     if(eval("aso#18870")["aso#12881"] < -500)
                     {
                        eval("aso#18870").jet = false;
                        eval("aso#18870").body.jet.gotoAndPlay("jet_off");
                     }
                  }
                  if(_root.opt_dis < 3 && eval("aso#87533") != 0)
                  {
                     eval("aso#18870").deadtime += 1;
                     if(eval("aso#18870").deadtime > 200 && _root.opt_dis == 2 || eval("aso#18870").deadtime > 70 && _root.opt_dis == 1)
                     {
                        if(eval("aso#18870")._alpha > 0)
                        {
                           eval("aso#18870")._alpha -= 10;
                        }
                        else
                        {
                           eval("aso#18870")._visible = false;
                           eval("aso#18870")["aso#35024"] = false;
                           eval("aso#45610")[eval("aso#18870")["aso#16636"]] = 2;
                           eval("aso#18870").unloadMovie();
                        }
                     }
                  }
               }
            }
            if(eval("aso#18870")["aso#35024"] == true)
            {
               if(eval("aso#18870")["aso#12881"] > 0)
               {
                  eval("aso#18870")["aso#60372"] += eval("aso#18870").lhea - eval("aso#18870")["aso#12881"];
                  if(eval("aso#18870").lhea != eval("aso#18870")["aso#12881"])
                  {
                     eval("aso#18870")["aso#83907"] = 0;
                  }
                  else
                  {
                     eval("aso#18870")["aso#60372"] -= eval("aso#18870")["aso#83907"];
                     eval("aso#18870")["aso#83907"] += 5;
                     if(eval("aso#18870")["aso#83907"] > 15)
                     {
                        eval("aso#18870")["aso#83907"] = 15;
                     }
                  }
                  if(eval("aso#18870")["aso#60372"] > 45)
                  {
                     eval("aso#18870")["aso#60372"] = 45;
                  }
                  if(eval("aso#18870")["aso#60372"] < 0)
                  {
                     eval("aso#18870")["aso#60372"] = 0;
                     eval("aso#18870")["aso#70116"] = Math.round(Math.random());
                  }
                  eval("aso#18870")["aso#82936"].upper1.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"].upper2.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"].lower1.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"].lower2.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"].middle1.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"].middle2.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"].toe.gotoAndStop(eval("aso#18870")["aso#47002"]);
               }
               else
               {
                  eval("aso#18870")["aso#82936"]["aso#55775"].upper.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"]["aso#87112"].upper.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"]["aso#55775"].lower.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"]["aso#87112"].lower.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"]["aso#55775"].middle.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"]["aso#87112"].middle.gotoAndStop(eval("aso#18870")["aso#47002"]);
                  eval("aso#18870")["aso#82936"].toe.gotoAndStop(eval("aso#18870")["aso#47002"]);
               }
            }
            eval("aso#18870").lhea = eval("aso#18870")["aso#12881"];
            eval("aso#87533")++;
         }
         set("aso#33211",0);
         while(eval("aso#33211") < maxef)
         {
            if(_root["aso#56196"]["p" + eval("aso#33211")])
            {
               if(_root["aso#56196"]["p" + eval("aso#33211")].kill == true)
               {
                  _root["aso#56196"]["p" + eval("aso#33211")].removeMovieClip();
               }
            }
            eval("aso#33211")++;
         }
         eval("aso#01453")();
         eval("aso#95464")();
         if(_root["aso#56196"].player0["aso#12881"] != lhea)
         {
            if(lhea > 0 && _root["aso#56196"].player0["aso#12881"] <= 0)
            {
               set("aso#88083",Math.random() * 3.141592653589793 * 2);
               _root["aso#56196"]._x += Math.sin(eval("aso#88083")) * 200;
               _root["aso#56196"]._y += Math.cos(eval("aso#88083")) * 200;
               if(_root["aso#56196"]._y - hscreenY * 2 < -1000)
               {
                  _root["aso#56196"]._y = hscreenY * 2 - 1000;
               }
               _root["aso#19841"]("<font color=\"#FFFF00\">Press SPACE for quick restart</font>");
            }
         }
         if(_root["aso#56196"].player0["aso#12881"] <= 0)
         {
            if(Key.isDown(32))
            {
               if(_root["aso#56196"].player0["aso#12881"] != undefined)
               {
                  stpsnds();
                  _root.gotoAndStop(5);
                  _root.gotoAndStop(3);
               }
            }
         }
         lhea = _root["aso#56196"].player0["aso#12881"];
         mdl = _root["aso#56196"].player0["aso#44218"]._currentframe;
         cur = -1;
         k = 0;
         while(k < 6)
         {
            if(_root["w" + k] == mdl)
            {
               cur = k;
            }
            k++;
         }
         if(cur >= 0 && cur < 6)
         {
            if(Key.isDown(49) || Key.isDown(50) || Key.isDown(51) || Key.isDown(52) || Key.isDown(53) || Key.isDown(54))
            {
               if(Key.getCode() >= 49)
               {
                  if(Key.getCode() <= 54)
                  {
                     set("aso#91288",-1);
                     k = 0;
                     while(k < 6)
                     {
                        if(Key.getCode() == 49 + k)
                        {
                           set("aso#91288",_root["w" + k]);
                        }
                        k++;
                     }
                     if(_root["aso#56196"].player0["w_upg" + eval("aso#91288")] != -1)
                     {
                        _root["aso#56196"].player0["aso#44218"].gotoAndStop(eval("aso#91288"));
                        my_so.data.lwea = eval("aso#91288");
                     }
                     eval("aso#61343")(0);
                  }
               }
            }
         }
         if(Key.getCode() == 192)
         {
            _root.console._visible = true;
            _root.console.cons.text = "";
            _root.console.cons.onSetFocus();
         }
         if(Key.getCode() == 13)
         {
            _root.console.exec.onPress();
         }
         if(Key.getCode() == 27)
         {
            _root.console._visible = false;
         }
         _root.gcur._x = _xmouse;
         _root.gcur._y = _ymouse;
         if(_root["aso#56196"].player0["aso#12881"] > 0)
         {
            _root.gcur._xscale = Math.min(100 + _root["aso#56196"].player0["aso#93101"] * 10,300);
         }
         else
         {
            _root.gcur._xscale = 100;
         }
         _root.gcur._yscale = _root.gcur._xscale;
         _root.gcur._alpha = 50 - _root["aso#56196"].player0["aso#93101"] * 10;
         if(_root.gcur._alpha < 10)
         {
            _root.gcur._alpha = 10;
         }
         if(_root.gcur._alpha > 30)
         {
            _root.gcur._alpha = 50;
         }
         _root.gcur.gotoAndStop(_root["aso#56196"].player0["aso#44218"]._currentframe);
         if(_root["aso#56196"].player0["aso#12881"] > 0)
         {
            if(my_so.data.bg_sou)
            {
               if(_root["aso#56196"]["aso#37808"].hitTest(_root["aso#56196"].player0._x + _root["aso#56196"]._x,_root["aso#56196"].player0._y + _root["aso#56196"]._y - 50,true))
               {
                  if(_root.am_base_vol < 50)
                  {
                     _root.am_base_vol += 2;
                     if(_root["aso#56196"]._currentframe < 11)
                     {
                        am_base.setVolume(_root.am_base_vol);
                        am_falkok_base.setVolume(0);
                     }
                     else
                     {
                        am_base.setVolume(0);
                        am_falkok_base.setVolume(_root.am_base_vol);
                     }
                  }
                  if(_root.am_wind_vol > 0)
                  {
                     _root.am_wind_vol -= 2;
                     am_wind.setVolume(_root.am_wind_vol);
                  }
               }
               else
               {
                  if(_root.am_wind_vol < 50)
                  {
                     _root.am_wind_vol += 2;
                     am_wind.setVolume(_root.am_wind_vol);
                  }
                  if(_root.am_base_vol > 0)
                  {
                     _root.am_base_vol -= 2;
                     am_base.setVolume(_root.am_base_vol);
                  }
               }
            }
         }
      }
   }
};
Mouse.hide();
_root.gcur.gotoAndStop(1);
_root.gcur._visible = true;
Mouse.removeListener(someListener);
someListener = new Object();
Mouse.addListener(someListener);
someListener.onMouseDown = function()
{
   fire = true;
};
someListener.onMouseUp = function()
{
   fire = false;
};
_root.w0 = 6;
_root.w1 = 1;
_root.w2 = 2;
_root.w3 = 3;
_root.w4 = 4;
_root.w5 = 5;
someListener.onMouseWheel = function(delta, scrollTarget)
{
   if(_root["aso#56196"].player0["aso#12881"] > 0)
   {
      mdl = _root["aso#56196"].player0["aso#44218"]._currentframe;
      cur = -1;
      k = 0;
      while(k < 6)
      {
         if(_root["w" + k] == mdl)
         {
            cur = k;
         }
         k++;
      }
      if(cur >= 0 && cur < 6)
      {
         cur += delta / Math.abs(delta);
         while(_root["aso#56196"].player0["w_upg" + cur] == -1 || _root["aso#56196"].player0["w_upg" + cur] == undefined || isNaN(_root["aso#56196"].player0["w_upg" + cur]) || cur < 0 || cur >= 6)
         {
            cur += delta / Math.abs(delta);
            if(cur >= 6)
            {
               cur = 0;
            }
            if(cur < 0)
            {
               cur = 5;
            }
         }
         _root["aso#56196"].player0["aso#44218"].gotoAndStop(_root["w" + cur]);
         my_so.data.lwea = _root["w" + cur];
         eval("aso#61343")(0);
      }
   }
};
