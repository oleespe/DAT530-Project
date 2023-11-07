function [pns] = Space_Elevator_Phase_2_pdf()
global global_info
pns.PN_name = 'Space Elevator Phase 2';


pns.set_of_Ps = {'pIronOre','pCopperOre','pCoal',...
                 'pIronIngot','pCopperIngot','pSteelIngot',...
                 'pIronPlate','pIronRod','pWire','pSteelPipe','pSteelBeam','pScrew','pCable',...
                 'pReinforcedIronPlate','pModularFrame','pStator','pRotor',...
                 'pSmartPlating','pAutomatedWiring','pVersatileFramework'
                 };

pns.set_of_Ts = {'tIronOreMiner','tCopperOreMiner','tCoalMiner',...
                 'tSmelterForIron','tSmelterForCopper','tFoundryForSteelIngot',...
                 'tConstructorForIronPlate','tConstructorForIronRod','tConstructorForScrew','tConstructorForWire',...
                 'tConstructorForSteelPipe','tConstructorForSteelBeam','tConstructorForCable',...
                 'tAssemblerForReinforcedIronPlate','tAssemblerForStator','tAssemblerForRotor','tAssemblerForModularFrame',...
                 'tAssemblerForAutomatedWiring','tAssemblerForVersatileFramework','tAssemblerForSmartPlating'
                 }; 

