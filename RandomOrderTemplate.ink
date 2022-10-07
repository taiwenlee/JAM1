INCLUDE Scene1
INCLUDE Scene2
INCLUDE Scene3
INCLUDE Scene4

start

VAR Scene = 0

=== MainLoop ===
    New Scene
~ Scene = RANDOM(1, 4)

{ 
- ! Scene_1 && Scene <= 1 :
    -> Scene_1
- ! Scene_2 && Scene <= 2 :
    -> Scene_2
- ! Scene_3 && Scene <= 3 :
    -> Scene_3
- ! Scene_4 && Scene <= 4 :
    -> Scene_4    
}

{ Scene_1 && Scene_2 && Scene_3 && Scene_4 :
    -> Conclusion
- else:
    -> MainLoop
}



=== Conclusion == 
    -> END
