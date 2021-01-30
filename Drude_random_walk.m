clear ;
clc;
R=2;L=1;step=0;en_d=0;index=2;A=0;
step=step+R;
en_d=en_d+R;
A(index)=en_d;
while(en_d ~=150)
    move=randperm(2,1);
      if move==2 
            if en_d<=150
                 step=step+R;
                 en_d=en_d+R;
                 if(en_d<=150)
                        index=index+1;
                        A(index)=en_d;
                 end
            end
       else 
            if (en_d>L)
                step=step+L;
                en_d=en_d-L;
                if (en_d<=150)
                     index=index+1;
                     A(index)=en_d;
                end
            end
      end
end   

disp(step);
disp(A);