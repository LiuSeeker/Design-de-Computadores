SEG_UNI = 0 #4 bits
SEG_DEC = 0 #4 bits
MIN_UNI = 0 #4 bits
MIN_DEC = 0 #4 bits
HOR_UNI = 0 #4 bits
HOR_DEC = 0 #2 bits
VEL = 1     #2 bits
BASE_TEMPO = 10000 #FREQ/2

while(True):
    if TEMPO:
        SEG_UNI += 1
        TEMPO = 0

        if SEG_UNI == 10:
            SEG_DEC += 1
            SEG_UNI = 0
            if SEG_DEC == 6:
                MIN_UNI += 1
                SEG_DEC = 0

                if MIN_UNI == 10:
                    MIN_DEC += 1
                    MIN_UNI = 0
                    if MIN_DEC == 6:
                        HOR_UNI += 1
                        MIN_DEC = 0

                        if HOR_UNI == 10:
                            HOR_DEC += 1
                            HOR_UNI = 0
                            if HOR_DEC == 2 and HOR_UNI == 4:
                                HOR_DEC = 0
                                HOR_UNI = 0

    if muda_vel:
        VEL += 1
        if VEL > 3:
            VEL = 1
            BASE_TEMPO = 10000
        else:
            BASE_TEMPO /= 2