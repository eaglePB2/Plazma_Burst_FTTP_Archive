this.inr.htmlText = this.cnt;
this.sp = true;
this.stop();
this.onEnterFrame = function()
{
   this._y -= 1;
   if(this.sp)
   {
      if(this._alpha < 100)
      {
         this._alpha += 30;
      }
      else
      {
         this._alpha = 100;
      }
      this.sp = false;
   }
   else if(this._alpha > 0)
   {
      this._alpha -= 30;
   }
   else
   {
      this.onEnterFrame = 0;
      this._visible = false;
   }
};
