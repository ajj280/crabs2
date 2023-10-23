function  capt = getCapt (captSize)
  
  %left side 
  captPt1 = [captSize;captSize;1];
  captPt2 = [-captSize;captSize;1];
  captPt3 = [-3*captSize;captSize;1]; 
  
  
  %right side 
  
  captPt4 = [-3*captSize; -captSize;1]; 
  captPt5 = [-captSize; -captSize;1]; 
  captPt6 = [captSize; -captSize;1]; 
  
  
  %head 
  captPt7 = [captSize; -captSize/2;1]; 
  captPt8 = [2*captSize;  -captSize/2;1]; 
  captPt9 = [captSize;  captSize/2;1]; 
  captPt10 =[2*captSize; captSize/2;1]; 
  
  %spear  
  captPt11  = [0; 2*captSize;1]  
  captPt12 =  [ 0; -2*captSize;1];  
  
  
  %spear 
  captPt13 = [3*captSize; -2*captSize;1]; 
  captPt14 = [-captSize; -2*captSize;1];
  
  %spear2 
  captPt15 = [3*captSize; 2*captSize;1]; 
  captPt16 = [-captSize; 2*captSize;1]; 
  
  
  %captain matrix 
  capt = [ captPt1 , captPt2 , captPt3, captPt4, captPt5, captPt6,  captPt7 , captPt8 , captPt9, captPt10, captPt11, captPt12,captPt13,captPt14,captPt15,captPt16]; 
          
  
% shift captain to new location   

   
          
endfunction 
  
 