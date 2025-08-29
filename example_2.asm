# this functions can be called from another files
funf ext_proc_ret_reset # funf returns forward return in calling code like norf
port reset # we can return value via port if we want (also forvard return)
pout reset # function just returning reset (also forvard return)

funf ext_proc_ret_n_reset
port reset
port zero
norf n_reset reset zero
pout n_reset

funb reset_zeroing # back return like norb but only via pout
port reset
port zero
norf i zero zero
norf reset i
pout reset
