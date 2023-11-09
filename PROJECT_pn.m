clear all; clc; 
global global_info
global_info.STOP_AT = 50;

% 1 = Impure, 2 = Normal, 3 = Pure
% Miner Tier = 1 -> Impure = 30, Normal = 60, Pure = 120
% Miner Tier = 2 -> Impure = 60, Normal = 120, Pure = 240
% Miner Tier = 3 -> Impure = 120, Normal = 240, Pure = 480
global_info.Node_Purity = 3;
global_info.Miner_Tier = 3;

% There are two types of storage: Normal and Industrial.
% Normal -> 24 Slots, Industrial -> 48 Slots
% Each slot can hold 100 of each object
global_info.Storage_Capacity = 24 * 100;

% Controls the number of versatile framework, smart plating and automted
% wiring needed to finish phase 2
global_info.required_vf = 1200;
global_info.required_sp = 1200;
global_info.required_aw = 1200;
global_info.completed_vf = false(1);
global_info.completed_sp = false(1);
global_info.completed_aw = false(1);

% Sets the initial number of machines in our system. Check the
% corresponding file for information.
counters()

% Global dictionaries
global_info.t_p_map = transition_place_map();
global_info.transision_output_rates = transition_output_rates();
global_info.time_of_first_firing = configureDictionary("string", "double");

pns = pnstruct('Space_Elevator_Phase_2_pdf');
dyn.m0 = {};

% dyn.ft = {'allothers',1,'tParticleAcceleratorForNuclearPasta',2,'tManufacturerForMagneticFieldGenerator',2,'tManufacturerForThermalPropulsionRocket',2,'tManufacturerForAdaptiveControlUnit',2,'tManufacturerForTurboMotor',8,'tManufacturerForSupercomputer',8,...
%    'tManufacturerForHighSpeedConnector',4,'tManufacturerForComputer',2,'tManufacturerForRadioControlUnit',4,'tManufacturerForCrystalOscillator',2,'tBlenderForFusedModularFrame',2,'tAssemblerForAssemblyDirectorSystem',4,'tAssemblerForVersatileFramework',2,...
%    'tAssemblerForAutomatedWiring',2,'tAssemblerForCircuitBoard',2,'tAssemblerForHeatSink',2,'tConstructorForQuartzCrystal',2,'tConstructorForSilica',2};
dyn.ft = {'allothers', 1,'tAssemblerForAutomatedWiring',2,'tAssemblerForVersatileFramework',2};
% dyn.ip = {"tSmelterForIron",1};

pni = initialdynamics(pns, dyn); 

Sim_Results = gpensim(pni);
% prnss(Sim_Results);  % print the simulation results 
 plotp(Sim_Results, {'pSteelBeam','pSteelPipe','pStator','pReinforcedIronPlate','pRotor','pModularFrame','pVersatileFramework','pSmartPlating','pAutomatedWiring'}); % plot the results
% plotp(Sim_Results, {"pCopperOre", "pCoal", "pIronOre"});

idle_time = zeros(1, length(Sim_Results.global_transitions));
active_idle_time = zeros(1, length(Sim_Results.global_transitions));
priority = zeros(1, length(Sim_Results.global_transitions));
transitions = strings(1, length(Sim_Results.global_transitions));
for i = 1:length(Sim_Results.global_transitions)
    transitions(i) = Sim_Results.global_transitions(i).name;
    % This assumes you do not have a completion time of 1, or you will get
    % a divide by zero error.
    idle_time(i) = 1 - Sim_Results.global_transitions(i).times_fired / (Sim_Results.completion_time - 1);
    if isKey(global_info.time_of_first_firing, transitions(i))
        active_idle_time(i) = 1 - Sim_Results.global_transitions(i).times_fired...
                            / (Sim_Results.completion_time - global_info.time_of_first_firing(transitions(i)));
    else
        active_idle_time(i) = 0;
    end
    priority(i) = get_priority(transitions(i));
end

table(transitions', round(idle_time * 100, 1)', round(active_idle_time * 100, 1)', priority', ...
    'VariableNames',["Transition name", "Idle time", "Active idle time", "Priority"])










