LI $3,536870912		#a address
LI $2,536870920		#b address
LI $9,1				#$9=1
SW $9,0($3)			#a[0]=1
LW $8,0($3)			#$8=a[0]
ADDI $9,$9,1		#$9=$9+1
SW $9,1($3)			#a[1]=2
LW $7,1($3)			#$7=a[1]
ADD $7,$7,$8		#$7=$7+$8
SW $7,0($2)			#b[0]=$7