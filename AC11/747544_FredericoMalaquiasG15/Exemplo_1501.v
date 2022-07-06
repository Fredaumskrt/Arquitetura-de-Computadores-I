# BEGIN 0000H
	   LXI H,C050
	   MOV A,M
	   INX H
	   SUB M
	   INX H
	   SUB M
	   INX H
	   MOV M,A
	   HLT
# ORG C050
# DB 95H,60H,15H