module sr_latch(input s,r,output reg q,qbar);
  always @(s or r)begin
    if(~s && r)begin
      q=0;
      qbar=1;
    end
    else if(s&&~r)begin
      q=1;
      qbar=0;
    end
    else if(s&&r)begin
      q=0;
      qbar=0;
    end
  end
endmodule
