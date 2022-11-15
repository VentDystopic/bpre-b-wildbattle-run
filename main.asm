.gba
.thumb
.open "BPRE.gba","build/rom.gba", 0x08000000
//---------------------------------------------------

.org 0x0802e438
.area 0x206, 0xFF
    push {lr}
    ldr r3, =HandleInputChooseAction|1  
    bl bx_r3_p
    pop {pc}

bx_r3_p:
    bx r3
.pool
.endarea

.align 4
.org insertinto
.importobj "build/linked.o"
.close
