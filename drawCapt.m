function captainGraphics = drawCaptain (xCapt , yCapt , thetacapt , captSize)
capt = getCapt (captSize)

T = getTranslation(xCapt,yCapt);
capt = T*capt; 

%left side 
  captPt1 = capt( : , 1);
  captPt2 = capt( : , 2); 
  captPt3 = capt( : , 3);
  
  
  %right side 
  
  captPt4 = capt( : , 4) ;
  captPt5 = capt( : , 5) ;
  captPt6 = capt( : , 6) ;
  
  
  %head 
  captPt7 = capt( : , 7) ;
  captPt8 = capt( : , 8) ;
  captPt9 = capt( : , 9) ;
  captPt10 =capt( : , 10) ;
  
  %spear  
  captPt11 = capt( : , 11) ;
  captPt12 = capt( : , 12);
  
  
  %spear 
  captPt13 =  capt( : , 13) ;
  captPt14 =  capt( : , 14) ;
  
  %spear2 
  captPt15 =  capt( : , 15) ;
  captPt16 =  capt( : , 16);
  
  
  %captain matrix 
  capt = [ captPt1 , captPt2 , captPt3, captPt4, captPt5, captPt6,  captPt7 , captPt8 , captPt9, captPt10, captPt11, captPt12,captPt13,captPt14,captPt15,captPt16]; 
captainGraphics(1) = drawLine(captPt1, captPt2, "k"); 
captainGraphics(2) = drawLine(captPt2, captPt3, "k"); 
captainGraphics(3) = drawLine(captPt2, captPt5, "k"); 
captainGraphics(4) = drawLine(captPt4, captPt6,"k"); 
CaptainGraphics(5) = drawLine(captPt5, captPt6,"k"); 
CaptainGraphics(6) = drawLine(captPt6, captPt1, "k"); 
CaptainGraphics(7) = drawLine(captPt7, captPt8,"k"); 
CaptainGraphics(8) = drawLine(captPt8, captPt9, "k"); 
CaptainGraphics(9) = drawLine(captPt9, captPt10, "k"); 
CaptainGraphics(10) = drawLine(captPt1, captPt11, "k");
CaptainGraphics(11) = drawLine(captPt6, captPt12, "k"); 
CaptainGraphics(12) = drawLine(captPt13, captPt14,"k"); 
 
% shift Captain to new location
T = getTranslation(xCapt,yCapt);
capt = T*capt;

%Line 53  defines T as xCapt and yCapt, it tells dr racket what to translate.
%Line 54 is going to translate the graph making it wider



endfunction
