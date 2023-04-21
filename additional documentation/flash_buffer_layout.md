# this here describes how the data is laid out in the flash buffer

- we have 6 bit per byte always
- we divide the buffer in 4 sections that come one after the other, most significant first.
- each section has 64*32/2 = 1024 buffer blocks, as each byte contains the immediate data for 2 led, one upper and one lower. 
- each entry in the first section contains the mmsb, then comes the msb, the lsb and the llsb for each led. always in pairs for upper and lower half.