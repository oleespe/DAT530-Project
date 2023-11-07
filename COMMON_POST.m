function [] = COMMON_POST(transition)

global global_info

if ~isKey(global_info.time_of_first_firing, transition.name)
    global_info.time_of_first_firing(transition.name) = current_time();
end
    
if global_info.completed_vf && global_info.completed_sp && global_info.completed_aw
    global_info.STOP_SIMULATION = 1;
end

% Round-robin. Each time a transition fires, it gives higher priority to
% every other transition using the same resourcess. This is a naive
% approach and can lead to certain issues, but it should be fine for the
% purpose of this project.
% Only transitions that have shared inputs are accounted for.
priority = get_priority(transition.name);
switch transition.name
    case "tSmelterForIron" % Iron ore 
        priorset("tFoundryForSteelIngot", priority+1)
    case "tFoundryForSteelIngot" % Iron ore + Coal
        priorset("tSmelterForIron", priority+1)
    case "tConstructorForIronPlate" % Iron Ingot
        priorset("tConstructorForIronRod", priority+1)
    case "tConstructorForIronRod" % Iron Ingot
        priorset("tConstructorForIronPlate", priority+1)
    case "tConstructorForSteelPipe" % Steel Ingot
        priorset("tConstructorForSteelBeam", priority+1)
    case "tConstructorForSteelBeam" % Steel Ingot
        priorset("tConstructorForSteelPipe", priority+1)
    case "tConstructorForScrew" % Iron Rod
        priorset("tAssemblerForRotor", priority+1)
        priorset("tAssemblerForModularFrame", priority+1)
    case "tConstructorForCable" % Wire
        priorset("tAssemblerForStator", priority+1)
    case "tAssemblerForRotor" % Iron Rod + Screw
        priorset("tConstructorForScrew", priority+1)
        priorset("tAssemblerForModularFrame", priority+1)
        priorset("tAssemblerForReinforcedIronPlate", priority+1)
    case "tAssemblerForReinforcedIronPlate" % Iron Plate + Screw
        priorset("tAssemblerForRotor", priority+1)
    case "tAssemblerForStator" % Wire + Steel Pipe
        priorset("tConstructorForCable", priority+1)
    case "tAssemblerForModularFrame" % Iron Rod + Reinforced Iron Plate
        priorset("tConstructorForScrew", priority+1)
        priorset("tAssemblerForRotor", priority+1)
        priorset("tAssemblerForSmartPlating", priority+1)
    case "tAssemblerForSmartPlating" % Reinforced Iron Plate + Rotor
        priorset("tAssemblerForModularFrame", priority+1)
    otherwise
end

% 'pIronOre','tSmelterForIron'
% 
% 'pCopperOre','tSmelterForCopper'
% 
% 'pIronOre','tFoundryForSteelIngot'
% 'pCoal','tFoundryForSteelIngot'
% 
% 'pIronIngot','tConstructorForIronPlate'
% 
% 'pIronIngot','tConstructorForIronRod'
% 
% 'pCopperIngot','tConstructorForWire'
% 
% 'pSteelIngot','tConstructorForSteelPipe'
% 
% 'pSteelIngot','tConstructorForSteelBeam'
% 
% 'pIronRod','tConstructorForScrew'
% 
% 'pWire','tConstructorForCable'
% 
% 'pIronRod','tAssemblerForRotor'
% 'pScrew','tAssemblerForRotor'
% 
% 'pIronPlate','tAssemblerForReinforcedIronPlate'
% 'pScrew','tAssemblerForReinforcedIronPlate'
% 
% 'pWire','tAssemblerForStator'
% 'pSteelPipe','tAssemblerForStator'
% 
% 'pIronRod','tAssemblerForModularFrame'
% 'pReinforcedIronPlate','tAssemblerForModularFrame'
% 
% 'pReinforcedIronPlate','tAssemblerForSmartPlating'
% 'pRotor','tAssemblerForSmartPlating'
% 
% 'pStator','tAssemblerForAutomatedWiring'
% 'pCable','tAssemblerForAutomatedWiring'
% 
% 'pModularFrame','tAssemblerForVersatileFramework'
% 'pSteelBeam','tAssemblerForVersatileFramework'











