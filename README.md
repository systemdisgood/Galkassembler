# Galkassembler
Imagine. You are on an uninhabited island with pebbles coast. And you need to execute some code. Build the computer of pebbles! This is an assembler for you. 

The rules are simple. Place the white and black stones in a circle according to the initial state. Whites are logical zeros, and blacks are logical ones. Go around in a circle, perform the NOR operation between each odd pair of even and odd stones. After each logical operation, take stones of the color of the resulting boolean value from the pile of spare stones in the storage and carry them to the addresses indicated in the program, replace the stones at the addresses with the ones brought and return to the place in the circle where you came from to perform the NOR operation. After a specified number of laps, the stones will form the result of the program's operation. 

You can also runing interactive code by plasing and srtoring new data on some positions.

The initial state is a data section. Positive non zero or non one value in the data secrion is the number of circles before getting the right value on this position. Nehative non minus one value is the period of placing new values on this position. Zero in code section meaning the NOR operation. Another value is the address where to place the result.
