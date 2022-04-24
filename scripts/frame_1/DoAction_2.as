function §aso#12460§(a)
{
   if(isNaN(a) || undefined == a)
   {
      return 0;
   }
   return a;
}
function firtim()
{
   totalseconds += 1;
   waitfor = Math.round(totalseconds / (_root.getBytesLoaded() + (eval("aso#12460")(main_music1.getBytesLoaded()) + eval("aso#12460")(main_music2.getBytesLoaded()) + eval("aso#12460")(main_music3.getBytesLoaded()) + eval("aso#12460")(main_music4.getBytesLoaded()) + eval("aso#12460")(main_music5.getBytesLoaded()) + eval("aso#12460")(main_music.getBytesLoaded()))) * (_root.getBytesTotal() + (eval("aso#12460")(main_music1.getBytesTotal()) + eval("aso#12460")(main_music2.getBytesTotal()) + eval("aso#12460")(main_music3.getBytesTotal()) + eval("aso#12460")(main_music4.getBytesTotal()) + eval("aso#12460")(main_music5.getBytesTotal()) + eval("aso#12460")(main_music.getBytesTotal())) - (_root.getBytesLoaded() + (eval("aso#12460")(main_music1.getBytesLoaded()) + eval("aso#12460")(main_music2.getBytesLoaded()) + eval("aso#12460")(main_music3.getBytesLoaded()) + eval("aso#12460")(main_music4.getBytesLoaded()) + eval("aso#12460")(main_music5.getBytesLoaded()) + eval("aso#12460")(main_music.getBytesLoaded())))));
   if(waitfor < 60)
   {
      _root.loa2.htmlText = waitfor + " seconds";
   }
   else if(waitfor / 60 < 60)
   {
      _root.loa2.htmlText = Math.floor(waitfor / 60) + " minutes " + (waitfor - Math.floor(waitfor / 60) * 60) + " seconds";
   }
}
_lockroot = true;
_root["aso#67753"] = 0;
_quality = "MEDIUM";
_root.stop();
lasts = 0;
times = 0;
someListener = new Object();
Mouse.addListener(someListener);
totalseconds = 0;
fir = setInterval(firtim,1000);
_root.onEnterFrame = function()
{
   if(_root["aso#67753"] == 0)
   {
      cur = eval("aso#12460")(Math.round((_root.getBytesLoaded() + eval("aso#12460")(_root.main_music1.getBytesLoaded()) + eval("aso#12460")(_root.main_music2.getBytesLoaded()) + eval("aso#12460")(_root.main_music3.getBytesLoaded()) + eval("aso#12460")(_root.main_music4.getBytesLoaded()) + eval("aso#12460")(_root.main_music5.getBytesLoaded()) + eval("aso#12460")(_root.main_music.getBytesLoaded())) / (_root.getBytesTotal() + eval("aso#12460")(_root.main_music1.getBytesTotal()) + eval("aso#12460")(_root.main_music2.getBytesTotal()) + eval("aso#12460")(_root.main_music3.getBytesTotal()) + eval("aso#12460")(_root.main_music4.getBytesTotal()) + eval("aso#12460")(_root.main_music5.getBytesTotal()) + eval("aso#12460")(_root.main_music.getBytesTotal())) * 100));
      if(cur != lasts)
      {
         times = 10;
      }
      else
      {
         times -= 1;
      }
      if(times > 0)
      {
         _root.loa.htmlText = "<font color=\"#FFFFFF\"><B>.:</B></font> " + cur + " <font color=\"#FFFFFF\"><B>:.</B></font>";
      }
      else if(times > -5)
      {
         _root.loa.htmlText = "<font color=\"#AAAAAA\"><B>.:</B></font> " + cur + " <font color=\"#AAAAAA\"><B>:.</B></font>";
      }
      else if(times > -40)
      {
         _root.loa.htmlText = "<B>.:</B> " + cur + " <B>:.</B>";
      }
      else
      {
         _root.loa.htmlText = "<font color=\"#FF0000\"><B>.:</B></font> " + cur + " <font color=\"#FF0000\"><B>:.</B></font>";
      }
      lasts = cur;
      if(Math.round(_root.getBytesLoaded() + eval("aso#12460")(_root.main_music1.getBytesLoaded() + _root.main_music2.getBytesLoaded() + _root.main_music3.getBytesLoaded() + _root.main_music4.getBytesLoaded() + _root.main_music5.getBytesLoaded() + _root.main_music.getBytesLoaded())) >= Math.round(_root.getBytesTotal() + eval("aso#12460")(_root.main_music1.getBytesTotal() + _root.main_music2.getBytesTotal() + _root.main_music3.getBytesTotal() + _root.main_music4.getBytesTotal() + _root.main_music5.getBytesTotal() + _root.main_music.getBytesTotal())))
      {
         clearInterval(fir);
         _root.gotoAndStop(11);
      }
   }
};
