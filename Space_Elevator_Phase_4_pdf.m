function [pns] = PROJECT_pn_pdf()
global global_info
pns.PN_name = 'Space Elevator Phase 4';


pns.set_of_Ps = {'pCateriumOre','pIronOre','pCopperOre','pCoal','pLimestone','pBauxite','pRawQuartz','pSulfur','pAluminumScrap','pCrudeOil','pWater','pNitrogenGas',...
                 'pConcrete','pCateriumIngot','pIronIngot','pCopperIngot','pSteelIngot','pSilica','pQuartzCrystal','pAluminumIngot','pPlastic','pHeavyOilResidue','pSulfuricAcid','pAluminaSolution','pRubber',...
                 'pIronPlate','pIronRod','pCopperSheet','pWire','pCopperPowder','pQuickwire','pSteelPipe','pSteelBeam','pAluminumCasing','pScrew','pCable',...
                 'pReinforcedIronPlate','pEncasedIndustrialBeam','pModularFrame','pStator','pRotor','pMotor','pHeavyModularFrame','pSmartPlating','pAlcladAluminumSheet','pHeatSink','pCrystalOscillator',...
                 'pCircuitBoard','pAILimiter','pComputer','pHighSpeedConnector','pSupercomputer','pElectromagneticControlRod','pBattery',...
                 'pAutomatedWiring','pFusedModularFrame','pRadioControlUnit','pAdaptiveControlUnit','pVersatileFramework','pModularEngine','pTurboMotor','pCoolingSystem','pPressureConversionCube',...
                 'pAssemblyDirectorSystem','pThermalPropulsionRocket','pMagneticFieldGenerator','pNuclearPasta'
                 };

pns.set_of_Ts = {'tCateriumOreMiner','tIronOreMiner','tCopperOreMiner','tCoalMiner','tLimestoneMiner','tBauxiteMiner','tRawQuartzMiner','tSulfurMiner','tCrudeOilExtractor','tWaterExtractor','tNitrogenGasResourceWellExtractor',...
                 'tSmelterForCaterium','tSmelterForIron','tSmelterForCopper','tFoundryForSteelIngot','tFoundryForAluminumIngot',...
                 'tConstructorForIronPlate','tConstructorForIronRod','tConstructorForScrew','tConstructorForCopperSheet','tConstructorForWire','tConstructorForCopperPowder','tConstructorForQuickwire','tConstructorForSilica',...
                 'tConstructorForSteelPipe','tConstructorForSteelBeam','tConstructorForConcrete','tConstructorForCable','tConstructorForQuartzCrystal','tConstructorForAluminumCasing',...
                 'tRefineryForPlasticAndHeavyOilResidue','tRefineryForRubberAndHeavyOilResidue','tRefineryForAluminaSolutionAndSilica','tRefineryForAluminumScrapAndWater','tRefineryForSulfuricAcid',...               
                 'tAssemblerForReinforcedIronPlate','tAssemblerForStator','tAssemblerForRotor','tAssemblerForMotor','tAssemblerForSmartPlating','tAssemblerForModularFrame','tAssemblerForCircuitBoard',...
                 'tAssemblerForAlcladAluminumSheet','tAssemblerForAutomatedWiring','tAssemblerForVersatileFramework','tAssemblerForEncasedIndustrialBeam','tAssemblerAILimiter','tAssemblerForHeatSink',...
                 'tAssemblerForPressureConversionCube','tAssemblerForElectromagneticControlRod','tAssemblerForAssemblyDirectorSystem',...
                 'tBlenderForCoolingSystem','tBlenderForFusedModularFrame','tBlenderForBatteryAndWater',...
                 'tManufacturerForHeavyModularFrame','tManufacturerForComputer','tManufacturerForHighSpeedConnector','tManufacturerForSupercomputer','tManufacturerForAdaptiveControlUnit','tManufacturerForCrystalOscillator',...
                 'tManufacturerForRadioControlUnit','tManufacturerForModularEngine','tManufacturerForTurboMotor','tManufacturerForThermalPropulsionRocket','tManufacturerForMagneticFieldGenerator',...
                 'tParticleAcceleratorForNuclearPasta'
                 }; 

