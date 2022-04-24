_root.musics._alpha = 50;
_root.musics.onRollOver = function()
{
   _root.musics._alpha = 100;
};
_root.musics.onRollOut = function()
{
   _root.musics._alpha = 50;
};
_root.musics.useHandCursor = true;
_root.musics.onRelease = function()
{
   if(_root.musics._currentframe == 2)
   {
      _root.musics.gotoAndStop(3);
   }
   else
   {
      _root.musics.gotoAndStop(2);
   }
};
