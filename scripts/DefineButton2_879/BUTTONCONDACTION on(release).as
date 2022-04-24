on(release){
   _root.main_music_credits.stop();
   _root.main_music_credits.start(_root.main_music_credits.duration / 1000 - 1,1);
   _root.gotoAndStop(2);
}