pns.set_of_As = {'tCateriumOreMiner', 'pCateriumOre',30*2^(global_info.Miner_Tier-1)*2^(global_info.Node_Purity-1)*global_info.Counters("tCateriumOreMiner"),...    %Caterium Ore
                 'tIronOreMiner','pIronOre',30*2^(global_info.Miner_Tier-1)*2^(global_info.Node_Purity-1)*global_info.Counters("tIronOreMiner"),...               %Iron Ore
                 'tCopperOreMiner','pCopperOre',30*2^(global_info.Miner_Tier-1)*2^(global_info.Node_Purity-1)*global_info.Counters("tCopperOreMiner"),...         %Copper Ore
                 'tCoalMiner','pCoal',30*2^(global_info.Miner_Tier-1)*2^(global_info.Node_Purity-1)*global_info.Counters("tCoalMiner"),...                         %Coal
                 'tLimestoneMiner','pLimestone',30 * 2^(global_info.Miner_Tier-1)*2^(global_info.Node_Purity-1)*global_info.Counters("tLimestoneMiner"),...          %Limestone
                 'tBauxiteMiner','pBauxite',30 * 2^(global_info.Miner_Tier-1)*2^(global_info.Node_Purity-1)*global_info.Counters("tBauxiteMiner"),...                %Bauxite
                 'tRawQuartzMiner','pRawQuartz',30*2^(global_info.Miner_Tier-1)*2^(global_info.Node_Purity-1)*global_info.Counters("tRawQuartzMiner"),...          %Raw Quartz
                 'tSulfurMiner','pSulfur',30*2^(global_info.Miner_Tier-1)*2^(global_info.Node_Purity-1)*global_info.Counters("tSulfurMiner"),...                   %Sulfur
                 'tCrudeOilExtractor','pCrudeOil',60*2^(global_info.Node_Purity-1)*global_info.Counters("tCrudeOilExtractor"),...                                     %Crude Oil   
                 'tWaterExtractor','pWater',30*2^(global_info.Node_Purity-1)*global_info.Counters("tWaterExtractor"),...                                              %Water
                 'tNitrogenGasResourceWellExtractor','pNitrogenGas',30*2^(global_info.Node_Purity-1)*global_info.Counters("tNitrogenGasResourceWellExtractor"),...    %Nitrogen Gas
                 'pLimestone','tConstructorForConcrete',45*global_info.Counters("tConstructorForConcrete"),...                     %Limestone -> Concrete
                 'tConstructorForConcrete','pConcrete',15*global_info.Counters("tConstructorForConcrete"),...                      %%%%%%%%%%%%%%                            
                 'pCateriumOre','tSmelterForCaterium',45*global_info.Counters("tSmelterForCaterium"),...                           %Caterium Ore -> Caterium Ingot
                 'tSmelterForCaterium','pCateriumIngot',15*global_info.Counters("tSmelterForCaterium"),...                         %%%%%%%%%%%%%%                                        
                 'pIronOre','tSmelterForIron',30*global_info.Counters("tSmelterForIron"),...                                       %Iron Ore -> Iron Ingot
                 'tSmelterForIron','pIronIngot',30*global_info.Counters("tSmelterForIron"),...                                     %%%%%%%%%%%%%%                                         
                 'pCopperOre','tSmelterForCopper',30*global_info.Counters("tSmelterForCopper"),...                                 %Copper Ore -> Copper Ingot
                 'tSmelterForCopper','pCopperIngot',30*global_info.Counters("tSmelterForCopper"),...                               %%%%%%%%%%%%%%                                 
                 'pIronOre','tFoundryForSteelIngot',45*global_info.Counters("tFoundryForSteelIngot"),...                           %Iron Ore + Coal -> Steel Ingot
                 'pCoal','tFoundryForSteelIngot',45*global_info.Counters("tFoundryForSteelIngot"),...                              %%%%%%%%%%%%%%                           
                 'tFoundryForSteelIngot','pSteelIngot',45*global_info.Counters("tFoundryForSteelIngot"),...                       %%%%%%%%%%%%%%              
                 'pRawQuartz','tConstructorForSilica',45*global_info.Counters("tConstructorForSilica"),...                         %Raw Quartz -> Silica
                 'tConstructorForSilica','pSilica',75*global_info.Counters("tConstructorForSilica"),...                            %%%%%%%%%%%%%% 
                 'pRawQuartz','tConstructorForQuartzCrystal',75*global_info.Counters("tConstructorForQuartzCrystal"),...           %Raw Quartz -> Quartz Crystal
                 'tConstructorForQuartzCrystal','pQuartzCrystal',45*global_info.Counters("tConstructorForQuartzCrystal"),...       %%%%%%%%%%%%%%
                 'pAluminumScrap','tFoundryForAluminumIngot',90*global_info.Counters("tFoundryForAluminumIngot"),...               %Aluminum Scrap + Silica -> Aluminum Ingot
                 'pSilica','tFoundryForAluminumIngot',75*global_info.Counters("tFoundryForAluminumIngot"),...                      %%%%%%%%%%%%%%                       
                 'tFoundryForAluminumIngot','pAluminumIngot',60*global_info.Counters("tFoundryForAluminumIngot"),...               %%%%%%%%%%%%%% 
                 'pIronIngot','tConstructorForIronPlate',30*global_info.Counters("tConstructorForIronPlate"),...                   %Iron Ingot -> Iron Plate
                 'tConstructorForIronPlate','pIronPlate',20*global_info.Counters("tConstructorForIronPlate"),...                   %%%%%%%%%%%%%%
                 'pIronIngot','tConstructorForIronRod',15*global_info.Counters("tConstructorForIronRod"),...                       %Iron Ingot -> Iron Rod
                 'tConstructorForIronRod','pIronRod',15*global_info.Counters("tConstructorForIronRod"),...                        %%%%%%%%%%%%%%
                 'pCopperIngot','tConstructorForCopperSheet',20*global_info.Counters("tConstructorForCopperSheet"),...             %Copper Ingot -> Copper Sheet
                 'tConstructorForCopperSheet','pCopperSheet',10*global_info.Counters("tConstructorForCopperSheet"),...             %%%%%%%%%%%%%%
                 'pCopperIngot','tConstructorForWire',15*global_info.Counters("tConstructorForWire"),...                           %Copper Ingot -> Wire
                 'tConstructorForWire','pWire',30*global_info.Counters("tConstructorForWire"),...                                  %%%%%%%%%%%%%%
                 'pCopperIngot','tConstructorForCopperPowder',300*global_info.Counters("tConstructorForCopperPowder"),...          %Copper Ingot -> Copper Powder
                 'tConstructorForCopperPowder','pCopperPowder',50*global_info.Counters("tConstructorForCopperPowder"),...          %%%%%%%%%%%%%%
                 'pCateriumIngot','tConstructorForQuickwire',12*global_info.Counters("tConstructorForQuickwire"),...               %Caterium Ingot -> Quickwire
                 'tConstructorForQuickwire','pQuickwire',60*global_info.Counters("tConstructorForQuickwire"),...                   %%%%%%%%%%%%%%    
                 'pSteelIngot','tConstructorForSteelPipe',30*global_info.Counters("tConstructorForSteelPipe"),...                  %Steel Ingot -> Steel Pipe
                 'tConstructorForSteelPipe','pSteelPipe',20*global_info.Counters("tConstructorForSteelPipe"),...                   %%%%%%%%%%%%%%
                 'pSteelIngot','tConstructorForSteelBeam',60*global_info.Counters("tConstructorForSteelBeam"),...                  %Steel Ingot -> Steel Beam
                 'tConstructorForSteelBeam','pSteelBeam',15*global_info.Counters("tConstructorForSteelBeam"),...                   %%%%%%%%%%%%%%
                 'pAluminumIngot','tConstructorForAluminumCasing',90*global_info.Counters("tConstructorForAluminumCasing"),...     %Aluminum Ingot -> Aluminum Casing                                       
                 'tConstructorForAluminumCasing','pAluminumCasing',60*global_info.Counters("tConstructorForAluminumCasing"),...    %%%%%%%%%%%%%%
                 'pIronRod','tConstructorForScrew',10*global_info.Counters("tConstructorForScrew"),...                             %Iron Rod -> Screw                      
                 'tConstructorForScrew','pScrew',40*global_info.Counters("tConstructorForScrew"),...                               %%%%%%%%%%%%%%
                 'pWire','tConstructorForCable',60*global_info.Counters("tConstructorForCable"),...                                %Wire -> Cable
                 'tConstructorForCable','pCable',30*global_info.Counters("tConstructorForCable"),...                              %%%%%%%%%%%%%% 
                 'pCrudeOil','tRefineryForPlasticAndHeavyOilResidue',30*global_info.Counters("tRefineryForPlasticAndHeavyOilResidue"),...                    %Crude Oil -> Plastic + Heavy Oil Residue
                 'tRefineryForPlasticAndHeavyOilResidue','pPlastic',20*global_info.Counters("tRefineryForPlasticAndHeavyOilResidue"),...                     %%%%%%%%%%%%%%       
                 'tRefineryForPlasticAndHeavyOilResidue','pHeavyOilResidue',10*global_info.Counters("tRefineryForPlasticAndHeavyOilResidue"),...             %%%%%%%%%%%%%% 
                 'pCrudeOil','tRefineryForRubberAndHeavyOilResidue',30*global_info.Counters("tRefineryForRubberAndHeavyOilResidue"),...                      %Crude Oil -> Rubber + Heavy Oil Residue
                 'tRefineryForPlasticAndHeavyOilResidue','pRubber',20*global_info.Counters("tRefineryForRubberAndHeavyOilResidue"),...                       %%%%%%%%%%%%%%
                 'tRefineryForRubberAndHeavyOilResidue','pHeavyOilResidue',20*global_info.Counters("tRefineryForRubberAndHeavyOilResidue"),...               %%%%%%%%%%%%%%     
                 'pBauxite','tRefineryForAluminaSolutionAndSilica',120*global_info.Counters("tRefineryForAluminaSolutionAndSilica"),...                      %Bauxite + Water -> Alumina Solution + Silica
                 'pWater','tRefineryForAluminaSolutionAndSilica',180*global_info.Counters("tRefineryForAluminaSolutionAndSilica"),...                        %%%%%%%%%%%%%%
                 'tRefineryForAluminaSolutionAndSilica','pAluminaSolution',120*global_info.Counters("tRefineryForAluminaSolutionAndSilica"),...              %%%%%%%%%%%%%%
                 'tRefineryForAluminaSolutionAndSilica','pSilica',50*global_info.Counters("tRefineryForAluminaSolutionAndSilica"),...                        %%%%%%%%%%%%%%
                 'pAluminaSolution','tRefineryForAluminumScrapAndWater',240*global_info.Counters("tRefineryForAluminumScrapAndWater"),...                    %Alumina Solution + Water -> Aluminum Scrap + Water
                 'pCoal','tRefineryForAluminumScrapAndWater',120*global_info.Counters("tRefineryForAluminumScrapAndWater"),...                               %%%%%%%%%%%%%%        
                 'tRefineryForAluminumScrapAndWater','pAluminumScrap',360*global_info.Counters("tRefineryForAluminumScrapAndWater"),...                      %%%%%%%%%%%%%%
                 'tRefineryForAluminumScrapAndWater','pWater',120*global_info.Counters("tRefineryForAluminumScrapAndWater"),...                              %%%%%%%%%%%%%%
                 'pSulfur','tRefineryForSulfuricAcid',50*global_info.Counters("tRefineryForSulfuricAcid"),...                                                %Sulfur + Water -> Sulfuric Acid
                 'pWater','tRefineryForSulfuricAcid',50*global_info.Counters("tRefineryForSulfuricAcid"),...                                                 %%%%%%%%%%%%%%                                   
                 'tRefineryForSulfuricAcid','pSulfuricAcid',50*global_info.Counters("tRefineryForSulfuricAcid"),...                                          %%%%%%%%%%%%%%    
                 'pIronRod','tAssemblerForRotor',20*global_info.Counters("tAssemblerForRotor"),...                                                           %Iron Rod + Screw -> Rotor
                 'pScrew','tAssemblerForRotor',100*global_info.Counters("tAssemblerForRotor"),...                                                            %%%%%%%%%%%%%%                                               
                 'tAssemblerForRotor','pRotor',4*global_info.Counters("tAssemblerForRotor"),...                                                              %%%%%%%%%%%%%%  
                 'pIronPlate','tAssemblerForReinforcedIronPlate',30*global_info.Counters("tAssemblerForReinforcedIronPlate"),...                             %Iron Plate + Screw -> Reinforced Iron Plate
                 'pScrew','tAssemblerForReinforcedIronPlate',60*global_info.Counters("tAssemblerForReinforcedIronPlate"),...                                 %%%%%%%%%%%%%%
                 'tAssemblerForReinforcedIronPlate','pReinforcedIronPlate',5*global_info.Counters("tAssemblerForReinforcedIronPlate"),...                    %%%%%%%%%%%%%%  
                 'pWire','tAssemblerForStator',40*global_info.Counters("tAssemblerForStator"),...                                                            %Wire + Steel Pipe -> Stator
                 'pSteelPipe','tAssemblerForStator',15*global_info.Counters("tAssemblerForStator"),...                                                       %%%%%%%%%%%%%%                       
                 'tAssemblerForStator','pStator',5*global_info.Counters("tAssemblerForStator"),...                                                           %%%%%%%%%%%%%%    
                 'pIronRod','tAssemblerForModularFrame',12*global_info.Counters("tAssemblerForModularFrame"),...                                             %Iron Rod + Reinforced Iron Plate -> Modular Frame
                 'pReinforcedIronPlate','tAssemblerForModularFrame',3*global_info.Counters("tAssemblerForModularFrame"),...                                  %%%%%%%%%%%%%%
                 'tAssemblerForModularFrame','pModularFrame',2*global_info.Counters("tAssemblerForModularFrame"),...                                         %%%%%%%%%%%%%%   
                 'pReinforcedIronPlate','tAssemblerForSmartPlating',2*global_info.Counters("tAssemblerForSmartPlating"),...                                  %Reinforced Iron Plate + Rotor -> Smart Plating
                 'pRotor','tAssemblerForSmartPlating',2*global_info.Counters("tAssemblerForSmartPlating"),...                                                %%%%%%%%%%%%%%
                 'tAssemblerForSmartPlating','pSmartPlating',2*global_info.Counters("tAssemblerForSmartPlating"),...                                         %%%%%%%%%%%%%%   
                 'pRotor','tAssemblerForMotor',10*global_info.Counters("tAssemblerForMotor"),...                                                             %Rotor + Stator -> Motor
                 'pStator','tAssemblerForMotor',10*global_info.Counters("tAssemblerForMotor"),...                                                            %%%%%%%%%%%%%%
                 'tAssemblerForMotor','pMotor',5*global_info.Counters("tAssemblerForMotor"),...                                                              %%%%%%%%%%%%%%   
                 'pAluminumIngot','tAssemblerForAlcladAluminumSheet',30*global_info.Counters("tAssemblerForAlcladAluminumSheet"),...                         %Aluminum Ingot + Copper Ingot -> Alclad Aluminum Sheet
                 'pCopperIngot','tAssemblerForAlcladAluminumSheet',10*global_info.Counters("tAssemblerForAlcladAluminumSheet"),...                           %%%%%%%%%%%%%%
                 'tAssemblerForAlcladAluminumSheet','pAlcladAluminumSheet',30*global_info.Counters("tAssemblerForAlcladAluminumSheet"),...                   %%%%%%%%%%%%%% 
                 'pAlcladAluminumSheet','tAssemblerForHeatSink',75*global_info.Counters("tAssemblerForHeatSink"),...                                         %AlcladAluminumSheet + Copper Sheet -> Heat Sink
                 'pCopperSheet','tAssemblerForHeatSink',45*global_info.Counters("tAssemblerForHeatSink"),...                                                 %%%%%%%%%%%%%%
                 'tAssemblerForHeatSink','pHeatSink',15*global_info.Counters("tAssemblerForHeatSink"),...                                                    %%%%%%%%%%%%%%   
                 'pConcrete','tAssemblerForEncasedIndustrialBeam',30*global_info.Counters("tAssemblerForEncasedIndustrialBeam"),...                          %Concrete + Steel Beam -> Encased Industrial Beam                       
                 'pSteelBeam','tAssemblerForEncasedIndustrialBeam',24*global_info.Counters("tAssemblerForEncasedIndustrialBeam"),...                         %%%%%%%%%%%%%%   
                 'tAssemblerForEncasedIndustrialBeam','pEncasedIndustrialBeam',6*global_info.Counters("tAssemblerForEncasedIndustrialBeam"),...              %%%%%%%%%%%%%%   
                 'pCopperSheet','tAssemblerForCircuitBoard',30*global_info.Counters("tAssemblerForCircuitBoard"),...                                         %Copper Sheet + Plastic -> Circuit Board
                 'pPlastic','tAssemblerForCircuitBoard',60*global_info.Counters("tAssemblerForCircuitBoard"),...                                             %%%%%%%%%%%%%%                           
                 'tAssemblerForCircuitBoard','pCircuitBoard',15*global_info.Counters("tAssemblerForCircuitBoard"),...                                        %%%%%%%%%%%%%%    
                 'pStator','tAssemblerForAutomatedWiring',5*global_info.Counters("tAssemblerForAutomatedWiring"),...                                         %Stator + Cable -> Automated Wiring
                 'pCable','tAssemblerForAutomatedWiring',100*global_info.Counters("tAssemblerForAutomatedWiring"),...                                        %%%%%%%%%%%%%%                       
                 'tAssemblerForAutomatedWiring','pAutomatedWiring',5*global_info.Counters("tAssemblerForAutomatedWiring"),...                                %%%%%%%%%%%%%%  
                 'pCopperSheet','tAssemblerAILimiter',25*global_info.Counters("tAssemblerAILimiter"),...                                                     %Copper Sheet + Quickwire -> AI Limiter
                 'pQuickwire','tAssemblerAILimiter',100*global_info.Counters("tAssemblerAILimiter"),...                                                      %%%%%%%%%%%%%%                      
                 'tAssemblerAILimiter','pAILimiter',5*global_info.Counters("tAssemblerAILimiter"),...                                                        %%%%%%%%%%%%%% 
                 'pModularFrame','tAssemblerForVersatileFramework',5*global_info.Counters("tAssemblerForVersatileFramework"),...                             %Modular Frame + Steel Beam -> Versatile Framework
                 'pSteelBeam','tAssemblerForVersatileFramework',60*global_info.Counters("tAssemblerForVersatileFramework"),...                               %%%%%%%%%%%%%%            
                 'tAssemblerForVersatileFramework','pVersatileFramework',10*global_info.Counters("tAssemblerForVersatileFramework"),...                      %%%%%%%%%%%%%% 
                 'pStator','tAssemblerForElectromagneticControlRod',6*global_info.Counters("tAssemblerForElectromagneticControlRod"),...                     %Stator + AI Limiter -> Electromagnetic Control Rod
                 'pAILimiter','tAssemblerForElectromagneticControlRod',4*global_info.Counters("tAssemblerForElectromagneticControlRod"),...                  %%%%%%%%%%%%%%
                 'tAssemblerForElectromagneticControlRod','pElectromagneticControlRod',4*global_info.Counters("tAssemblerForElectromagneticControlRod"),...  %%%%%%%%%%%%%% 
                 'pFusedModularFrame','tAssemblerForPressureConversionCube',1*global_info.Counters("tAssemblerForPressureConversionCube"),...                %Fused Modular Frame + Radio Control Unit -> Pressure Conversion Cube
                 'pRadioControlUnit','tAssemblerForPressureConversionCube',2*global_info.Counters("tAssemblerForPressureConversionCube"),...                 %%%%%%%%%%%%%%
                 'tAssemblerForPressureConversionCube','pPressureConversionCube',1*global_info.Counters("tAssemblerForPressureConversionCube"),...           %%%%%%%%%%%%%%  
                 'pAdaptiveControlUnit','tAssemblerForAssemblyDirectorSystem',6*global_info.Counters("tAssemblerForAssemblyDirectorSystem"),...              %Adaptive Control Unit + Supercomputer -> Assembly Director System
                 'pSupercomputer','tAssemblerForAssemblyDirectorSystem',3*global_info.Counters("tAssemblerForAssemblyDirectorSystem"),...                    %%%%%%%%%%%%%%
                 'tAssemblerForAssemblyDirectorSystem','pAssemblyDirectorSystem',3*global_info.Counters("tAssemblerForAssemblyDirectorSystem"),...           %%%%%%%%%%%%%%           
                 'pHeatSink','tBlenderForCoolingSystem',12*global_info.Counters("tBlenderForCoolingSystem"),...                                              %Heat Sink + Rubber + Water + Nitrogen Gas -> Cooling System
                 'pRubber','tBlenderForCoolingSystem',12*global_info.Counters("tBlenderForCoolingSystem"),...                                                %%%%%%%%%%%%%%                                
                 'pWater','tBlenderForCoolingSystem',30*global_info.Counters("tBlenderForCoolingSystem"),...                                                 %%%%%%%%%%%%%%
                 'pNitrogenGas','tBlenderForCoolingSystem',150*global_info.Counters("tBlenderForCoolingSystem"),...                                          %%%%%%%%%%%%%%                              
                 'tBlenderForCoolingSystem','pCoolingSystem',6*global_info.Counters("tBlenderForCoolingSystem"),...                                          %%%%%%%%%%%%%%  
                 'pHeavyModularFrame','tBlenderForFusedModularFrame',3*global_info.Counters("tBlenderForFusedModularFrame"),...                              %Heavy Modular Frame + Aluminum Casing + Nitrogen Gas -> Fused Modular Frame
                 'pAluminumCasing','tBlenderForFusedModularFrame',150*global_info.Counters("tBlenderForFusedModularFrame"),...                               %%%%%%%%%%%%%%
                 'pNitrogenGas','tBlenderForFusedModularFrame',75*global_info.Counters("tBlenderForFusedModularFrame"),...                                   %%%%%%%%%%%%%%
                 'tBlenderForFusedModularFrame','pFusedModularFrame',3*global_info.Counters("tBlenderForFusedModularFrame"),...                              %%%%%%%%%%%%%%    
                 'pSulfuricAcid','tBlenderForBatteryAndWater',50*global_info.Counters("tBlenderForBatteryAndWater"),...                                      %Sulfuric Acid + Alumina Solution + Aluminum Casing -> Battery + Water
                 'pAluminaSolution','tBlenderForBatteryAndWater',40*global_info.Counters("tBlenderForBatteryAndWater"),...                                   %%%%%%%%%%%%%%                
                 'pAluminumCasing','tBlenderForBatteryAndWater',20*global_info.Counters("tBlenderForBatteryAndWater"),...                                    %%%%%%%%%%%%%%
                 'tBlenderForBatteryAndWater','pBattery',20*global_info.Counters("tBlenderForBatteryAndWater"),...                                           %%%%%%%%%%%%%%
                 'tBlenderForBatteryAndWater','pWater',30*global_info.Counters("tBlenderForBatteryAndWater"),...                                             %%%%%%%%%%%%%%               
                 'pQuartzCrystal','tManufacturerForCrystalOscillator',36*global_info.Counters("tManufacturerForCrystalOscillator"),...                       %Quartz Crystal + Cable + Reinforced Iron Plate --> Crystal Oscillator
                 'pCable','tManufacturerForCrystalOscillator',28*global_info.Counters("tManufacturerForCrystalOscillator"),...                               %%%%%%%%%%%%%%       
                 'pReinforcedIronPlate','tManufacturerForCrystalOscillator',5*global_info.Counters("tManufacturerForCrystalOscillator"),...                  %%%%%%%%%%%%%%
                 'tManufacturerForCrystalOscillator','pCrystalOscillator',2*global_info.Counters("tManufacturerForCrystalOscillator"),...                    %%%%%%%%%%%%%%
                 'pAluminumCasing','tManufacturerForRadioControlUnit',160*global_info.Counters("tManufacturerForRadioControlUnit"),...                       %Aluminum Casing + Computer + Crystal Oscillator -> Radio Control Unit
                 'pComputer','tManufacturerForRadioControlUnit',6*global_info.Counters("tManufacturerForRadioControlUnit"),...                               %%%%%%%%%%%%%%        
                 'pCrystalOscillator','tManufacturerForRadioControlUnit',6*global_info.Counters("tManufacturerForRadioControlUnit"),...                      %%%%%%%%%%%%%%
                 'tManufacturerForRadioControlUnit','pRadioControlUnit',10*global_info.Counters("tManufacturerForRadioControlUnit"),...                      %%%%%%%%%%%%%%  
                 'pMotor','tManufacturerForModularEngine',2*global_info.Counters("tManufacturerForModularEngine"),...                                        %Motor + Rubber + Smart Plating -> Modular Engine
                 'pRubber','tManufacturerForModularEngine',15*global_info.Counters("tManufacturerForModularEngine"),...                                      %%%%%%%%%%%%%%
                 'pSmartPlating','tManufacturerForModularEngine',2*global_info.Counters("tManufacturerForModularEngine"),...                                 %%%%%%%%%%%%%%
                 'tManufacturerForModularEngine','pModularEngine',1*global_info.Counters("tManufacturerForModularEngine"),...                                %%%%%%%%%%%%%%  
                 'pModularFrame','tManufacturerForHeavyModularFrame',10*global_info.Counters("tManufacturerForHeavyModularFrame"),...                        %Modular Frame + Steel Pipe + Encased Industrial Beam + Screw -> Heavy Modular Frame
                 'pSteelPipe','tManufacturerForHeavyModularFrame',30*global_info.Counters("tManufacturerForHeavyModularFrame"),...                           %%%%%%%%%%%%%%
                 'pEncasedIndustrialBeam','tManufacturerForHeavyModularFrame',10*global_info.Counters("tManufacturerForHeavyModularFrame"),...               %%%%%%%%%%%%%%
                 'pScrew','tManufacturerForHeavyModularFrame',200*global_info.Counters("tManufacturerForHeavyModularFrame"),...                              %%%%%%%%%%%%%%
                 'tManufacturerForHeavyModularFrame','pHeavyModularFrame',2*global_info.Counters("tManufacturerForHeavyModularFrame"),...                    %%%%%%%%%%%%%%  
                 'pCircuitBoard','tManufacturerForComputer',50*global_info.Counters("tManufacturerForComputer"),...                                          %Circuit Board + Cable + Plastic + Screw -> Computer
                 'pCable','tManufacturerForComputer',45*global_info.Counters("tManufacturerForComputer"),...                                                 %%%%%%%%%%%%%%                                     
                 'pPlastic','tManufacturerForComputer',90*global_info.Counters("tManufacturerForComputer"),...                                               %%%%%%%%%%%%%%
                 'pScrew','tManufacturerForComputer',260*global_info.Counters("tManufacturerForComputer"),...                                                %%%%%%%%%%%%%%                                           
                 'tManufacturerForComputer','pComputer',5*global_info.Counters("tManufacturerForComputer"),...                                               %%%%%%%%%%%%%%    
                 'pQuickwire','tManufacturerForHighSpeedConnector',840*global_info.Counters("tManufacturerForHighSpeedConnector"),...                        %Quickwire + Cable + Circuit Board -> High Speed  Connector
                 'pCable','tManufacturerForHighSpeedConnector',150*global_info.Counters("tManufacturerForHighSpeedConnector"),...                            %%%%%%%%%%%%%%            
                 'pCircuitBoard','tManufacturerForHighSpeedConnector',15*global_info.Counters("tManufacturerForHighSpeedConnector"),...                      %%%%%%%%%%%%%%
                 'tManufacturerForHighSpeedConnector','pHighSpeedConnector',15*global_info.Counters("tManufacturerForHighSpeedConnector"),...                %%%%%%%%%%%%%%
                 'pComputer','tManufacturerForSupercomputer',30*global_info.Counters("tManufacturerForSupercomputer"),...                                    %Computer + AI Limiter + High-Speed Connector + Plastic -> Supercomputer
                 'pAILimiter','tManufacturerForSupercomputer',30*global_info.Counters("tManufacturerForSupercomputer"),...                                   %%%%%%%%%%%%%%                 
                 'pHighSpeedConnector','tManufacturerForSupercomputer',45*global_info.Counters("tManufacturerForSupercomputer"),...                          %%%%%%%%%%%%%%
                 'pPlastic','tManufacturerForSupercomputer',420*global_info.Counters("tManufacturerForSupercomputer"),...                                    %%%%%%%%%%%%%%
                 'tManufacturerForSupercomputer','pSupercomputer',15*global_info.Counters("tManufacturerForSupercomputer"),...                               %%%%%%%%%%%%%%   
                 'pCoolingSystem','tManufacturerForTurboMotor',60*global_info.Counters("tManufacturerForTurboMotor"),...                                     %Cooling System + Rubber + Motor -> Turbo Motor
                 'pRadioControlUnit','tManufacturerForTurboMotor',30*global_info.Counters("tManufacturerForTurboMotor"),...                                  %%%%%%%%%%%%%%                       
                 'pMotor','tManufacturerForTurboMotor',60*global_info.Counters("tManufacturerForTurboMotor"),...                                             %%%%%%%%%%%%%%
                 'pRubber','tManufacturerForTurboMotor',360*global_info.Counters("tManufacturerForTurboMotor"),...                                           %%%%%%%%%%%%%%
                 'tManufacturerForTurboMotor','pTurboMotor',15*global_info.Counters("tManufacturerForTurboMotor"),...                                        %%%%%%%%%%%%%%  
                 'pAutomatedWiring','tManufacturerForAdaptiveControlUnit',15*global_info.Counters("tManufacturerForAdaptiveControlUnit"),...                 %Automated Wiring + Circuit Board + Heavy Modular Frame + Computer -> Adaptive Control Unit
                 'pCircuitBoard','tManufacturerForAdaptiveControlUnit',10*global_info.Counters("tManufacturerForAdaptiveControlUnit"),...                    %%%%%%%%%%%%%%
                 'pHeavyModularFrame','tManufacturerForAdaptiveControlUnit',2*global_info.Counters("tManufacturerForAdaptiveControlUnit"),...                %%%%%%%%%%%%%%
                 'pComputer','tManufacturerForAdaptiveControlUnit',2*global_info.Counters("tManufacturerForAdaptiveControlUnit"),...                         %%%%%%%%%%%%%%               
                 'tManufacturerForAdaptiveControlUnit','pAdaptiveControlUnit',2*global_info.Counters("tManufacturerForAdaptiveControlUnit"),...              %%%%%%%%%%%%%%    
                 'pModularEngine','tManufacturerForThermalPropulsionRocket',5*global_info.Counters("tManufacturerForThermalPropulsionRocket"),...            %Modular Engine + Turbo Motor + Cooling System + Fused Modular Frame -> Thermal Propulsion Rocket
                 'pTurboMotor','tManufacturerForThermalPropulsionRocket',2*global_info.Counters("tManufacturerForThermalPropulsionRocket"),...               %%%%%%%%%%%%%%
                 'pCoolingSystem','tManufacturerForThermalPropulsionRocket',6*global_info.Counters("tManufacturerForThermalPropulsionRocket"),...            %%%%%%%%%%%%%%
                 'pFusedModularFrame','tManufacturerForThermalPropulsionRocket',2*global_info.Counters("tManufacturerForThermalPropulsionRocket"),...        %%%%%%%%%%%%%%
                 'tManufacturerForThermalPropulsionRocket','pThermalPropulsionRocket',2*global_info.Counters("tManufacturerForThermalPropulsionRocket"),...  %%%%%%%%%%%%%% 
                 'pVersatileFramework','tManufacturerForMagneticFieldGenerator',5*global_info.Counters("tManufacturerForMagneticFieldGenerator"),...        %Versatile Framework + Battery + Electro Magnetic Control Rod -> Magnetic Field Generator                                    
                 'pBattery','tManufacturerForMagneticFieldGenerator',10*global_info.Counters("tManufacturerForMagneticFieldGenerator"),...                   %%%%%%%%%%%%%%
                 'pElectromagneticControlRod','tManufacturerForMagneticFieldGenerator',2*global_info.Counters("tManufacturerForMagneticFieldGenerator"),...  %%%%%%%%%%%%%%                                                                                                      
                 'tManufacturerForMagneticFieldGenerator','pMagneticFieldGenerator',2*global_info.Counters("tManufacturerForMagneticFieldGenerator"),...     %%%%%%%%%%%%%% 
                 'pCopperPowder','tParticleAcceleratorForNuclearPasta',200*global_info.Counters("tParticleAcceleratorForNuclearPasta"),...                   %Copper Powder + Pressure Conversion Cube ->Nuclear Pasta
                 'pPressureConversionCube','tParticleAcceleratorForNuclearPasta',1*global_info.Counters("tParticleAcceleratorForNuclearPasta"),...           %%%%%%%%%%%%%%
                 'tParticleAcceleratorForNuclearPasta','pNuclearPasta',1*global_info.Counters("tParticleAcceleratorForNuclearPasta")                         %%%%%%%%%%%%%%                                                                   
                };    
