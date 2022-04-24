on(release){
   if(_root.nick.text != "Your Name Here" && _root.nick.text != "Your Name Here!" && _root.nick.text != "Your Name Here!!" && _root.nick.text != "Your Name Here!!!")
   {
      _root["aso#85299"] = _root.nick.text;
      my_so.data.myname = _root["aso#85299"];
      _root.gotoAndStop(2);
   }
   else if(_root.nick.text == "Your Name Here")
   {
      _root.nick.text = "Your Name Here!";
   }
   else if(_root.nick.text == "Your Name Here!")
   {
      _root.nick.text = "Your Name Here!!";
   }
   else if(_root.nick.text == "Your Name Here!!")
   {
      _root.nick.text = "Your Name Here!!!";
   }
   else if(_root.nick.text == "Your Name Here!!!")
   {
      rn = Math.floor(Math.random() * 7.999);
      if(rn == 0)
      {
         _root.nick.text = "I forgot...";
      }
      if(rn == 1)
      {
         _root.nick.text = "I do not remember";
      }
      if(rn == 2)
      {
         _root.nick.text = "unknown";
      }
      if(rn == 3)
      {
         _root.nick.text = "Anonymous";
      }
      if(rn == 4)
      {
         _root.nick.text = "Mr. Cyborg";
      }
      if(rn == 5)
      {
         _root.nick.text = "victim";
      }
      if(rn == 6)
      {
         _root.nick.text = "assassin";
      }
      if(rn == 7)
      {
         _root.nick.text = "The chosen one";
      }
   }
}
