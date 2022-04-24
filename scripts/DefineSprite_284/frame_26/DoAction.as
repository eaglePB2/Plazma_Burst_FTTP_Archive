if(this["aso#12881"] > 0)
{
   this["aso#14273"].emotion.gotoAndPlay("hurt");
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
