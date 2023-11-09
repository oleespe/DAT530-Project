clear all; clc; 
global global_info
global_info.STOP_AT = 100;

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
global_info.required_vf = 500;
global_info.required_sp = 500;
global_info.required_aw = 100;
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
dyn.ft = {'allothers',1, 'tAssemblerForAutomatedWiring',2, 'tAssemblerForVersatileFramework',2};

pni = initialdynamics(pns, dyn); 

Sim_Results = gpensim(pni);
% prnss(Sim_Results);
plotp(Sim_Results, {'pVersatileFramework','pSmartPlating','pAutomatedWiring'});
% plotp(Sim_Results, {"pCopperOre", "pCoal", "pIronOre"});

print_metrics(Sim_Results);










