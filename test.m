%X 
%No 
%fs 
%L

%To assume H 
h=complex(rand(1,L));
H=zeros(L);
for i=1:1:L
    H(i,i)=h(1,1);
    if i>1
        for j=1:1:i-1
            H(i,i-j)=h(1,j+1);
        end
    end
end

%To assume AWGN Noise 
N=(No/2)randn(size(X));

%To compute Output Y 
Y=H*X+N
