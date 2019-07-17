# 0x50000518 - DIRSET (P0) - set GPIO as output
# 0x50000818 - DIRSET (P1) - set GPIO as output

# 0x50000504 - OUT (P0) - write GPIO
# 0x50000804 - OUT (P1) - write GPIO

w4 0x50000518, 0x12018000 # DIRSET (P0), hex(0b00010010_00000001_10000000_00000000) = 0x12018000
w4 0x50000818, 0x00000001 # DIRSET (P1), hex(0b00000000_00000000_00000000_00000001) = 0x00000001
w4 0x50000504, 0x12008000 # OUT    (P0), hex(0b00010010_00000000_10000000_00000000) = 0x12008000
w4 0x50000804, 0x00000000 # OUT    (P1), hex(0b00000000_00000000_00000000_00000000) = 0x00000000

