if(this._currentframe == 5)
{
   _root.main_music1.stop();
   _root.main_music2.stop();
   _root.main_music3.stop();
   _root.main_music4.stop();
   _root.main_music5.stop();
   _root.main_music.stop();
   _root.main_music4.start(0,999);
   _root["aso#75555"].player8.say_die = "Radio: Need backup!";
   _root["aso#75555"].player1.say_vis = "Radio: Reinforcement has arrived.";
   _root["aso#75555"].player1.say_die = "Radio: a-agh!..";
   _root["aso#75555"].player2.say_die = "Radio: uagh!..";
   _root["aso#75555"].player3.say_die = "Radio: agh!..";
   _root["aso#75555"].player4.say_die = "Radio: ouh-h!..";
   _root["aso#75555"].player7.say_die = "Radio: uh!..";
   _root["aso#75555"].player7.say_vis = "Radio: Take this!";
   this.but0._visible = false;
   this.colmap._visible = false;
   set("aso#06892",1);
   while(eval("aso#06892") < _root.playerstot)
   {
      _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 1;
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 0)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#17057"] = 1;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] = 0;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 100;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"] = 4;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].w_upg2 = 1;
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(1);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(1);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(1);
         _root["aso#75555"]["player" + eval("aso#06892")].opentop = true;
         r = Math.floor(Math.random() * 2.999);
         if(r == 0)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(6);
         }
         if(r == 1)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(7);
         }
         if(r == 2)
         {
            _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(8);
         }
      }
      if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#76947"] == 1)
      {
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = 400;
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#33632"].gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].body.gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].arm1.gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")].arm2.gotoAndStop(2);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#63577"].gotoAndStop(11);
         _root["aso#75555"]["player" + eval("aso#06892")]["aso#66361"] = 3;
      }
      eval("aso#06892")++;
   }
   set("aso#94493",false);
   this.onEnterFrame = function()
   {
      if(!eval("aso#94493"))
      {
         if(_root["aso#75555"].player0.hitTest(this.but0))
         {
            if(_root["aso#75555"].player0["aso#32240"] > 0)
            {
               set("aso#94493",true);
            }
         }
      }
      set("aso#06892",0);
      while(eval("aso#06892") < _root.playerstot)
      {
         if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#23046"] == true)
         {
            if(_root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] > 0)
            {
               if(eval("aso#06892") != 0 && _root["aso#75555"]["player" + eval("aso#06892")]["aso#58980"] == _root["aso#75555"].player0["aso#58980"])
               {
                  if(_root["aso#75555"]["player" + eval("aso#06892")].hunt == -1)
                  {
                     if(_root["aso#75555"]["player" + eval("aso#06892")]._x < _root["aso#75555"].player0._x + 300)
                     {
                        if(_root["aso#75555"]["player" + eval("aso#06892")]._x > _root["aso#75555"].player0._x - 300)
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
                                 if(_root["aso#75555"].colmap.hitTest(_root["aso#75555"]._x + _root["aso#75555"]["player" + eval("aso#06892")]._x - (_root["aso#75555"]["player" + eval("aso#06892")].botaction - 1.5) * _root["aso#75555"]["player" + eval("aso#06892")]["aso#57588"] * 15,_root["aso#75555"]._y + _root["aso#75555"]["player" + eval("aso#06892")]._y - 20,true))
                                 {
                                    _root["aso#75555"]["player" + eval("aso#06892")].botaction = 3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_root["aso#75555"]["player" + eval("aso#06892")].hitTest(this.kill_reg0))
               {
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#32240"] = -100;
                  _root["aso#75555"]["player" + eval("aso#06892")]["aso#35024"] = "body";
                  _root["aso#96306"](_root["aso#75555"]["player" + eval("aso#06892")]._x - 20 + Math.random() * 40,this.kill_reg0._y,2);
               }
            }
         }
         eval("aso#06892")++;
      }
      if(eval("aso#94493"))
      {
         if(this.colmap.box13._yscale > 0)
         {
            this.colmap.box13._yscale = 0;
            this.door1._visible = false;
         }
         else
         {
            set("aso#94493",false);
         }
      }
   };
}
