Function initGameData(limit Uint64)
10  STORE("pot", 0)
20  STORE("tick_counter", 0)   
30  STORE("tick_limit", limit)
40 RETURN
End Function 

Function Tick() Uint64
10 IF DEROVALUE() == 0 THEN GOTO 60
20 STORE("pot", LOAD("pot") + DEROVALUE()) // Accumulate
30 STORE("tick_counter", LOAD("tick_counter") + 1) // Increase ticks
40 IF LOAD("tick_counter") != LOAD("tick_limit") THEN GOTO 60 // Check if you are the last ticker
45 SEND_DERO_TO_ADDRESS(SIGNER(), LOAD("pot") * 9800 / 10000)
50 initGameData(LOAD("tick_limit") + 1) // Increase limit at each run of the game
60 RETURN 0
End Function

Function Initialize() Uint64
10 STORE("owner", SIGNER())
20 initGameData(10)
30 RETURN 0 
End Function 
