// test bench
module testevenp;
	reg [8:0]choice;
	reg a,b,c,s;
	wire w,w1,w2,w3,P,P1,P2,P3,P4;
	Evenp O(P,P1,P2,P3,P4,w,w1,w2,w3,choice,a,b,c,s);

initial begin
choice=$urandom%8;
if(choice==0)begin
	s=0;
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w1,P1);
	$display("Fault Detected:a stuck @0");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w1,P1);
end else
if(choice==1)begin
	s=1;
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w1,P1);
	$display("Fault Detected:a stuck @1");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w1,P1);
end else
if(choice==2)begin
	s=0;
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w2,P2);
	$display("Fault Detected:b stuck @0");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w2,P2);
end else
if(choice==3)begin
	s=1;
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w2,P2);
	$display("Fault Detected:b stuck @1");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w2,P2);
end else
if(choice==4)begin
	s=0;
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w,P4);
	$display("Fault Detected:c stuck @0");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w,P4);
end else
if(choice==5)begin
	s=1;
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w,P4);
	$display("Fault Detected:c stuck @1");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w,P4);
end else
if(choice==6)begin
	s=0;
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w3,P3);
	$display("Fault Detected:w stuck @0");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w3,P3);
end else
if(choice==7)begin
	s=1;
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w3,P3);
	$display("Fault Detected:w stuck @1");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w3,P3);
end else
if(choice==8)begin
	$monitor($time," value of a=%b,b=%b,c=%b;;intermediate Output w=%b,Final Output P=%b",a,b,c,w,P);
	$display("No Fault Detected");
	$dumpfile("testevenp.vcd");
	$dumpvars(1,a,b,c,w,P);
end a=0;b=0;c=0;

end
	always #40 a=~a;
	always #20 b=~b;
	always #10 c=~c;
	always@(a,b,c,s)
begin
	#80 $finish;
	end
endmodule


