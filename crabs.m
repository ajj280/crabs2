function crabs ()
 %author Alyssa Jenkins 
 % Date 9-20-2023
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 1200;
thetaCapt = -pi/2;
captSize = 50;
% Draw the captain and initialize graphics handles
captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , captSize)



  
  

  

  endfunction 
  