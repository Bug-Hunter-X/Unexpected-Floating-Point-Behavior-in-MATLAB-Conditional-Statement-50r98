function result = myFunction(x)
  if x > 5
    result = x^2;
  elseif abs(x - 5) < 1e-9 %Use a tolerance to avoid floating-point comparison issues
    result = 25; 
  else
    result = x*2; 
  end
end

%Example usage:
myFunction(10) %Expect 100
myFunction(5) %Expect 25
myFunction(5.00000000001) % Expect 25 (Correct behavior with the solution)