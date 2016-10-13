#!bin/bash/awk -f
export IFS="#"

cat cs.csv | while read a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z A1 A2 A3 A4 A5 A6 ;
do 	
	echo " $a $b"
 	echo " Most_basic_Commands=$(( $c + $d + $e + $f + $g + $h + $i + $j + $k + $l + $m + $n + $o + $p))         marks1=$(( 1 * ($c + $d + $e + $f + $g + $h + $i + $j + $k + $l + $m + $n + $o + $p) ))   " 	
 	echo " Basic_Linux_Commands=$(($q + $r + $s + $t + $u + $v + $w + $x + $y + $z))        marks2=$(( 2 * ($q + $r + $s + $t + $u + $v + $w + $x + $y + $z) ))" 
 	echo " Advanced_Linux_Commands=$(($A + $B + $C + $D + $E + $F + $G + $H + $I + $J))     marks3=$(( 3 * ($A + $B + $C + $D + $E + $F + $G + $H + $I + $J) ))"
 	echo " Basic_VIM_Commands=$(($K + $L + $M + $N + $O + $P + $Q + $R + $S + $T + $U + $V + $W))          marks4=$(( 1 * ($K + $L + $M + $N + $O + $P + $Q + $R + $S + $T + $U + $V + $W) ))" 
 	echo " Advanced_VIM=$(($X + $Y + $Z + $A1 + $A2 + $A3 + $A4 + $A5 + $A6))                marks5=$(( 3 * ($X + $Y + $Z + $A1 + $A2 + $A3 + $A4 + $A5 + $A6) ))"; 
 	echo " Total=$(($c + $d + $e + $f + $g + $h + $i + $j + $k + $l + $m + $n + $o + $p + $q + $r + $s + $t + $u + $v + $w + $x + $y + $z + $A + $B + $C + $D + $E + $F + $G + $H + $I + $J + $K + $L + $M + $N + $O + $P + $Q + $R + $S + $T + $U + $V + $W + $X + $Y + $Z + $A1 + $A2 + $A3 + $A4 + $A5 + $A6))                 total_marks=$((( 1 * ($c + $d + $e + $f + $g + $h + $i + $j + $k + $l + $m + $n + $o + $p) ) + ( 2 * ($q + $r + $s + $t + $u + $v + $w + $x + $y + $z)) + ( 3 * ($A + $B + $C + $D + $E + $F + $G + $H + $I + $J) ) + ( 1 * ($K + $L + $M + $N + $O + $P + $Q + $R + $S + $T + $U + $V + $W) ) + ( 3 * ($X + $Y + $Z + $A1 + $A2 + $A3 + $A4 + $A5 + $A6)))) "
 	echo "\n"
 	echo ""
done