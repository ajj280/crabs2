function [xCrab, yCrab, thetaCrab] = moveCrab(cmd, xCrab, yCrab, thetaCrab, sizeCrab)
  
  dTheta = pi/6;
  dStep = 50;

  if (cmd == "i") % rotate right
    xCrab = xCrab + cos(thetaCrab) * dStep;
    yCrab = yCrab + sin(thetaCrab) * dStep;
    thetaCrab = thetaCrab;

  elseif (cmd == "j") % move left
    xCrab = xCrab;
    yCrab = yCrab;
    thetaCrab = thetaCrab + dTheta;

  elseif (cmd == "k") % move right
    xCrab = xCrab;
    yCrab = yCrab;
    thetaCrab = thetaCrab - dTheta;

  else % if none of the cases are true, set the new variables equal to the old inputs.
    xCrab = xCrab;
    yCrab = yCrab;
    thetaCrab = thetaCrab;

  endif
endfunction
