main
port reset
port o
norf var o o
call ext_proc_ret_n_reset reset o var # calling function and getting new value for var
call reset_zeroing reset o reset # setting reset to zero for the next iteration
# by calling back returning function
