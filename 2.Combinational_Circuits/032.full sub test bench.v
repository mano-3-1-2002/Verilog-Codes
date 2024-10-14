module full_sub_tb;
  reg x,y,z;
  wire dif,bor;
  full_subtractor f1(x,y,z,dif,bor);
  initial
    begin
      $monitor("x=%b,y=%b,z=%b,dif=%b,bor=%b",x,y,z,dif,bor);
      x=0;y=0;z=0;#3
      x=0;y=0;z=1;#3
      x=0;y=1;z=0;#3
      x=0;y=1;z=1;#3
      x=1;y=0;z=0;#3
      x=1;y=0;z=1;#3
      x=1;y=1;z=0;#3
      x=1;y=1;z=1;#3;
    end
endmodule
      
            

    
