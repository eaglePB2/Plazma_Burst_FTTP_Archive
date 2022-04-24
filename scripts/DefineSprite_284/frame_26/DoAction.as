if(this["aso#69566"] > 0)
{
   this["aso#39621"].emotion.gotoAndPlay("hurt");
   if(this.myi == 0)
   {
      this.sou.gotoAndStop(Math.round(Math.random() * 3 + 20));
   }
   else if(this.myi == -1)
   {
      this.sou.gotoAndStop(Math.round(Math.random() * 3 + 35));
   }
   else
   {
      this.sou.gotoAndStop(Math.round(Math.random() * 3 + 2));
   }
}
