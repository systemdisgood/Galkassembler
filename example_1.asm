port reset 1 # pair where one bit is port (set to one) and another (that not mentioned) is 0
# 1 is just a recomendation for assembler the port can be set by real hardware
port o # so let hardware send us real zero (and calling it o letter)
init FF 0 0 # initialising memory by 0xFF pairs of zeros (we can use many init commands after port, before norb, norf and pout comands)
#init is just a recomendation for assembler, the real hardware may has not initialised memory
norf i o o# creating 1 (naming in i) using zero from port (NOR(0, 0))
norb reset i o # throwing NOR(reset, 0) back (upper by the code, to the next iteration) to reset (first bit in reset pair)
# but because we pushed 0 to reset back, it will be 0 on next (second) iteration
# and we still can use reset value from port on first iteratoon to reset all variables
norf some_var_0 reset o # using reset to initialise variable as NOR(1, 0)=0
# norf means "do NOR operation and throw result forward the code"
norf some_var_1 reset o
# forward but before next norf that returns same variable
norf some_var_0 o o # from this moment var is NOR(0, 0)=1
norb some_var_1 o o # norb throws result back by the code
#but before previous norb that returns same variable 
# so if no reset on the next iteration, var will be 1
norf some_var_1 i o # will be 1 before this norf of chause


#in the and of the file we can use only output ports called pouts
pout some_out_0 # first bit of pair 1
pout some_out_1 # second bit of pair 1
pout some_out_3 # first (and the only) bit of paitr 2
# pouts are sit bit after bit in the end of the memory
