function firtim()
{
   totalseconds += 1;
   waitfor = Math.round(totalseconds / (_root.getBytesLoaded() + main_music.getBytesLoaded()) * (_root.getBytesTotal() + main_music.getBytesTotal() - (_root.getBytesLoaded() + main_music.getBytesLoaded())));
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
_root.frm = 0;
_quality = "MEDIUM";
_root.global_money = 500;
_root.stop();
_root.currentlevel = 1;
lasts = 0;
times = 0;
someListener = new Object();
Mouse.addListener(someListener);
totalseconds = 0;
fir = setInterval(firtim,1000);
var main_music = new Sound();
main_music.onLoad = function(success)
{
   if(success)
   {
      main_music.start(0,999);
   }
};
main_music.loadSound("music.mp3",false);
_root.onEnterFrame = function()
{
   if(_root.frm == 0)
   {
      cur = Math.round((_root.getBytesLoaded() + main_music.getBytesLoaded()) / (_root.getBytesTotal() + main_music.getBytesTotal()) * 100);
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
      if(_root.getBytesLoaded() + main_music.getBytesLoaded() == _root.getBytesTotal() + main_music.getBytesTotal())
      {
         clearInterval(fir);
         _root.gotoAndStop(2);
      }
   }
};
