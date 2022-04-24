function §aso#61764§(a)
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
   waitfor = Math.round(totalseconds / _root.getBytesLoaded() * (_root.getBytesTotal() - _root.getBytesLoaded()));
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
_root["aso#85720"] = 0;
loadfinished = false;
str = _root._url;
_root.stop();
_root.lgg._alpha = 100;
lasts = 0;
times = 0;
someListener = new Object();
Mouse.addListener(someListener);
totalseconds = 0;
fir = setInterval(firtim,1000);
str = _root._url;
_root.onEnterFrame = function()
{
   if(_root["aso#85720"] == 0)
   {
      if(_root._url.indexOf("kongregate.com") == -1)
      {
         _root.lgg.cblnk._visible = false;
      }
      cur = eval("aso#61764")(Math.round(_root.getBytesLoaded() / _root.getBytesTotal() * 100));
      if(cur != lasts)
      {
         times = 10;
      }
      else
      {
         times -= 1;
      }
      _root.lg.ss._xscale = cur;
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
      if(Math.round(_root.getBytesLoaded()) >= Math.round(_root.getBytesTotal()))
      {
         clearInterval(fir);
         _root.lgg._alpha -= 5;
         if(_root.lgg._alpha < 0)
         {
            if(_root._url.indexOf("kongregate.com") != -1)
            {
               _root.gotoAndStop(15);
            }
         }
      }
   }
};
