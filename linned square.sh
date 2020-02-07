
# note
# in laggy drawing sites this may work better

# --------------------------------------------------------

move(){

	x_dif=$1		
	y_dif=$2
	slowness=$3

	let x_new=$((x_new+x_dif))
	let y_new=$((y_new+y_dif))
	xdotool mousemove $x_new $y_new sleep $slowness
	# click
	xdotool mousemove $x_new $y_new click 1 sleep 0.00001
	xdotool mousedown 1

	echo $x_new $y_new
}


# spins l dec l slowness
draw(){

	eval $(xdotool getmouselocation --shell)
	echo $X $Y




	x_new=$X
	y_new=$Y
	
	let l=$2
	let l_dec=$3
	for (( t = 1; t < $1; t++ )); do


		xdotool mousemove $x_new $y_new 



 		# dont repeat blocks

 		move l 0 $4

 		l=$((l-l_dec))
 		echo $l
 		move 0 l $4

 		l=$((l-l_dec))
 		echo $l
 		move -l 0 $4

 		l=$((l-l_dec))
 		echo $l
 		move 0 -l $4

 		l=$((l-l_dec))
 		echo $l





 	done
 	xdotool mouseup 1


 }





# draw lim_x lim_y 0.01

# important



# spins l dec l slowness
draw 10 500 5 0.000009

xdotool mouseup 1
# Y same


