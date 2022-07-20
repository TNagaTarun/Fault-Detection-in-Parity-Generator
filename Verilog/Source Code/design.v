module Evenp(P,P1,P2,P3,P4,w,w1,w2,w3,choice,a,b,c,s);

	input a,b,c,s;
	input choice;
	output w,w1,w2,w3,P,P1,P2,P3,P4;
	assign w=(a^b);
	assign w1=(s^b);//Stuck Fault @a
	assign w2=(a^s);//Stuck Fault @b
	assign w3=s;//Stuck Fault @w
	assign P=((w)^c);
	assign P1=((w1)^c);
	assign P2=((w2)^c);
	assign P3=((w3)^c);
	assign P4=((w)^s);//Stuck Fault @c

endmodule
