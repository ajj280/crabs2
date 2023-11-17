function crabs ()
  % initialize command and map dimensions and draw map
  cmd = "null";
  [mapHeight, mapWidth] = drawMap("BGImage.png");
  
  % initialize captain location, heading, and size
  xCapt = 1000;
  yCapt = 500;
  thetaCapt = -pi/2;
  sizeCapt = 50;
  
  % initialize crab location, heading, and size
  xCrab = 1000;
  yCrab = 1200;
  thetaCrab = -pi/2;
  sizeCrab = 50;

  %initialize jelly location, heading, and size 
  xJelly = rand*mapWidth;
  yJelly = 0;
  thetaJelly = -pi/2;
  sizeJelly = 25;
  
 
  
  % draw initial captain and  crab  
  captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);
  crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);
  
  %draw jellyfish
 JellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly);
  
 %initialize jellyfish
  xJelly = rand*mapWidth; 
  yJelly = 0;
  thetaJelly = -pi/2;
sizeJelly = 25;

  %%%%% main loop %%%%%%%%%%
  while(1)

  %  erase old jellyfish
for i=1:length(jellyGraphics)
delete(jellyGraphics(i));
endfor

% move jellyfish
[xJelly,yJelly,thetaJelly] = moveJelly(level, xJelly, yJelly,thetaJelly, sizeJelly,
mapHeight,mapWidth);

% draw jellyfish
jellyGraphics = drawJelly(xJelly,yJelly,thetaJelly,sizeJelly) 


% read the keyboard
cmd = kbhit(1);
if (cmd == 'Q')
break;
endif 
    if (cmd == "w" || cmd == "a" || cmd == "d") % respond to keyboard. captain has moved

      % erase old captain
      for i = 1:length(captainGraphics)
        delete(captainGraphics(i));
      endfor

      % move captain
      [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt, sizeCapt, mapHeight, mapWidth);

      % draw new captain
      captainGraphics = drawCaptain(xCapt, yCapt, thetaCapt, sizeCapt);

  elseif(cmd == "i" || cmd == "j" || cmd == "k" || cmd == "I" || cmd == "," ) %repsond crab moved 

      % erase old crab
      for i = 1:length(crabGraphics)
        delete(crabGraphics(i));
      endfor

      % move crab
      [xCrab, yCrab, thetaCrab] = moveCrab(cmd, xCrab, yCrab, thetaCrab, sizeCrab);

      % draw new captain and crab
      crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);
endif
 endwhile 
 

 close all
  clear

  
 endfunction
