*Stuff will be here until I decorate*

---

 ## Incrementing pointers:
  - **Pre-increment**  -> `[addr, #offset]!` @ Increase the addr pointer value by offset and read it  
  - **Post-increment** -> `[addr], #offset`  @ Read the value the increase it  
	
---

## Logic Operation

Operations runs for every bit, so if I don't want to use all bits,  
I can use `AND` on the result to reset the first bits  

For example:  
*0x000000FF* -> `MVN` -> *0xFFFFFF00* -> `AND` *0x000000FF* -> *0x00000000*