pns.set_of_As = {
                 'tIronOreMiner','pIronOre',30 * 2*(global_info.Miner_Tier - 1) * 2*(global_info.Node_Purity - 1)* (global_info.Overclock_Percentage/100)* global_info.Counters("tIronOreMiner"),...               %Iron Ore
                 'tCopperOreMiner','pCopperOre',30 * 2*(global_info.Miner_Tier - 1) * 2*(global_info.Node_Purity - 1)* (global_info.Overclock_Percentage/100)* global_info.Counters("tCopperOreMiner"),...         %Copper Ore
                 'tCoalMiner','pCoal',30 * 2*(global_info.Miner_Tier - 1)* 2*(global_info.Node_Purity - 1)* (global_info.Overclock_Percentage/100)* global_info.Counters("tCoalMiner"),...                         %Coal                                   
                 'pIronOre','tSmelterForIron',30* (global_info.Overclock_Percentage/100)* global_info.Counters("tSmelterForIron"),...                                       %Iron Ore -> Iron Ingot
                 'tSmelterForIron','pIronIngot',30* (global_info.Overclock_Percentage/100)* global_info.Counters("tSmelterForIron"),...                                     %%%%%%%%%%%%%%                                         
                 'pCopperOre','tSmelterForCopper',30* (global_info.Overclock_Percentage/100)* global_info.Counters("tSmelterForCopper"),...                                 %Copper Ore -> Copper Ingot
                 'tSmelterForCopper','pCopperIngot',30* (global_info.Overclock_Percentage/100)* global_info.Counters("tSmelterForCopper"),...                               %%%%%%%%%%%%%%                                 
                 'pIronOre','tFoundryForSteelIngot',45* (global_info.Overclock_Percentage/100)* global_info.Counters("tFoundryForSteelIngot"),...                           %Iron Ore + Coal -> Steel Ingot
                 'pCoal','tFoundryForSteelIngot',45* (global_info.Overclock_Percentage/100)* global_info.Counters("tFoundryForSteelIngot"),...                              %%%%%%%%%%%%%%                           
                 'tFoundryForSteelIngot','pSteelIngot',45 * (global_info.Overclock_Percentage/100)* global_info.Counters("tFoundryForSteelIngot"),...                       %%%%%%%%%%%%%%              
                 'pIronIngot','tConstructorForIronPlate',30* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForIronPlate"),...                   %Iron Ingot -> Iron Plate
                 'tConstructorForIronPlate','pIronPlate',20 *(global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForIronPlate"),...                   %%%%%%%%%%%%%%
                 'pIronIngot','tConstructorForIronRod',15* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForIronRod"),...                       %Iron Ingot -> Iron Rod
                 'tConstructorForIronRod','pIronRod',15 * (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForIronRod"),...                        %%%%%%%%%%%%%%
                 'pCopperIngot','tConstructorForWire',15* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForWire"),...                           %Copper Ingot -> Wire
                 'tConstructorForWire','pWire',30* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForWire"),...                                  %%%%%%%%%%%%%%
                 'pSteelIngot','tConstructorForSteelPipe',30* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForSteelPipe"),...                  %Steel Ingot -> Steel Pipe
                 'tConstructorForSteelPipe','pSteelPipe',20* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForSteelPipe"),...                   %%%%%%%%%%%%%%
                 'pSteelIngot','tConstructorForSteelBeam',60* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForSteelBeam"),...                  %Steel Ingot -> Steel Beam
                 'tConstructorForSteelBeam','pSteelBeam',15* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForSteelBeam"),...                   %%%%%%%%%%%%%%
                 'pIronRod','tConstructorForScrew',10* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForScrew"),...                             %Iron Rod -> Screw                      
                 'tConstructorForScrew','pScrew',40* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForScrew"),...                               %%%%%%%%%%%%%%
                 'pWire','tConstructorForCable',60* (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForCable"),...                                %Wire -> Cable
                 'tConstructorForCable','pCable',30 * (global_info.Overclock_Percentage/100)* global_info.Counters("tConstructorForCable"),...                              s%%%%%%%%%%%%%% 
                 'pIronRod','tAssemblerForRotor',20* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForRotor"),...                                                                             %Iron Rod + Screw -> Rotor
                 'pScrew','tAssemblerForRotor',100* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForRotor"),...                                                                              %%%%%%%%%%%%%%                                               
                 'tAssemblerForRotor','pRotor',4* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForRotor"),...                                                                                %%%%%%%%%%%%%%  
                 'pIronPlate','tAssemblerForReinforcedIronPlate',30* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForReinforcedIronPlate"),...                                               %Iron Plate + Screw -> Reinforced Iron Plate
                 'pScrew','tAssemblerForReinforcedIronPlate',60* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForReinforcedIronPlate"),...                                                   %%%%%%%%%%%%%%
                 'tAssemblerForReinforcedIronPlate','pReinforcedIronPlate',5* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForReinforcedIronPlate"),...                                      %%%%%%%%%%%%%%  
                 'pWire','tAssemblerForStator',40* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForStator"),...                                                                              %Wire + Steel Pipe -> Stator
                 'pSteelPipe','tAssemblerForStator',15* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForStator"),...                                                                         %%%%%%%%%%%%%%                       
                 'tAssemblerForStator','pStator',5* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForStator"),...                                                                             %%%%%%%%%%%%%%    
                 'pIronRod','tAssemblerForModularFrame',12* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForModularFrame"),...                                                               %Iron Rod + Reinforced Iron Plate -> Modular Frame
                 'pReinforcedIronPlate','tAssemblerForModularFrame',3* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForModularFrame"),...                                                    %%%%%%%%%%%%%%
                 'tAssemblerForModularFrame','pModularFrame',2* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForModularFrame"),...                                                           %%%%%%%%%%%%%%   
                 'pReinforcedIronPlate','tAssemblerForSmartPlating',2* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForSmartPlating"),...                                                    %Reinforced Iron Plate + Rotor -> Smart Plating
                 'pRotor','tAssemblerForSmartPlating',2* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForSmartPlating"),...                                                                  %%%%%%%%%%%%%%
                 'tAssemblerForSmartPlating','pSmartPlating',2* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForSmartPlating"),...                                                           %%%%%%%%%%%%%%   
                 'pStator','tAssemblerForAutomatedWiring',5* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForAutomatedWiring"),...                                                           %Stator + Cable -> Automated Wiring
                 'pCable','tAssemblerForAutomatedWiring',100* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForAutomatedWiring"),...                                                          %%%%%%%%%%%%%%                       
                 'tAssemblerForAutomatedWiring','pAutomatedWiring',5* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForAutomatedWiring"),...                                                  %%%%%%%%%%%%%%  
                 'pModularFrame','tAssemblerForVersatileFramework',5* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForVersatileFramework"),...                                               %Modular Frame + Steel Beam -> Versatile Framework
                 'pSteelBeam','tAssemblerForVersatileFramework',60* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForVersatileFramework"),...                                                 %%%%%%%%%%%%%%            
                 'tAssemblerForVersatileFramework','pVersatileFramework',10* (global_info.Overclock_Percentage/100)* global_info.Counters("tAssemblerForVersatileFramework")                                            %%%%%%%%%%%%%%                                                                           
                };    
