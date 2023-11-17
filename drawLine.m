function handle = drawLine(pointA,pointB,color) 

  x=[pointA(1) ; pointB(1)];
  y=[pointA(2) ; pointB(2)];
  
  handle = plot(x,y, color); 
  
  set(handle, "LineWidth",3); 
  
  
  
  endfunction 
  