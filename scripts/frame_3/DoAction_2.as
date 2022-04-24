function SHOT()
{
   if(eval("aso#38229")["aso#63577"].whea._currentframe == 1)
   {
      eval("aso#38229")["aso#63577"].whea.gotoAndPlay(2);
      if(eval("aso#38229")["aso#02295"]._visible == true)
      {
         eval("aso#38229")["aso#02295"].whea.gotoAndPlay(2);
      }
      eval("aso#38229").gotoAndPlay("fire");
      if(eval("aso#06892") == 0)
      {
         if(eval("aso#38229")["aso#63577"]._currentframe != 6)
         {
            _root.stat_shots++;
         }
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 1)
      {
         puli = 1;
         set("aso#58559",3);
         noise = 7;
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 2)
      {
         puli = 1;
         set("aso#58559",3);
         if(eval("aso#38229").w_upg2 == 0)
         {
            noise = 5;
         }
         if(eval("aso#38229").w_upg2 == 1)
         {
            noise = 1;
         }
         if(eval("aso#38229").w_upg2 == 2)
         {
            noise = 2;
         }
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 3)
      {
         puli = 2;
         set("aso#58559",4);
         noise = 20;
         if(eval("aso#38229").w_upg3 == 1)
         {
            noise = 12;
         }
         if(eval("aso#38229").w_upg3 == 2)
         {
            noise = 12;
            puli = 3;
         }
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 5 || eval("aso#38229")["aso#63577"]._currentframe == 12)
      {
         puli = 4;
         set("aso#58559",3);
         noise = 10;
         if(eval("aso#38229")["aso#63577"]._currentframe == 12)
         {
            puli = 1;
         }
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 7)
      {
         puli = 0;
         set("aso#58559",-1);
         noise = 0;
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 6)
      {
         puli = 0;
         set("aso#58559",-1);
         noise = 0;
         set("aso#09676",0);
         while(eval("aso#09676") < playerstot)
         {
            set("aso#88925",_root["aso#75555"]["player" + eval("aso#09676")]);
            if(eval("aso#06892") != eval("aso#09676"))
            {
               if(eval("aso#88925")["aso#69566"] > 0)
               {
                  if(eval("aso#38229")["aso#64969"] == eval("aso#88925")["aso#64969"] && eval("aso#88925")["aso#64969"] != 0 && eval("aso#88925")["aso#64969"] != 3 || eval("aso#38229")["aso#64969"] != eval("aso#88925")["aso#64969"])
                  {
                     if(eval("aso#38229")["aso#63577"].hitTest(eval("aso#88925")))
                     {
                        if(eval("aso#88925")["aso#69566"] < 50)
                        {
                           eval("aso#88925")["aso#69566"] = 0;
                        }
                        else
                        {
                           eval("aso#88925")["aso#69566"] -= 50;
                        }
                        eval("aso#88925")["aso#35024"] = "none";
                        if(eval("aso#88925")["aso#69566"] > 0)
                        {
                           eval("aso#88925").gotoAndPlay("hurt");
                           eval("aso#88925").hunt = eval("aso#06892");
                           eval("aso#88925")["aso#45189"] += 20;
                        }
                     }
                  }
               }
            }
            eval("aso#09676")++;
         }
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 9)
      {
         puli = 1;
         set("aso#58559",3);
         noise = 1;
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 10)
      {
         puli = 2;
         set("aso#58559",6);
         noise = 20;
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 11)
      {
         puli = 1;
         set("aso#58559",3);
         noise = 20;
      }
      if(eval("aso#38229")["aso#63577"]._currentframe == 4 || eval("aso#38229")["aso#63577"]._currentframe == 13)
      {
         puli = 0;
         set("aso#58559",-1);
         if(grenades > 0 && eval("aso#06892") == 0 || eval("aso#06892") != 0)
         {
            noise = 30;
            if(eval("aso#06892") == 0)
            {
               grenades -= 1;
            }
            rn = Math.random();
            duplicateMovieClip(_root["aso#75555"].rocket,"aso#64548" + eval("aso#55775"),16384 + (400 + eval("aso#55775")));
            _root["aso#75555"]["aso#64548" + eval("aso#55775")]._x = eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100;
            _root["aso#75555"]["aso#64548" + eval("aso#55775")]._y = eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y;
            _root["aso#75555"]["aso#64548" + eval("aso#55775")]["aso#26251"] = Math.cos(eval("aso#99090")) * 10;
            _root["aso#75555"]["aso#64548" + eval("aso#55775")]["aso#94914"] = Math.sin(eval("aso#99090")) * 10;
            _root["aso#75555"]["aso#64548" + eval("aso#55775")]["aso#26801"] = 0;
            _root["aso#75555"]["aso#64548" + eval("aso#55775")]["aso#58138"] = 0;
            _root["aso#75555"]["aso#64548" + eval("aso#55775")]["aso#36416"] = eval("aso#06892");
            set("aso#55775",eval("aso#55775") + 1);
         }
      }
      eval("aso#38229")["aso#45189"] += noise;
      if(eval("aso#58559") != -1)
      {
         eval("aso#52991")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58559"));
      }
      px = eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100;
      py = eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y;
      p = 0;
      while(p < puli)
      {
         sm = 0;
         set("aso#27643",0);
         if(eval("aso#38229")["aso#63577"]._currentframe == 1)
         {
            sm = -0.02 + Math.random() * 0.04;
            if(eval("aso#38229").w_upg1 == 0)
            {
               set("aso#27643",0.3);
            }
            else if(eval("aso#38229").w_upg1 == 1)
            {
               set("aso#27643",0.8);
            }
            else
            {
               set("aso#27643",0.8);
            }
         }
         if(eval("aso#38229")["aso#63577"]._currentframe == 2)
         {
            sm = -0.05 + Math.random() * 0.1;
            set("aso#27643",0.5);
            if(eval("aso#38229").w_upg2 == 2)
            {
               set("aso#27643",0.9);
            }
         }
         if(eval("aso#38229")["aso#63577"]._currentframe == 3)
         {
            sm = -0.05 + Math.random() * 0.1;
            set("aso#27643",1.5);
         }
         if(eval("aso#38229")["aso#63577"]._currentframe == 5 || eval("aso#38229")["aso#63577"]._currentframe == 12)
         {
            sm = -0.04 + Math.random() * 0.08;
            set("aso#27643",1);
            if(eval("aso#38229").w_upg5 == 1)
            {
               set("aso#27643",1.5);
            }
            if(eval("aso#38229").w_upg5 == 2)
            {
               set("aso#27643",2);
            }
         }
         if(eval("aso#38229")["aso#63577"]._currentframe == 9)
         {
            sm = -0.05 + Math.random() * 0.1;
            set("aso#27643",1.3);
         }
         if(eval("aso#38229")["aso#63577"]._currentframe == 10)
         {
            sm = -0.015 + Math.random() * 0.03;
            set("aso#27643",0.7);
         }
         if(eval("aso#38229")["aso#63577"]._currentframe == 11)
         {
            sm = -0.015 + Math.random() * 0.03;
            set("aso#27643",1);
         }
         if(eval("aso#38229").dead)
         {
            set("aso#15665",Math.cos(eval("aso#38229")["aso#63577"]._rotation / 180 * 3.141592653589793 + sm) * 10 * eval("aso#38229")["aso#63577"]._xscale / 50);
            set("aso#41013",(- Math.sin(eval("aso#38229")["aso#63577"]._rotation / 180 * 3.141592653589793 + sm)) * 10);
         }
         else
         {
            set("aso#15665",Math.cos(eval("aso#99090") + sm) * 10);
            set("aso#41013",Math.sin(eval("aso#99090") + sm) * 10);
         }
         if(eval("aso#38229")["aso#63577"]._currentframe == 3)
         {
            if(p == 0)
            {
               eval("aso#98669")(px + Math.sin(eval("aso#99090")),py + Math.cos(eval("aso#99090")),eval("aso#06892"),eval("aso#27643"),eval("aso#15665"),eval("aso#41013"));
            }
            else
            {
               eval("aso#98669")(px - Math.sin(eval("aso#99090")),py - Math.cos(eval("aso#99090")),eval("aso#06892"),eval("aso#27643"),eval("aso#15665"),eval("aso#41013"));
            }
         }
         else
         {
            eval("aso#98669")(px,py,eval("aso#06892"),eval("aso#27643"),eval("aso#15665"),eval("aso#41013"));
         }
         p++;
      }
      if(eval("aso#38229").dead)
      {
         eval("aso#57588")[eval("aso#90317")[eval("aso#38229").whold1]] -= eval("aso#15665") * eval("aso#27643");
         eval("aso#51599")[eval("aso#90317")[eval("aso#38229").whold1]] -= eval("aso#41013") * eval("aso#27643");
         eval("aso#57588")[eval("aso#84328")[eval("aso#38229").whold1]] -= (10 - Math.random() * 20) * eval("aso#27643");
         eval("aso#51599")[eval("aso#84328")[eval("aso#38229").whold1]] -= (10 - Math.random() * 20) * eval("aso#27643");
      }
   }
}
function §aso#71508§()
{
   pl = 0;
   while(pl < pulsmax)
   {
      if(_root["aso#75555"]["pl" + pl]._visible == true)
      {
         set("aso#32240",_root["aso#75555"]["pl" + pl]);
         eval("aso#32240")._x += eval("aso#32240")["aso#15665"] * pspeed;
         eval("aso#32240")._y += eval("aso#32240")["aso#41013"] * pspeed;
         eval("aso#32240").life++;
         if(eval("aso#32240").life > 20)
         {
            eval("aso#32240")._visible = false;
         }
         set("aso#09676",0);
         while(eval("aso#09676") < playerstot)
         {
            set("aso#88925",_root["aso#75555"]["player" + eval("aso#09676")]);
            if(eval("aso#88925").dead && eval("aso#32240")._x < eval("aso#88925").body._x + 400 && eval("aso#32240")._x > eval("aso#88925").body._x - 400 && eval("aso#32240")._y < eval("aso#88925").body._y + 400 && eval("aso#32240")._y > eval("aso#88925").body._y - 400 || !eval("aso#88925").dead && eval("aso#32240")._x < eval("aso#88925")._x + 200 && eval("aso#32240")._x > eval("aso#88925")._x - 200 && eval("aso#32240")._y < eval("aso#88925")._y + 100 && eval("aso#32240")._y > eval("aso#88925")._y - 300)
            {
               if(eval("aso#88925")["aso#69566"] <= 0 || _root["aso#75555"]["player" + eval("aso#32240")["aso#36416"]]["aso#64969"] == eval("aso#88925")["aso#64969"] && eval("aso#88925")["aso#64969"] != 0 && eval("aso#88925")["aso#64969"] != 3 || _root["aso#75555"]["player" + eval("aso#32240")["aso#36416"]]["aso#64969"] != eval("aso#88925")["aso#64969"])
               {
                  if(eval("aso#32240")["aso#36416"] != eval("aso#09676"))
                  {
                     set("aso#29035",pspeed - 1);
                     while(eval("aso#29035") >= 0)
                     {
                        if(eval("aso#88925").hitTest(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                        {
                           if(eval("aso#32240")["aso#27643"] >= 0.2)
                           {
                              type = 1;
                              if(eval("aso#88925")["aso#69566"] <= 0 && eval("aso#88925").dead)
                              {
                                 tt = 0;
                                 a = 0;
                                 while(a < eval("aso#30427"))
                                 {
                                    if(eval("aso#70958")[a] == true || eval("aso#70958")[a] == false)
                                    {
                                       if(eval("aso#03687")(eval("aso#00903")[a],eval("aso#82936")[a],eval("aso#32240")._x,eval("aso#32240")._y) < 60)
                                       {
                                          tt++;
                                       }
                                    }
                                    a++;
                                 }
                                 a = 0;
                                 while(a < eval("aso#30427"))
                                 {
                                    if(eval("aso#70958")[a] == true || eval("aso#70958")[a] == false)
                                    {
                                       if(eval("aso#03687")(eval("aso#00903")[a],eval("aso#82936")[a],eval("aso#32240")._x,eval("aso#32240")._y) < 60)
                                       {
                                          eval("aso#57588")[a] += eval("aso#32240")["aso#15665"] * eval("aso#32240")["aso#27643"] / tt;
                                          eval("aso#51599")[a] += eval("aso#32240")["aso#41013"] * eval("aso#32240")["aso#27643"] / tt;
                                          eval("aso#70958")[a] = true;
                                          if(eval("aso#03687")(eval("aso#00903")[a],eval("aso#82936")[a],eval("aso#32240")._x,eval("aso#32240")._y) < 15)
                                          {
                                             eval("aso#92680")(a,30,eval("aso#17057")[a]);
                                          }
                                       }
                                    }
                                    a++;
                                 }
                              }
                              set("aso#83907",1);
                              if(eval("aso#09676") == 0)
                              {
                                 if(my_so.data["aso#48394"] == 2)
                                 {
                                    set("aso#83907",0.5);
                                 }
                                 if(my_so.data["aso#48394"] == 1)
                                 {
                                    set("aso#83907",0.25);
                                 }
                              }
                              if(eval("aso#88925")["aso#39621"].hitTest(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 eval("aso#88925")["aso#35024"] = "aso#39621";
                                 if(eval("aso#32240")["aso#36416"] == 0)
                                 {
                                    if(eval("aso#88925")["aso#69566"] > 0)
                                    {
                                       eval("aso#67332")("Headshot!");
                                       _root.stat_headshots += 1;
                                    }
                                 }
                                 if(eval("aso#88925").opentop)
                                 {
                                    eval("aso#88925")["aso#69566"] -= 200 * eval("aso#32240")["aso#27643"] * eval("aso#83907");
                                 }
                                 else if(eval("aso#88925").w_upg7 == 0)
                                 {
                                    eval("aso#88925")["aso#69566"] -= 70 * eval("aso#32240")["aso#27643"] * eval("aso#83907");
                                 }
                                 else if(eval("aso#88925").w_upg7 == 1)
                                 {
                                    eval("aso#88925")["aso#69566"] -= 40 * eval("aso#32240")["aso#27643"] * eval("aso#83907");
                                 }
                                 else
                                 {
                                    eval("aso#88925")["aso#69566"] -= 70 * eval("aso#32240")["aso#27643"] * eval("aso#83907");
                                 }
                                 type = 2;
                              }
                              else if(eval("aso#88925").body.hitTest(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 eval("aso#88925")["aso#69566"] -= 30 * eval("aso#32240")["aso#27643"] * eval("aso#83907");
                                 eval("aso#88925")["aso#35024"] = "body";
                              }
                              else if(eval("aso#88925").arm1.hitTest(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._y,true) || eval("aso#88925").arm2.hitTest(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 eval("aso#88925")["aso#69566"] -= 35 * eval("aso#32240")["aso#27643"] * eval("aso#83907");
                                 eval("aso#88925")["aso#35024"] = "arm";
                              }
                              else if(eval("aso#88925")["aso#33632"].hitTest(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 if(eval("aso#88925")["aso#14273"] == 2 && eval("aso#88925")["aso#97698"] != 9)
                                 {
                                    eval("aso#88925")["aso#69566"] -= 50 * eval("aso#32240")["aso#27643"] * eval("aso#83907");
                                 }
                                 else
                                 {
                                    eval("aso#88925")["aso#69566"] -= 40 * eval("aso#32240")["aso#27643"] * eval("aso#83907");
                                 }
                                 eval("aso#88925")["aso#35024"] = "leg";
                              }
                              else if(eval("aso#88925")["aso#63577"].hitTest(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._y,true) || eval("aso#88925")["aso#02295"].hitTest(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") + _root["aso#75555"]._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") + _root["aso#75555"]._y,true))
                              {
                                 type = 0;
                              }
                              eval("aso#88925")["aso#45189"] += 10 * eval("aso#32240")["aso#27643"];
                              if(type != 0)
                              {
                                 if(eval("aso#88925")["aso#35024"] == "aso#39621")
                                 {
                                    _root["aso#66361"](eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035"),eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035"),eval("aso#88925")["aso#14273"],"shot_head",eval("aso#32240")["aso#15665"] * eval("aso#32240")["aso#27643"] * 3 * eval("aso#88925").easymove,eval("aso#32240")["aso#41013"] * eval("aso#32240")["aso#27643"] * 3 * eval("aso#88925").easymove);
                                 }
                                 else
                                 {
                                    _root["aso#66361"](eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035"),eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035"),eval("aso#88925")["aso#14273"],"shot",eval("aso#32240")["aso#15665"] * eval("aso#32240")["aso#27643"] * 3 * eval("aso#88925").easymove,eval("aso#32240")["aso#41013"] * eval("aso#32240")["aso#27643"] * 3 * eval("aso#88925").easymove);
                                 }
                                 if(eval("aso#88925").w_upg8 > 2 || eval("aso#88925")["aso#97698"] == 9)
                                 {
                                    type = 3;
                                 }
                                 if(type == 3)
                                 {
                                    _root["aso#52991"](eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035"),eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035"),11);
                                 }
                                 else
                                 {
                                    Blood2(eval("aso#09676"),30,eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035") - eval("aso#88925")._x,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035") - eval("aso#88925")._y);
                                 }
                              }
                              else
                              {
                                 _root["aso#52991"](eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035"),eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035"),11);
                                 eval("aso#52991")(eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * eval("aso#29035"),eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * eval("aso#29035"),type,eval("aso#32240")["aso#15665"] * eval("aso#32240")["aso#27643"] * 3,eval("aso#32240")["aso#41013"] * eval("aso#32240")["aso#27643"] * 3);
                              }
                              if(eval("aso#88925")["aso#69566"] > 0)
                              {
                                 if(type != 0)
                                 {
                                    eval("aso#88925").gotoAndPlay("hurt");
                                 }
                                 if(eval("aso#88925")["aso#64969"] != 3 || _root["aso#75555"]["player" + eval("aso#32240")["aso#36416"]]["aso#64969"] != 3)
                                 {
                                    eval("aso#88925").hunt = eval("aso#32240")["aso#36416"];
                                 }
                                 eval("aso#88925")["aso#91709"] = true;
                              }
                              else if(!eval("aso#88925").dead)
                              {
                                 eval("aso#32240")._x -= eval("aso#32240")["aso#15665"] * eval("aso#29035");
                                 eval("aso#32240")._y -= eval("aso#32240")["aso#41013"] * eval("aso#29035");
                              }
                              if(eval("aso#88925")["aso#64969"] == 1 || _root["aso#75555"]["player" + eval("aso#32240")["aso#36416"]]["aso#64969"] == 1)
                              {
                                 if(eval("aso#88925")["aso#69566"] > 0)
                                 {
                                    set("aso#47002",0);
                                    while(eval("aso#47002") < playerstot)
                                    {
                                       if(eval("aso#09676") != eval("aso#47002") && eval("aso#47002") != eval("aso#32240")["aso#36416"])
                                       {
                                          if(eval("aso#88925")["aso#64969"] == _root["aso#75555"]["player" + eval("aso#47002")]["aso#64969"])
                                          {
                                             if(_root["aso#75555"]["player" + eval("aso#47002")]["aso#69566"] > 0)
                                             {
                                                if(_root["aso#75555"]["player" + eval("aso#47002")]["aso#91709"] == true)
                                                {
                                                   if(Math.abs(eval("aso#88925")._x - _root["aso#75555"]["player" + eval("aso#47002")]._x) < hscreenX)
                                                   {
                                                      if(Math.abs(eval("aso#88925")._y - _root["aso#75555"]["player" + eval("aso#47002")]._y) < hscreenY)
                                                      {
                                                         _root["aso#75555"]["player" + eval("aso#47002")].hunt = eval("aso#32240")["aso#36416"];
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       eval("aso#47002")++;
                                    }
                                 }
                              }
                              if(eval("aso#88925")["aso#69566"] > 0)
                              {
                                 eval("aso#88925")["aso#26251"] += eval("aso#32240")["aso#15665"] * 0.3 * eval("aso#32240")["aso#27643"] * eval("aso#88925").easymove;
                                 eval("aso#88925")["aso#94914"] += eval("aso#32240")["aso#41013"] * 0.3 * eval("aso#32240")["aso#27643"] * eval("aso#88925").easymove;
                              }
                           }
                           else
                           {
                              eval("aso#32240")._visible = false;
                           }
                           if(eval("aso#88925")["aso#69566"] > 0 || eval("aso#88925").dead)
                           {
                              eval("aso#32240")["aso#27643"] -= 0.5 / eval("aso#88925").easymove;
                              if(eval("aso#32240")["aso#27643"] < 0.2)
                              {
                                 eval("aso#32240")._visible = false;
                              }
                           }
                        }
                        eval("aso#29035")--;
                     }
                  }
               }
            }
            eval("aso#09676")++;
         }
         set("aso#21233",eval("aso#32240")._x);
         set("aso#52570",eval("aso#32240")._y);
         set("aso#16636",eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * pspeed);
         set("aso#47973",eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * pspeed);
         set("aso#76947",0);
         while(eval("aso#76947") < eval("aso#07863"))
         {
            if(_root["aso#75555"].colmap["box" + eval("aso#76947")].hitTest(eval("aso#32240")))
            {
               boxx = _root["aso#75555"].colmap["box" + eval("aso#76947")];
               rx = undefined;
               ry = undefined;
               sides = 0;
               while(sides < 4)
               {
                  if(sides == 0)
                  {
                     set("aso#73742",boxx._x);
                     set("aso#05079",boxx._y);
                     set("aso#31819",boxx._x + boxx._xscale);
                     set("aso#63156",boxx._y);
                  }
                  else if(sides == 1)
                  {
                     set("aso#73742",boxx._x + boxx._xscale);
                     set("aso#05079",boxx._y);
                     set("aso#31819",boxx._x + boxx._xscale);
                     set("aso#63156",boxx._y + boxx._yscale);
                  }
                  else if(sides == 2)
                  {
                     set("aso#73742",boxx._x);
                     set("aso#05079",boxx._y);
                     set("aso#31819",boxx._x);
                     set("aso#63156",boxx._y + boxx._yscale);
                  }
                  else if(sides == 3)
                  {
                     set("aso#73742",boxx._x);
                     set("aso#05079",boxx._y + boxx._yscale);
                     set("aso#31819",boxx._x + boxx._xscale);
                     set("aso#63156",boxx._y + boxx._yscale);
                  }
                  v = ((eval("aso#16636") - eval("aso#21233")) * (eval("aso#05079") - eval("aso#52570")) + (eval("aso#47973") - eval("aso#52570")) * (eval("aso#21233") - eval("aso#73742"))) / ((eval("aso#47973") - eval("aso#52570")) * (eval("aso#31819") - eval("aso#73742")) - (eval("aso#16636") - eval("aso#21233")) * (eval("aso#63156") - eval("aso#05079")));
                  retux = eval("aso#73742") + (eval("aso#31819") - eval("aso#73742")) * v;
                  retuy = eval("aso#05079") + (eval("aso#63156") - eval("aso#05079")) * v;
                  if(Math.min(eval("aso#32240")._x,eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * pspeed * 2) - 1 <= retux)
                  {
                     if(Math.max(eval("aso#32240")._x,eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * pspeed * 2) + 1 >= retux)
                     {
                        if(Math.min(eval("aso#32240")._y,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * pspeed * 2) - 1 <= retuy)
                        {
                           if(Math.max(eval("aso#32240")._y,eval("aso#32240")._y - eval("aso#32240")["aso#41013"] * pspeed * 2) | 2 >= retuy)
                           {
                              if(boxx._x - 1 <= retux)
                              {
                                 if(boxx._x + 1 + boxx._xscale >= retux)
                                 {
                                    if(boxx._y - 1 <= retuy)
                                    {
                                       if(boxx._y + 1 + boxx._yscale >= retuy)
                                       {
                                          if(undefined == rx || eval("aso#03687")(rx,ry,eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * pspeed,eval("aso#32240")._y - eval("aso#32240")["aso#15665"] * pspeed) < eval("aso#03687")(retux,retuy,eval("aso#32240")._x - eval("aso#32240")["aso#15665"] * pspeed,eval("aso#32240")._y - eval("aso#32240")["aso#15665"] * pspeed))
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
                  eval("aso#52991")(rx,ry,0);
                  eval("aso#32240")._visible = false;
               }
            }
            eval("aso#76947")++;
         }
         if(eval("aso#32240")._y > 1000)
         {
            eval("aso#52991")(eval("aso#32240")._x,eval("aso#32240")._y,0);
            eval("aso#32240")._visible = false;
         }
         set("aso#76947",0);
         while(eval("aso#76947") < barrelstotal)
         {
            if(_root["aso#75555"]["barrel" + eval("aso#76947")]._currentframe < 4)
            {
               if(_root["aso#75555"]["barrel" + eval("aso#76947")].hitTest(eval("aso#32240")))
               {
                  _root["aso#52991"](eval("aso#32240")._x,eval("aso#32240")._y,11);
                  hur = Math.floor(eval("aso#32240")["aso#27643"] * 2);
                  if(hur < 0)
                  {
                     hur = 0;
                  }
                  if(_root["aso#75555"]["barrel" + eval("aso#76947")]._currentframe + hur > 3)
                  {
                     _root["aso#75555"]["barrel" + eval("aso#76947")].gotoAndPlay(4);
                  }
                  else
                  {
                     _root["aso#75555"]["barrel" + eval("aso#76947")].gotoAndStop(_root["aso#75555"]["barrel" + eval("aso#76947")]._currentframe + hur);
                  }
                  eval("aso#32240")["aso#27643"] -= 0.5;
                  if(eval("aso#32240")["aso#27643"] < 0.2)
                  {
                     eval("aso#32240")._visible = false;
                  }
               }
            }
            eval("aso#76947")++;
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
   if(_root["aso#93101"] == 2)
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
         _root["aso#75555"]._x = Math.round((- _root["aso#75555"].player0.body._x + hscreenX - _xmouse - _root["aso#75555"].player0._x + hscreenX + _root["aso#75555"]._x * 10) / 11);
         _root["aso#75555"]._y = Math.round((- _root["aso#75555"].player0.body._y + hscreenY - _ymouse - _root["aso#75555"].player0._y + hscreenY + _root["aso#75555"]._y * 10) / 11);
         hinttim -= 1;
         if(hinttim < 0)
         {
            _root.hint.text = "";
            hinttim = 100;
         }
         set("aso#79310",eval("aso#79310") - 1);
         if(eval("aso#79310") < -1)
         {
            set("aso#79310",10 + (3 - _root["aso#48394"]) * 10);
         }
         eval("aso#71508")();
         _root["aso#14823"].text = Math.max(Math.ceil(_root["aso#75555"].player0["aso#69566"] / playerhmax * 100),0);
         _root.playergr.text = grenades;
         if(_root["aso#75555"].player0["aso#69566"] > 0)
         {
            if(_root["aso#75555"].player0.hitTest(_root["aso#75555"].end))
            {
               finish();
            }
            if(_root["aso#75555"].player0["aso#69566"] < playerhmax)
            {
               set("aso#76947",0);
               while(eval("aso#76947") < heatotal)
               {
                  if(_root["aso#75555"]["medikit" + eval("aso#76947")]._currentframe == 1)
                  {
                     if(_root["aso#75555"].player0.hitTest(_root["aso#75555"]["medikit" + eval("aso#76947")]))
                     {
                        _root["aso#75555"]["medikit" + eval("aso#76947")].gotoAndPlay(2);
                        _root["aso#75555"].player0["aso#69566"] = Math.min(playerhmax,_root["aso#75555"].player0["aso#69566"] + playerhmax / 4);
                     }
                  }
                  eval("aso#76947")++;
               }
            }
         }
         if(_root["aso#75555"].player0["aso#69566"] <= 0 || _root.loose != 0)
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
         set("aso#06892",0);
         while(eval("aso#06892") < playerstot)
         {
            set("aso#38229",_root["aso#75555"]["player" + eval("aso#06892")]);
            if(eval("aso#38229")["aso#69566"] > 0)
            {
               if(eval("aso#38229")["aso#91709"] == true)
               {
                  set("aso#23046",eval("aso#38229").body._rotation * eval("aso#78339"));
                  set("aso#76526",Math.atan2(eval("aso#38229").body.headbone._y,eval("aso#38229").body.headbone._x) - 1.5707963267948966);
                  set("aso#45610",eval("aso#03687")(eval("aso#38229").body.headbone._x,eval("aso#38229").body.headbone._y,0,0));
                  plx = Math.sin(eval("aso#23046") + eval("aso#76526")) * eval("aso#45610");
                  ply = Math.cos(eval("aso#23046") + eval("aso#76526")) * eval("aso#45610");
                  eval("aso#38229")["aso#39621"]._x = eval("aso#38229").body._x - plx;
                  eval("aso#38229")["aso#39621"]._y = eval("aso#38229").body._y + ply;
                  set("aso#23046",eval("aso#38229").body._rotation * eval("aso#78339"));
                  set("aso#76526",Math.atan2(eval("aso#38229").body.armbone._y,eval("aso#38229").body.armbone._x) - 1.5707963267948966);
                  set("aso#45610",eval("aso#03687")(eval("aso#38229").body.armbone._x,eval("aso#38229").body.armbone._y,0,0));
                  plx = Math.sin(eval("aso#23046") + eval("aso#76526")) * eval("aso#45610");
                  ply = Math.cos(eval("aso#23046") + eval("aso#76526")) * eval("aso#45610");
                  eval("aso#38229").arm1._x = eval("aso#38229").body._x - plx;
                  eval("aso#38229").arm1._y = eval("aso#38229").body._y + ply;
                  eval("aso#38229").arm2._x = eval("aso#38229").body._x - plx + 2;
                  eval("aso#38229").arm2._y = eval("aso#38229").body._y + ply;
                  set("aso#23046",eval("aso#38229").arm2._rotation * eval("aso#78339"));
                  set("aso#76526",Math.atan2(eval("aso#38229").arm2.wea._y,eval("aso#38229").arm2.wea._x) - 1.5707963267948966);
                  set("aso#09676",0);
                  while(eval("aso#09676") < playerstot)
                  {
                     if(eval("aso#06892") != eval("aso#09676"))
                     {
                        set("aso#88925",_root["aso#75555"]["player" + eval("aso#09676")]);
                        if(eval("aso#88925")["aso#69566"] <= 0)
                        {
                           set("aso#89896",eval("aso#88925").center);
                           if(eval("aso#38229").hitTest(eval("aso#00903")[eval("aso#89896")] + _root["aso#75555"]._x,eval("aso#82936")[eval("aso#89896")] + _root["aso#75555"]._y,true))
                           {
                              set("aso#45610",eval("aso#03687")(0,0,eval("aso#57588")[eval("aso#89896")],eval("aso#51599")[eval("aso#89896")]));
                              if(eval("aso#45610") > 5)
                              {
                                 set("aso#79731",(eval("aso#38229")["aso#26251"] + eval("aso#57588")[eval("aso#89896")]) / 2);
                                 set("aso#12460",(eval("aso#38229")["aso#94914"] + eval("aso#51599")[eval("aso#89896")]) / 2);
                                 set("aso#45610",eval("aso#03687")(eval("aso#38229")["aso#26251"],eval("aso#38229")["aso#94914"],eval("aso#57588")[eval("aso#89896")],eval("aso#51599")[eval("aso#89896")]));
                                 if(eval("aso#45610") > 25)
                                 {
                                    eval("aso#38229")["aso#69566"] -= eval("aso#45610") * 2;
                                    if(eval("aso#38229")["aso#69566"] > 0)
                                    {
                                       eval("aso#38229").gotoAndPlay("Hurt");
                                    }
                                 }
                                 eval("aso#38229")["aso#26251"] = eval("aso#79731");
                                 eval("aso#38229")["aso#94914"] = eval("aso#12460");
                                 eval("aso#57588")[eval("aso#89896")] = eval("aso#79731");
                                 eval("aso#51599")[eval("aso#89896")] = eval("aso#12460");
                              }
                           }
                        }
                     }
                     eval("aso#09676")++;
                  }
               }
            }
            if(eval("aso#38229")["aso#91709"] == false)
            {
               if(eval("aso#38229").hitTest(_root.visarea))
               {
                  eval("aso#38229")["aso#91709"] = true;
               }
               else if(eval("aso#38229").hunt == -1)
               {
                  eval("aso#38229")["aso#91709"] = false;
                  eval("aso#38229")._visible = false;
               }
            }
            else
            {
               if(!eval("aso#38229")._visible)
               {
                  eval("aso#38229")._visible = true;
               }
               if(eval("aso#38229").hunt != -1)
               {
                  if(eval("aso#38229").say_vis == undefined)
                  {
                     if(eval("aso#38229")["aso#14273"] == 0 && Math.random() > 0.5)
                     {
                        eval("aso#38229").sou.gotoAndStop(14);
                     }
                     else
                     {
                        eval("aso#38229").sou.gotoAndStop(13);
                     }
                     if(eval("aso#38229").myi == -1)
                     {
                        rn = Math.floor(Math.random() * 3);
                        if(rn == 0)
                        {
                           eval("aso#38229").sou.gotoAndStop(30);
                        }
                        else if(rn == 1)
                        {
                           eval("aso#38229").sou.gotoAndStop(31);
                        }
                        else
                        {
                           eval("aso#38229").sou.gotoAndStop(32);
                        }
                     }
                     eval("aso#38229").say_vis = false;
                  }
               }
            }
            if(eval("aso#38229")["aso#69566"] > 0)
            {
               if(eval("aso#38229")["aso#91709"] == true)
               {
                  if(eval("aso#38229").ranytim == undefined)
                  {
                     eval("aso#38229").ranytim = 0;
                  }
                  else
                  {
                     eval("aso#38229").ranytim += Math.random() * 0.5;
                  }
                  if(eval("aso#38229").rany50 == undefined)
                  {
                     eval("aso#38229").rany50 = Math.random() * 50;
                  }
                  else
                  {
                     eval("aso#38229").rany50 = 25 + Math.sin(eval("aso#38229").ranytim) * 25;
                  }
                  set("aso#09676",0);
                  while(eval("aso#09676") < playerstot)
                  {
                     set("aso#88925",_root["aso#75555"]["player" + eval("aso#09676")]);
                     if(eval("aso#88925")["aso#91709"] == true)
                     {
                        if(eval("aso#88925")["aso#69566"] > 0)
                        {
                           if(eval("aso#06892") != eval("aso#09676"))
                           {
                              if(eval("aso#38229")["aso#64969"] != 0 || eval("aso#88925")["aso#64969"] != 0)
                              {
                                 if(eval("aso#38229")._y > eval("aso#88925")._y - 100)
                                 {
                                    if(eval("aso#38229")._y < eval("aso#88925")._y + 100)
                                    {
                                       if(eval("aso#38229")._x > eval("aso#88925")._x - 40)
                                       {
                                          if(eval("aso#38229")._x < eval("aso#88925")._x + 40)
                                          {
                                             set("aso#79731",(eval("aso#38229")._x + eval("aso#88925")._x) / 2);
                                             if(eval("aso#38229")._x > eval("aso#88925")._x)
                                             {
                                                eval("aso#38229")._x = eval("aso#79731") + 20;
                                                eval("aso#88925")._x = eval("aso#79731") - 20;
                                             }
                                             else
                                             {
                                                eval("aso#38229")._x = eval("aso#79731") - 20;
                                                eval("aso#88925")._x = eval("aso#79731") + 20;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     eval("aso#09676")++;
                  }
                  set("aso#58980",eval("aso#38229")._x + eval("aso#38229")._xscale * 3);
                  set("aso#96306",eval("aso#38229")._y + Math.sin(eval("aso#38229").ranytim * 0.3) * 75);
                  eval("aso#38229")._x += eval("aso#38229")["aso#26251"];
                  eval("aso#38229")._y += eval("aso#38229")["aso#94914"];
                  eval("aso#38229")["aso#94914"] += eval("aso#70537");
                  if(eval("aso#38229")._y > 1000)
                  {
                     eval("aso#38229")["aso#35024"] = "body";
                     eval("aso#38229")["aso#69566"] -= Math.abs(eval("aso#38229")["aso#94914"] * eval("aso#38229")["aso#94914"] * 0.19);
                     if(eval("aso#38229")["aso#69566"] > 0)
                     {
                        eval("aso#38229")["aso#69566"] = 0;
                     }
                     eval("aso#38229").getdown = true;
                     _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 20,eval("aso#38229")["aso#14273"],"fall");
                     _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 20,eval("aso#38229")["aso#14273"],"fall");
                     _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 20,eval("aso#38229")["aso#14273"],"fall");
                     if(eval("aso#38229")["aso#94914"] > 10)
                     {
                        eval("aso#38229")["aso#94914"] = 10;
                     }
                  }
                  if(eval("aso#06892") != 0)
                  {
                     if(eval("aso#38229").hunt != -1)
                     {
                        set("aso#58980",_root["aso#75555"]["player" + eval("aso#38229").hunt]._x);
                        set("aso#96306",_root["aso#75555"]["player" + eval("aso#38229").hunt]._y - 10 - eval("aso#38229").rany50);
                        set("aso#33211",Math.abs(eval("aso#58980") - eval("aso#38229")._x));
                        if(eval("aso#38229")["aso#85720"] == 1)
                        {
                           if(Math.random() > 0.4 || eval("aso#33211") < 200)
                           {
                              set("aso#96306",_root["aso#75555"]["player" + eval("aso#38229").hunt]._y - 70);
                           }
                           else
                           {
                              set("aso#96306",_root["aso#75555"]["player" + eval("aso#38229").hunt]._y - 10 - Math.random() * 50);
                           }
                        }
                        set("aso#33211",eval("aso#03687")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306")));
                        pspx = _root["aso#75555"]["player" + eval("aso#38229").hunt]["aso#26251"] * (eval("aso#33211") / pspeed) * 0.3;
                        pspy = _root["aso#75555"]["player" + eval("aso#38229").hunt]["aso#94914"] * (eval("aso#33211") / pspeed) * 0.3;
                        set("aso#58980",eval("aso#58980") + pspx);
                        set("aso#96306",eval("aso#96306") + pspy);
                        if(!eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306")))
                        {
                           if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980") - pspx,eval("aso#96306") - pspy))
                           {
                              set("aso#58980",eval("aso#58980") - pspx);
                              set("aso#96306",eval("aso#96306") - pspy);
                           }
                           else if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980") - pspx,eval("aso#96306") - pspy + 50))
                           {
                              set("aso#58980",eval("aso#58980") - pspx);
                              set("aso#96306",eval("aso#96306") - pspy);
                              set("aso#96306",eval("aso#96306") + 50);
                           }
                           else if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980") - pspx,eval("aso#96306") - pspy - 50))
                           {
                              set("aso#58980",eval("aso#58980") - pspx);
                              set("aso#96306",eval("aso#96306") - pspy);
                              set("aso#96306",eval("aso#96306") - 50);
                           }
                        }
                        set("aso#76947",0);
                        while(eval("aso#76947") < barrelstotal)
                        {
                           if(_root["aso#75555"]["barrel" + eval("aso#76947")]._currentframe < 4)
                           {
                              if(eval("aso#03687")(_root["aso#75555"]["player" + eval("aso#38229").hunt]._x,_root["aso#75555"]["player" + eval("aso#38229").hunt]._y - 40,_root["aso#75555"]["barrel" + eval("aso#76947")]._x,_root["aso#75555"]["barrel" + eval("aso#76947")]._y) < 100)
                              {
                                 if(eval("aso#03687")(eval("aso#38229")._x,eval("aso#38229")._y - 40,_root["aso#75555"]["barrel" + eval("aso#76947")]._x,_root["aso#75555"]["barrel" + eval("aso#76947")]._y) > 150)
                                 {
                                    if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,_root["aso#75555"]["barrel" + eval("aso#76947")]._x,_root["aso#75555"]["barrel" + eval("aso#76947")]._y))
                                    {
                                       set("aso#58980",_root["aso#75555"]["barrel" + eval("aso#76947")]._x);
                                       set("aso#96306",_root["aso#75555"]["barrel" + eval("aso#76947")]._y);
                                    }
                                 }
                              }
                           }
                           eval("aso#76947")++;
                        }
                        if(_root["aso#75555"]["player" + eval("aso#38229").hunt]["aso#69566"] <= 0)
                        {
                           if(Math.random() > 0.97)
                           {
                              eval("aso#38229").hunt = -1;
                           }
                           else
                           {
                              set("aso#58980",_root["aso#75555"]["player" + eval("aso#38229").hunt].body._x);
                              set("aso#96306",_root["aso#75555"]["player" + eval("aso#38229").hunt].body._y);
                           }
                        }
                     }
                     else if(Math.random() > 0.95 || eval("aso#38229")["aso#85720"] == 1)
                     {
                        ran = 0;
                        while(ran < playerstot)
                        {
                           if(eval("aso#38229").hunt == -1)
                           {
                              if(_root["aso#75555"]["player" + ran]["aso#64969"] != eval("aso#38229")["aso#64969"])
                              {
                                 if(_root["aso#75555"]["player" + ran]["aso#69566"] > 0)
                                 {
                                    if(ran != eval("aso#06892"))
                                    {
                                       if(_root["aso#75555"]["player" + ran]["aso#91709"] == true)
                                       {
                                          if(Math.abs(_root["aso#75555"]["player" + ran]._x - eval("aso#38229")._x) < hscreenX && Math.abs(_root["aso#75555"]["player" + ran]._y - eval("aso#38229")._y) < hscreenY)
                                          {
                                             eval("aso#38229").hunt = ran;
                                          }
                                          else if(eval("aso#13852")(eval("aso#38229")._x,eval("aso#38229")._y + eval("aso#38229")["aso#39621"]._y,_root["aso#75555"]["player" + ran]._x,_root["aso#75555"]["player" + ran]._y))
                                          {
                                             eval("aso#38229").hunt = ran;
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
                     set("aso#58980",_xmouse - _root["aso#75555"]._x);
                     set("aso#96306",_ymouse - _root["aso#75555"]._y);
                  }
                  stand = false;
                  hup = false;
                  cantlift = false;
                  set("aso#76947",0);
                  while(eval("aso#76947") < eval("aso#07863") + barrelstotal)
                  {
                     if(eval("aso#76947") < eval("aso#07863") || eval("aso#76947") >= eval("aso#07863") && _root["aso#75555"]["barrel" + (eval("aso#76947") - eval("aso#07863"))]._currentframe < 4 && _root["aso#75555"]["barrel" + (eval("aso#76947") - eval("aso#07863"))].cols)
                     {
                        if(eval("aso#76947") < eval("aso#07863"))
                        {
                           boxx = _root["aso#75555"].colmap["box" + eval("aso#76947")];
                        }
                        else
                        {
                           boxx = _root["aso#75555"]["barrel" + (eval("aso#76947") - eval("aso#07863"))];
                        }
                        if(eval("aso#76947") < eval("aso#07863"))
                        {
                           minx = boxx._x - 10;
                           maxx = boxx._x + boxx._xscale + 10;
                           miny = boxx._y + eval("aso#38229").sit * eval("aso#64127");
                           maxy = boxx._y + boxx._yscale + 82;
                        }
                        else
                        {
                           minx = boxx._x - 20;
                           maxx = boxx._x + 20;
                           miny = boxx._y - 20 + eval("aso#38229").sit * eval("aso#64127");
                           maxy = boxx._y + 20 + 82;
                        }
                        if(eval("aso#38229")._x > minx && eval("aso#38229")._x < maxx && eval("aso#38229")._y > miny - 10 && eval("aso#38229")._y < maxy - 82)
                        {
                           hup = true;
                        }
                        if(eval("aso#38229").sit != 0)
                        {
                           if(eval("aso#38229")._x > minx && eval("aso#38229")._x < maxx && eval("aso#38229")._y > maxy - 5 && eval("aso#38229")._y < maxy + 5)
                           {
                              cantlift = true;
                           }
                        }
                        if(eval("aso#38229")._x > minx && eval("aso#38229")._x < maxx && eval("aso#38229")._y > miny && eval("aso#38229")._y < maxy)
                        {
                           if(eval("aso#76947") < eval("aso#07863"))
                           {
                              set("aso#73321",(boxx._x + boxx._xscale / 2 - (eval("aso#38229")._x - eval("aso#38229")["aso#26251"])) / (boxx._xscale + 20) * 100);
                              set("aso#53962",(boxx._y + (boxx._yscale + 82) / 2 - (eval("aso#38229")._y - eval("aso#38229")["aso#94914"])) / (boxx._yscale + 82) * 100);
                           }
                           else
                           {
                              set("aso#73321",((minx + maxx) / 2 - (eval("aso#38229")._x - eval("aso#38229")["aso#26251"])) / 40 * 100);
                              set("aso#53962",((miny + maxy) / 2 - (eval("aso#38229")._y - eval("aso#38229")["aso#94914"])) / 61 * 100);
                           }
                           if(eval("aso#38229")._y < miny + 30)
                           {
                              set("aso#73321",1);
                              set("aso#53962",2);
                           }
                           if(Math.abs(eval("aso#73321")) > Math.abs(eval("aso#53962")))
                           {
                              eval("aso#38229")["aso#35024"] = "all";
                              if(Math.abs(eval("aso#38229")["aso#26251"]) > 16)
                              {
                                 _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 80,eval("aso#38229")["aso#14273"],"fall");
                                 _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 80,eval("aso#38229")["aso#14273"],"fall");
                                 _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 80,eval("aso#38229")["aso#14273"],"fall");
                                 eval("aso#38229")["aso#69566"] -= Math.abs(eval("aso#38229")["aso#26251"] * eval("aso#38229")["aso#26251"] * 0.22);
                                 eval("aso#38229").gotoAndPlay("hurt");
                              }
                              if(eval("aso#38229")["aso#69566"] > 0)
                              {
                                 if(Math.abs(eval("aso#38229")["aso#26251"]) < 6)
                                 {
                                    eval("aso#38229")["aso#26251"] = 0;
                                 }
                                 else
                                 {
                                    eval("aso#38229")["aso#94914"] *= 0.5;
                                    eval("aso#38229")["aso#26251"] *= 0.5;
                                 }
                                 if(eval("aso#73321") < 0)
                                 {
                                    eval("aso#38229")._x = maxx + 1;
                                    eval("aso#38229")["aso#26251"] = Math.abs(eval("aso#38229")["aso#26251"]) + 0.1;
                                 }
                                 else
                                 {
                                    eval("aso#38229")._x = minx - 1;
                                    eval("aso#38229")["aso#26251"] = - Math.abs(eval("aso#38229")["aso#26251"]) - 0.1;
                                 }
                              }
                           }
                           else
                           {
                              if(eval("aso#53962") < 0)
                              {
                                 eval("aso#38229")["aso#35024"] = "all";
                              }
                              else
                              {
                                 eval("aso#38229")["aso#35024"] = "body";
                              }
                              if(Math.abs(eval("aso#38229")["aso#94914"]) > 15)
                              {
                                 eval("aso#38229").falltim = 10;
                              }
                              if(Math.abs(eval("aso#38229")["aso#94914"]) > 23)
                              {
                                 _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 80,eval("aso#38229")["aso#14273"],"fall");
                                 _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 80,eval("aso#38229")["aso#14273"],"fall");
                                 _root["aso#66361"](eval("aso#38229")._x - 20 + Math.random() * 40,eval("aso#38229")._y - Math.random() * 80,eval("aso#38229")["aso#14273"],"fall");
                                 eval("aso#38229")["aso#69566"] -= Math.abs(eval("aso#38229")["aso#94914"] * eval("aso#38229")["aso#94914"] * 0.19);
                                 eval("aso#38229").gotoAndPlay("hurt");
                                 eval("aso#38229")["aso#35024"] = "body";
                              }
                              if(eval("aso#38229")["aso#69566"] > 0)
                              {
                                 eval("aso#38229")["aso#26251"] *= 0.5;
                                 if(eval("aso#53962") < 0)
                                 {
                                    eval("aso#38229")["aso#94914"] *= -0.5;
                                    cantlift = true;
                                    eval("aso#38229")._y = maxy + 2;
                                 }
                                 else
                                 {
                                    eval("aso#38229")["aso#94914"] = 0;
                                    stand = true;
                                    eval("aso#38229")._y = miny;
                                 }
                              }
                           }
                        }
                     }
                     eval("aso#76947")++;
                  }
                  walkok = false;
                  if(eval("aso#79310") < 0)
                  {
                     eval("aso#38229").botaction = -1;
                     if(eval("aso#06892") != 0 && eval("aso#38229").hunt != -1)
                     {
                        if(eval("aso#03687")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306")) < 600)
                        {
                           if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306")))
                           {
                              eval("aso#38229").botaction = 0;
                           }
                        }
                     }
                  }
                  if(eval("aso#79310") < 0)
                  {
                     if(eval("aso#06892") != 0 && eval("aso#38229").hunt != -1)
                     {
                        if(eval("aso#38229").botaction != 0)
                        {
                           if(eval("aso#13852")(200 + eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306")))
                           {
                              eval("aso#38229").botaction = 1;
                           }
                        }
                        if(eval("aso#38229").botaction != 0)
                        {
                           if(eval("aso#13852")(-200 + eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306")))
                           {
                              eval("aso#38229").botaction = 2;
                           }
                        }
                        if(eval("aso#38229")["aso#14273"] != 2)
                        {
                           if(eval("aso#38229").botaction == -1)
                           {
                              if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y - 60,eval("aso#58980"),eval("aso#96306")))
                              {
                                 eval("aso#38229").botaction = 3;
                              }
                           }
                        }
                        else if(eval("aso#38229").botaction == -1)
                        {
                           if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y - 150,eval("aso#58980"),eval("aso#96306")))
                           {
                              eval("aso#38229").botaction = 3;
                           }
                        }
                        if(eval("aso#38229").botaction != 0)
                        {
                           if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,60 + eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306")))
                           {
                              eval("aso#38229").botaction = 4;
                           }
                        }
                        pl = 0;
                        while(pl < pulsmax)
                        {
                           if(_root["aso#75555"]["pl" + pl]._visible == true)
                           {
                              set("aso#32240",_root["aso#75555"]["pl" + pl]);
                              if(_root["aso#75555"]["player" + eval("aso#32240")["aso#36416"]]["aso#64969"] != eval("aso#38229")["aso#64969"] || eval("aso#38229").hunt == eval("aso#32240")["aso#36416"])
                              {
                                 if(eval("aso#32240")._x > eval("aso#38229")._x - 20 - Math.abs(eval("aso#32240")["aso#15665"] * pspeed * 20))
                                 {
                                    if(eval("aso#32240")._x < eval("aso#38229")._x + 20 + Math.abs(eval("aso#32240")["aso#15665"] * pspeed * 20))
                                    {
                                       if(eval("aso#32240")._y > eval("aso#38229")._y - 90 - Math.abs(eval("aso#32240")["aso#41013"] * pspeed * 20))
                                       {
                                          if(eval("aso#32240")._y < eval("aso#38229")._y + 90 + Math.abs(eval("aso#32240")["aso#41013"] * pspeed * 20))
                                          {
                                             set("aso#21233",eval("aso#32240")._x);
                                             set("aso#52570",eval("aso#32240")._y);
                                             set("aso#16636",eval("aso#32240")._x + eval("aso#32240")["aso#15665"]);
                                             set("aso#47973",eval("aso#32240")._y + eval("aso#32240")["aso#41013"]);
                                             if(Math.abs(eval("aso#32240")["aso#15665"]) > Math.abs(eval("aso#32240")["aso#41013"]))
                                             {
                                                set("aso#73742",eval("aso#38229")._x);
                                                set("aso#05079",eval("aso#38229")._y);
                                                set("aso#31819",eval("aso#38229")._x);
                                                set("aso#63156",eval("aso#38229")._y - 83);
                                                v = ((eval("aso#16636") - eval("aso#21233")) * (eval("aso#05079") - eval("aso#52570")) + (eval("aso#47973") - eval("aso#52570")) * (eval("aso#21233") - eval("aso#73742"))) / ((eval("aso#47973") - eval("aso#52570")) * (eval("aso#31819") - eval("aso#73742")) - (eval("aso#16636") - eval("aso#21233")) * (eval("aso#63156") - eval("aso#05079")));
                                                retux = eval("aso#73742") + (eval("aso#31819") - eval("aso#73742")) * v;
                                                retuy = eval("aso#05079") + (eval("aso#63156") - eval("aso#05079")) * v;
                                                if((retux >= eval("aso#73742") || retux >= eval("aso#31819")) && (retux <= eval("aso#73742") || retux <= eval("aso#31819")))
                                                {
                                                   if((retuy >= eval("aso#05079") || retuy >= eval("aso#63156")) && (retuy <= eval("aso#05079") || retuy <= eval("aso#63156")))
                                                   {
                                                      if(retuy < (eval("aso#05079") + eval("aso#63156")) / 2)
                                                      {
                                                         eval("aso#38229").botaction = 4;
                                                      }
                                                      else
                                                      {
                                                         eval("aso#38229").botaction = 3;
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                set("aso#73742",eval("aso#38229")._x - 30);
                                                set("aso#05079",eval("aso#38229")._y - 40);
                                                set("aso#31819",eval("aso#38229")._x + 30);
                                                set("aso#63156",eval("aso#38229")._y - 40);
                                                v = ((eval("aso#16636") - eval("aso#21233")) * (eval("aso#05079") - eval("aso#52570")) + (eval("aso#47973") - eval("aso#52570")) * (eval("aso#21233") - eval("aso#73742"))) / ((eval("aso#47973") - eval("aso#52570")) * (eval("aso#31819") - eval("aso#73742")) - (eval("aso#16636") - eval("aso#21233")) * (eval("aso#63156") - eval("aso#05079")));
                                                retux = eval("aso#73742") + (eval("aso#31819") - eval("aso#73742")) * v;
                                                retuy = eval("aso#05079") + (eval("aso#63156") - eval("aso#05079")) * v;
                                                if((retux >= eval("aso#73742") || retux >= eval("aso#31819")) && (retux <= eval("aso#73742") || retux <= eval("aso#31819")))
                                                {
                                                   if((retuy >= eval("aso#05079") || retuy >= eval("aso#63156")) && (retuy <= eval("aso#05079") || retuy <= eval("aso#63156")))
                                                   {
                                                      if(retux < (eval("aso#73742") + eval("aso#31819")) / 2)
                                                      {
                                                         eval("aso#38229").botaction = 1;
                                                      }
                                                      else
                                                      {
                                                         eval("aso#38229").botaction = 2;
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
                        if(eval("aso#38229").botaction == 0 || eval("aso#38229").botaction == -1)
                        {
                           if(Math.random() > 0.8 && my_so.data["aso#48394"] == 2 || Math.random() > 0.5 && my_so.data["aso#48394"] == 3)
                           {
                              eval("aso#38229").botaction = 1 + Math.floor(Math.random() * 4);
                           }
                        }
                        if(eval("aso#38229").botaction == 1 || eval("aso#38229").botaction == 2)
                        {
                           if(eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100 + (1.5 - eval("aso#38229").botaction) * 200,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100 + (1.5 - eval("aso#38229").botaction) * 200,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y + 400))
                           {
                              eval("aso#38229").botaction = 4;
                           }
                        }
                     }
                  }
                  if(stand)
                  {
                     gotone = true;
                     if(eval("aso#06892") == 0)
                     {
                        set("aso#09676",0);
                        while(eval("aso#09676") < playerstot)
                        {
                           set("aso#88925",_root["aso#75555"]["player" + eval("aso#09676")]);
                           if(eval("aso#88925").dead)
                           {
                              if(eval("aso#88925")["aso#63577"]._visible == true)
                              {
                                 if(eval("aso#38229").hitTest(eval("aso#88925")["aso#63577"]))
                                 {
                                    if(_root["aso#75555"].player0["w_upg" + eval("aso#88925")["aso#63577"]._currentframe] < eval("aso#88925")["w_upg" + eval("aso#88925")["aso#63577"]._currentframe])
                                    {
                                       _root.gun_pickup.gotoAndStop(eval("aso#88925")["aso#63577"]._currentframe + 1);
                                       _root["aso#75555"].player0["w_upg" + eval("aso#88925")["aso#63577"]._currentframe] = eval("aso#88925")["w_upg" + eval("aso#88925")["aso#63577"]._currentframe];
                                       eval("aso#88925")["aso#63577"]._visible = false;
                                       eval("aso#88925")["aso#02295"]._visible = false;
                                       if(eval("aso#88925")["aso#63577"]._currentframe <= 6)
                                       {
                                          if(_root["aso#75555"].player0["aso#63577"]._currentframe < eval("aso#88925")["aso#63577"]._currentframe)
                                          {
                                             _root["aso#75555"].player0["aso#63577"].gotoAndStop(eval("aso#88925")["aso#63577"]._currentframe);
                                          }
                                          if(_root["aso#75555"].player0["aso#63577"]._currentframe == eval("aso#88925")["aso#63577"]._currentframe)
                                          {
                                             _root["aso#75555"].player0["aso#63577"].gotoAndStop(7);
                                             _root["aso#75555"].player0["aso#63577"].gotoAndStop(eval("aso#88925")["aso#63577"]._currentframe);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(Key.isDown(69))
                           {
                              if(gotone && eval("aso#06892") != eval("aso#09676"))
                              {
                                 if(eval("aso#88925").dead)
                                 {
                                    if(eval("aso#70958")[eval("aso#88925")["aso#46581"]] == true || eval("aso#70958")[eval("aso#88925")["aso#46581"]] == false)
                                    {
                                       set("aso#79731",eval("aso#38229")._x + eval("aso#38229")._xscale / 100 * eval("aso#38229")["aso#63577"]._x);
                                       set("aso#12460",eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y);
                                       set("aso#24017",eval("aso#03687")(eval("aso#00903")[eval("aso#88925").a_stand1],eval("aso#82936")[eval("aso#88925").a_stand1],eval("aso#79731"),eval("aso#12460")));
                                       set("aso#37387",eval("aso#03687")(eval("aso#00903")[eval("aso#88925")["aso#25409"]],eval("aso#82936")[eval("aso#88925")["aso#25409"]],eval("aso#79731"),eval("aso#12460")));
                                       if(eval("aso#24017") < 100 || eval("aso#37387") < 100)
                                       {
                                          eval("aso#88925").deadtime = 0;
                                          gotone = false;
                                          point = eval("aso#88925").a_stand1;
                                          point2 = eval("aso#88925")["aso#25409"];
                                          set("aso#79731",eval("aso#38229")._x + eval("aso#38229")._xscale / 100 * eval("aso#38229")["aso#63577"]._x);
                                          set("aso#12460",eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y);
                                          if(eval("aso#37387") < 100 && eval("aso#24017") >= 100 || eval("aso#37387") < 100 && eval("aso#24017") < 100 && eval("aso#37387") < eval("aso#24017"))
                                          {
                                             eval("aso#57588")[point2] -= (eval("aso#00903")[point2] - eval("aso#79731")) * 0.2;
                                             eval("aso#51599")[point2] -= (eval("aso#82936")[point2] - eval("aso#12460")) * 0.2;
                                             eval("aso#38229")["aso#26251"] += (eval("aso#00903")[point2] - eval("aso#79731")) * 0.05;
                                             eval("aso#38229")["aso#94914"] += (eval("aso#82936")[point2] - eval("aso#12460")) * 0.05;
                                             eval("aso#70958")[point2] = true;
                                          }
                                          else if(eval("aso#24017") < 100)
                                          {
                                             eval("aso#57588")[point] -= (eval("aso#00903")[point] - eval("aso#79731")) * 0.3;
                                             eval("aso#51599")[point] -= (eval("aso#82936")[point] - eval("aso#12460")) * 0.3;
                                             eval("aso#38229")["aso#26251"] += (eval("aso#00903")[point] - eval("aso#79731")) * 0.05;
                                             eval("aso#38229")["aso#94914"] += (eval("aso#82936")[point] - eval("aso#12460")) * 0.05;
                                             eval("aso#70958")[point] = true;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           eval("aso#09676")++;
                        }
                     }
                     if((Key.isDown(65) || Key.isDown(37)) && eval("aso#06892") == 0 || eval("aso#38229").botaction == 2)
                     {
                        eval("aso#38229")["aso#26251"] -= 4 / (eval("aso#38229").sit + 1);
                        if(eval("aso#38229")["aso#33632"]._currentframe <= 60 && (eval("aso#38229")["aso#33632"]._currentframe < 30 || eval("aso#38229")["aso#33632"]._currentframe > 50))
                        {
                           eval("aso#38229")["aso#33632"].gotoAndPlay("walk");
                        }
                     }
                     if((Key.isDown(68) || Key.isDown(39)) && eval("aso#06892") == 0 || eval("aso#38229").botaction == 1)
                     {
                        eval("aso#38229")["aso#26251"] += 4 / (eval("aso#38229").sit + 1);
                        if(eval("aso#38229")["aso#33632"]._currentframe <= 60 && (eval("aso#38229")["aso#33632"]._currentframe < 30 || eval("aso#38229")["aso#33632"]._currentframe > 50))
                        {
                           eval("aso#38229")["aso#33632"].gotoAndPlay("walk");
                        }
                     }
                     if((Key.isDown(32) || Key.isDown(87) || Key.isDown(38)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && eval("aso#38229").botaction == 3)
                     {
                        eval("aso#38229")["aso#94914"] -= 5 + eval("aso#70537") * 4;
                     }
                  }
                  if(!stand)
                  {
                     if((Key.isDown(65) || Key.isDown(37)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && eval("aso#38229").botaction == 2)
                     {
                        eval("aso#38229")["aso#26251"] -= 0.1;
                     }
                     if((Key.isDown(68) || Key.isDown(39)) && eval("aso#06892") == 0 || eval("aso#06892") != 0 && eval("aso#38229").botaction == 1)
                     {
                        eval("aso#38229")["aso#26251"] += 0.1;
                     }
                     if(eval("aso#06892") != 0 && eval("aso#38229")["aso#14273"] == 2)
                     {
                        if(eval("aso#38229").botaction == 3)
                        {
                           if(eval("aso#38229").jet != true)
                           {
                              eval("aso#38229").body.jet.gotoAndPlay("jet_on");
                           }
                           eval("aso#38229").jet = true;
                        }
                        else if(eval("aso#38229")._y < eval("aso#96306") - 150)
                        {
                           if(eval("aso#38229").jet != false)
                           {
                              eval("aso#38229").body.jet.gotoAndPlay("jet_off");
                           }
                           eval("aso#38229").jet = false;
                        }
                     }
                  }
                  if(eval("aso#38229").botaction == 4 || (eval("aso#38229").botaction == -1 || eval("aso#38229").botaction == 0) && eval("aso#38229")["aso#69566"] < 80 && eval("aso#38229")["aso#69566"] > 30)
                  {
                     walkok = true;
                  }
                  if(eval("aso#06892") != 0 && eval("aso#38229")["aso#14273"] == 2)
                  {
                     if(eval("aso#38229").jet)
                     {
                        eval("aso#38229")["aso#94914"] *= 0.9;
                        eval("aso#38229")["aso#26251"] *= 0.9;
                        eval("aso#38229")["aso#94914"] -= eval("aso#70537") * 1.4;
                     }
                  }
                  if(eval("aso#06892") != 0)
                  {
                     eval("aso#38229").mtarx = eval("aso#58980");
                     eval("aso#38229").mtary = eval("aso#96306");
                     if(eval("aso#38229").ltarx == undefined)
                     {
                        eval("aso#38229").ltarx = eval("aso#58980");
                        eval("aso#38229").ltary = eval("aso#96306");
                     }
                     if(my_so.data["aso#48394"] == 1)
                     {
                        set("aso#58980",(eval("aso#38229").ltarx * 10 + eval("aso#58980")) / 11);
                        set("aso#96306",(eval("aso#38229").ltary * 10 + eval("aso#96306")) / 11);
                     }
                     else if(my_so.data["aso#48394"] == 2)
                     {
                        set("aso#58980",(eval("aso#38229").ltarx * 4 + eval("aso#58980")) / 5);
                        set("aso#96306",(eval("aso#38229").ltary * 4 + eval("aso#96306")) / 5);
                     }
                     else
                     {
                        set("aso#58980",(eval("aso#38229").ltarx * 4 + eval("aso#58980")) / 5);
                        set("aso#96306",(eval("aso#38229").ltary * 4 + eval("aso#96306")) / 5);
                     }
                     eval("aso#38229").ltarx = eval("aso#58980");
                     eval("aso#38229").ltary = eval("aso#96306");
                  }
                  if((Key.isDown(13) || Key.isDown(71) || Key.isDown(45) || Key.isDown(96) || Key.isDown(81)) && eval("aso#06892") == 0)
                  {
                     if(grenadetim <= 0)
                     {
                        if(grenades > 0)
                        {
                           if(eval("aso#38229")._currentframe < 21 || eval("aso#38229")._currentframe > 25)
                           {
                              grenadetim = 20;
                              grenades -= 1;
                              eval("aso#38229").gotoAndPlay("fire");
                              rn = Math.random();
                              duplicateMovieClip(_root["aso#75555"].grenad,"aso#64548" + eval("aso#55775"),16384 + (400 + eval("aso#55775")));
                              set("aso#23046",Math.atan2(eval("aso#58980") - eval("aso#38229")._x,eval("aso#96306") - eval("aso#38229")._y));
                              _root["aso#75555"]["aso#64548" + eval("aso#55775")]._x = eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100;
                              _root["aso#75555"]["aso#64548" + eval("aso#55775")]._y = eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y;
                              _root["aso#75555"]["aso#64548" + eval("aso#55775")]["aso#26251"] = Math.sin(eval("aso#23046")) * 15 + eval("aso#38229")["aso#26251"];
                              _root["aso#75555"]["aso#64548" + eval("aso#55775")]["aso#94914"] = Math.cos(eval("aso#23046")) * 15 + eval("aso#38229")["aso#94914"];
                              set("aso#55775",eval("aso#55775") + 1);
                           }
                        }
                     }
                  }
                  if(eval("aso#38229").falltim > 0)
                  {
                     eval("aso#38229").falltim -= 1;
                  }
                  tosit = 0;
                  if((Key.isDown(16) || Key.isDown(83) || Key.isDown(40)) && eval("aso#06892") == 0 || eval("aso#38229").falltim > 0 || walkok && eval("aso#06892") != 0 || !hup)
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
                  if(eval("aso#38229")["aso#67753"] > 30)
                  {
                     tosit = 1;
                  }
                  eval("aso#38229").sit += tosit;
                  if(eval("aso#38229").sit > 2)
                  {
                     eval("aso#38229").sit = 2;
                  }
                  if(eval("aso#38229").sit < 0)
                  {
                     eval("aso#38229").sit = 0;
                  }
                  if(eval("aso#38229").sit == 1 && tosit == 1)
                  {
                     eval("aso#38229")["aso#33632"].gotoAndPlay("sitdown");
                  }
                  if(eval("aso#38229").sit == 1 && tosit == -1)
                  {
                     eval("aso#38229")["aso#33632"].gotoAndPlay("situp");
                  }
                  set("aso#99090",- Math.atan2(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100 - eval("aso#58980"),eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y - eval("aso#96306")) - 1.5707963267948966);
                  if(eval("aso#03687")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306")) < 80)
                  {
                     set("aso#99090",- Math.atan2(eval("aso#38229")._x + eval("aso#38229").arm1._x * eval("aso#38229")._xscale / 100 - eval("aso#58980"),eval("aso#38229")._y + eval("aso#38229").arm1._y - eval("aso#96306")) - 1.5707963267948966);
                  }
                  set("aso#99090",eval("aso#99090") + (Math.random() * eval("aso#38229")["aso#45189"] * 2 - eval("aso#38229")["aso#45189"]) * 0.01);
                  set("aso#23046",eval("aso#99090") / 3.141592653589793 * 180);
                  TEMP = eval("aso#99090");
                  if(eval("aso#38229")._x < eval("aso#58980"))
                  {
                     eval("aso#38229")._xscale = 100;
                  }
                  else
                  {
                     eval("aso#38229")._xscale = -100;
                     set("aso#23046",- eval("aso#23046") + 180);
                  }
                  if(eval("aso#06892") == 0)
                  {
                     _root["aso#77497"].gotoAndStop(eval("aso#38229")["aso#63577"]._currentframe);
                  }
                  eval("aso#38229")["aso#63577"]._rotation = eval("aso#23046");
                  if(eval("aso#38229")["aso#02295"]._visible == true)
                  {
                     set("aso#06050",- Math.atan2(eval("aso#38229")._x + eval("aso#38229")["aso#02295"]._x * eval("aso#38229")._xscale / 100 - eval("aso#58980"),eval("aso#38229")._y + eval("aso#38229")["aso#02295"]._y - eval("aso#96306")) - 1.5707963267948966);
                     if(eval("aso#03687")(eval("aso#38229")._x + eval("aso#38229")["aso#02295"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#02295"]._y,eval("aso#58980"),eval("aso#96306")) < 80)
                     {
                        set("aso#06050",- Math.atan2(eval("aso#38229")._x + eval("aso#38229").arm2._x * eval("aso#38229")._xscale / 100 - eval("aso#58980"),eval("aso#38229")._y + eval("aso#38229").arm2._y - eval("aso#96306")) - 1.5707963267948966);
                     }
                     set("aso#06050",eval("aso#06050") + (Math.random() * eval("aso#38229")["aso#45189"] * 2 - eval("aso#38229")["aso#45189"]) * 0.01);
                     set("aso#76105",eval("aso#06050") / 3.141592653589793 * 180);
                     if(eval("aso#38229")._x < eval("aso#58980"))
                     {
                        eval("aso#38229")._xscale = 100;
                     }
                     else
                     {
                        eval("aso#38229")._xscale = -100;
                        set("aso#76105",- eval("aso#76105") + 180);
                     }
                     eval("aso#38229")["aso#02295"]._rotation = eval("aso#76105");
                  }
                  if(eval("aso#38229")._xscale > 0)
                  {
                     set("aso#81123",eval("aso#23046") / 2 - 90);
                  }
                  else
                  {
                     set("aso#81123",eval("aso#23046") / 2 + 90);
                  }
                  if(eval("aso#38229")["aso#45189"] > 0.1 || eval("aso#38229")["aso#45189"] < -0.1)
                  {
                     eval("aso#38229")["aso#45189"] *= 0.9;
                  }
                  else
                  {
                     eval("aso#38229")["aso#45189"] = 0;
                  }
                  if(eval("aso#38229")._xscale > 0)
                  {
                     if(eval("aso#81123") < -135 && eval("aso#81123") >= -180)
                     {
                        set("aso#81123",-135);
                     }
                     if(eval("aso#81123") > -45 || eval("aso#81123") < -180)
                     {
                        set("aso#81123",-45);
                     }
                  }
                  else
                  {
                     if(eval("aso#81123") > 315 || eval("aso#81123") < 180)
                     {
                        set("aso#81123",315);
                     }
                     if(eval("aso#81123") < 225)
                     {
                        set("aso#81123",225);
                     }
                  }
                  if(eval("aso#38229")["aso#08834"] == 0)
                  {
                     eval("aso#38229").arm1._rotation = eval("aso#81123") + 21 - eval("aso#38229")["aso#67753"] * 0.8;
                     eval("aso#38229").arm2._rotation = eval("aso#81123") + 21 + 2 + eval("aso#38229")["aso#67753"] * 0.3;
                     eval("aso#38229")["aso#39621"]._rotation = eval("aso#81123") + 90 + eval("aso#38229")["aso#67753"];
                     eval("aso#38229")["aso#13431"]._rotation -= eval("aso#38229")["aso#67753"] * 0.8;
                     if(eval("aso#38229")["aso#02295"]._visible == true)
                     {
                        eval("aso#38229")["aso#02295"]._rotation += eval("aso#38229")["aso#67753"] * 0.3;
                     }
                  }
                  else
                  {
                     eval("aso#38229").arm1._rotation = eval("aso#81123") + 21 + eval("aso#38229")["aso#67753"] * 0.8;
                     eval("aso#38229").arm2._rotation = eval("aso#81123") + 21 + 2 + eval("aso#38229")["aso#67753"] * 0.5;
                     eval("aso#38229")["aso#39621"]._rotation = eval("aso#81123") + 90 - eval("aso#38229")["aso#67753"];
                     eval("aso#38229")["aso#13431"]._rotation += eval("aso#38229")["aso#67753"] * 0.8;
                     if(eval("aso#38229")["aso#02295"]._visible == true)
                     {
                        eval("aso#38229")["aso#02295"]._rotation += eval("aso#38229")["aso#67753"] * 0.5;
                     }
                  }
                  set("aso#23046",eval("aso#38229").arm1._rotation * eval("aso#78339"));
                  set("aso#76526",Math.atan2(eval("aso#38229").arm1.wea._y,eval("aso#38229").arm1.wea._x) - 1.5707963267948966);
                  set("aso#45610",eval("aso#03687")(eval("aso#38229").arm1.wea._x,eval("aso#38229").arm1.wea._y,0,0));
                  plx = Math.sin(eval("aso#23046") + eval("aso#76526")) * eval("aso#45610");
                  ply = Math.cos(eval("aso#23046") + eval("aso#76526")) * eval("aso#45610");
                  eval("aso#38229")["aso#63577"]._x = eval("aso#38229").arm1._x - plx;
                  eval("aso#38229")["aso#63577"]._y = eval("aso#38229").arm1._y + ply;
                  if(eval("aso#38229")["aso#02295"]._visible == true)
                  {
                     set("aso#23046",eval("aso#38229").arm2._rotation * eval("aso#78339"));
                     set("aso#76526",Math.atan2(eval("aso#38229").arm2.wea._y,eval("aso#38229").arm2.wea._x) - 1.5707963267948966);
                     set("aso#45610",eval("aso#03687")(eval("aso#38229").arm2.wea._x,eval("aso#38229").arm2.wea._y,0,0));
                     plx = Math.sin(eval("aso#23046") + eval("aso#76526")) * eval("aso#45610");
                     ply = Math.cos(eval("aso#23046") + eval("aso#76526")) * eval("aso#45610");
                     eval("aso#38229")["aso#02295"]._x = eval("aso#38229").arm2._x - plx + 2;
                     eval("aso#38229")["aso#02295"]._y = eval("aso#38229").arm2._y + ply - 1;
                  }
                  if(eval("aso#79310") < 0)
                  {
                     eval("aso#38229").lastvis = eval("aso#13852")(eval("aso#38229")._x + eval("aso#38229")["aso#63577"]._x * eval("aso#38229")._xscale / 100,eval("aso#38229")._y + eval("aso#38229")["aso#63577"]._y,eval("aso#58980"),eval("aso#96306"));
                  }
                  if(eval("aso#38229").lhunt != eval("aso#38229").hunt)
                  {
                     eval("aso#38229").lhunt = eval("aso#38229").hunt;
                     eval("aso#38229")["aso#62735"] = 0;
                  }
                  else
                  {
                     eval("aso#38229")["aso#62735"]++;
                  }
                  if(fire && eval("aso#06892") == 0 || eval("aso#06892") != 0 && eval("aso#38229").hunt != -1 && eval("aso#03687")(eval("aso#38229").mtarx,eval("aso#38229").mtary,eval("aso#58980"),eval("aso#96306")) < 300)
                  {
                     if(eval("aso#06892") == 0 || eval("aso#06892") != 0 && eval("aso#38229")["aso#62735"] > 1 && (Math.random() > 0.95 || Math.random() > 0.7 && eval("aso#38229")["aso#85720"] == 1) && eval("aso#38229").lastvis && (Math.abs(eval("aso#58980") - eval("aso#38229")._x) < screenX || eval("aso#38229")["aso#85720"] == 1 && Math.abs(eval("aso#58980") - eval("aso#38229")._x) < screenX))
                     {
                        if(eval("aso#38229")._currentframe < 21 || eval("aso#38229")._currentframe > 25)
                        {
                           SHOT();
                        }
                     }
                  }
               }
            }
            if(eval("aso#38229")["aso#69566"] <= 0)
            {
               if(eval("aso#38229").dead == false)
               {
                  eval("aso#38229").dead = true;
                  eval("aso#34182")(eval("aso#06892"));
               }
               else
               {
                  if(eval("aso#38229").jet)
                  {
                     eval("aso#57588")[eval("aso#38229")["aso#46581"]] -= (eval("aso#00903")[eval("aso#38229")["aso#56746"]] - eval("aso#00903")[eval("aso#38229")["aso#46581"]]) * 0.3;
                     eval("aso#51599")[eval("aso#38229")["aso#46581"]] -= (eval("aso#82936")[eval("aso#38229")["aso#56746"]] - eval("aso#82936")[eval("aso#38229")["aso#46581"]]) * 0.3;
                     eval("aso#70958")[eval("aso#38229")["aso#46581"]] = true;
                     eval("aso#38229")["aso#69566"] -= 1;
                     if(eval("aso#38229")["aso#69566"] < -500)
                     {
                        eval("aso#38229").jet = false;
                        eval("aso#38229").body.jet.gotoAndPlay("jet_off");
                     }
                  }
                  if(_root["aso#01874"] < 3 && eval("aso#06892") != 0)
                  {
                     eval("aso#38229").deadtime += 1;
                     if(eval("aso#38229").deadtime > 200 && _root["aso#01874"] == 2 || eval("aso#38229").deadtime > 70 && _root["aso#01874"] == 1)
                     {
                        if(eval("aso#38229")._alpha > 0)
                        {
                           eval("aso#38229")._alpha -= 10;
                        }
                        else
                        {
                           eval("aso#38229")._visible = false;
                           eval("aso#38229")["aso#91709"] = false;
                           eval("aso#70958")[eval("aso#38229")["aso#56746"]] = 2;
                           eval("aso#38229").unloadMovie();
                        }
                     }
                  }
               }
            }
            if(eval("aso#38229")["aso#91709"] == true)
            {
               if(eval("aso#38229")["aso#69566"] > 0)
               {
                  eval("aso#38229")["aso#67753"] += eval("aso#38229").lhea - eval("aso#38229")["aso#69566"];
                  if(eval("aso#38229").lhea != eval("aso#38229")["aso#69566"])
                  {
                     eval("aso#38229")["aso#91288"] = 0;
                  }
                  else
                  {
                     eval("aso#38229")["aso#67753"] -= eval("aso#38229")["aso#91288"];
                     eval("aso#38229")["aso#91288"] += 5;
                     if(eval("aso#38229")["aso#91288"] > 15)
                     {
                        eval("aso#38229")["aso#91288"] = 15;
                     }
                  }
                  if(eval("aso#38229")["aso#67753"] > 45)
                  {
                     eval("aso#38229")["aso#67753"] = 45;
                  }
                  if(eval("aso#38229")["aso#67753"] < 0)
                  {
                     eval("aso#38229")["aso#67753"] = 0;
                     eval("aso#38229")["aso#08834"] = Math.round(Math.random());
                  }
                  eval("aso#38229")["aso#33632"].upper1.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"].upper2.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"].lower1.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"].lower2.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"].middle1.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"].middle2.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"].toe.gotoAndStop(eval("aso#38229")["aso#97698"]);
               }
               else
               {
                  eval("aso#38229")["aso#33632"]["aso#57167"].upper.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"]["aso#88504"].upper.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"]["aso#57167"].lower.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"]["aso#88504"].lower.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"]["aso#57167"].middle.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"]["aso#88504"].middle.gotoAndStop(eval("aso#38229")["aso#97698"]);
                  eval("aso#38229")["aso#33632"].toe.gotoAndStop(eval("aso#38229")["aso#97698"]);
               }
            }
            eval("aso#38229").lhea = eval("aso#38229")["aso#69566"];
            eval("aso#06892")++;
         }
         set("aso#95885",0);
         while(eval("aso#95885") < maxef)
         {
            if(_root["aso#75555"]["p" + eval("aso#95885")])
            {
               if(_root["aso#75555"]["p" + eval("aso#95885")].kill == true)
               {
                  _root["aso#75555"]["p" + eval("aso#95885")].removeMovieClip();
               }
            }
            eval("aso#95885")++;
         }
         eval("aso#02845")();
         eval("aso#40171")();
         if(_root["aso#75555"].player0["aso#69566"] != lhea)
         {
            if(lhea > 0 && _root["aso#75555"].player0["aso#69566"] <= 0)
            {
               set("aso#20812",Math.random() * 3.141592653589793 * 2);
               _root["aso#75555"]._x += Math.sin(eval("aso#20812")) * 200;
               _root["aso#75555"]._y += Math.cos(eval("aso#20812")) * 200;
               _root["aso#25830"]("<font color=\"#FFFF00\">Press SPACE for quick restart</font>");
            }
         }
         if(_root["aso#75555"].player0["aso#69566"] <= 0)
         {
            if(Key.isDown(32))
            {
               if(_root["aso#75555"].player0["aso#69566"] != undefined)
               {
                  stpsnds();
                  _root.gotoAndStop(5);
                  _root.gotoAndStop(3);
               }
            }
         }
         lhea = _root["aso#75555"].player0["aso#69566"];
         mdl = _root["aso#75555"].player0["aso#63577"]._currentframe;
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
                     set("aso#00061",-1);
                     k = 0;
                     while(k < 6)
                     {
                        if(Key.getCode() == 49 + k)
                        {
                           set("aso#00061",_root["w" + k]);
                        }
                        k++;
                     }
                     if(_root["aso#75555"].player0["w_upg" + eval("aso#00061")] != -1)
                     {
                        _root["aso#75555"].player0["aso#63577"].gotoAndStop(eval("aso#00061"));
                        my_so.data.lwea = eval("aso#00061");
                     }
                     eval("aso#80702")(0);
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
         _root.gcur.gotoAndStop(_root["aso#75555"].player0["aso#63577"]._currentframe);
         if(_root["aso#75555"].player0["aso#69566"] > 0)
         {
            if(my_so.data.bg_sou)
            {
               if(_root["aso#75555"]["aso#00482"].hitTest(_root["aso#75555"].player0._x + _root["aso#75555"]._x,_root["aso#75555"].player0._y + _root["aso#75555"]._y - 50,true))
               {
                  if(_root.am_base_vol < 50)
                  {
                     _root.am_base_vol += 2;
                     if(_root["aso#75555"]._currentframe < 11)
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
   if(_root["aso#75555"].player0["aso#69566"] > 0)
   {
      mdl = _root["aso#75555"].player0["aso#63577"]._currentframe;
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
         while(_root["aso#75555"].player0["w_upg" + cur] == -1 || _root["aso#75555"].player0["w_upg" + cur] == undefined || isNaN(_root["aso#75555"].player0["w_upg" + cur]) || cur < 0 || cur >= 6)
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
         _root["aso#75555"].player0["aso#63577"].gotoAndStop(_root["w" + cur]);
         my_so.data.lwea = _root["w" + cur];
         eval("aso#80702")(0);
      }
   }
};
