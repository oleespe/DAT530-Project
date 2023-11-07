% This functions sets the amount of any given machine in the system
% The amount of resources produced are dependant on these initial values
function [] = counters()

global global_info
global_info.Counters = containers.Map();

% Miners
global_info.Counters("tCateriumOreMiner") = 2;
global_info.Counters("tIronOreMiner") = 2;
global_info.Counters("tCopperOreMiner") = 1;
global_info.Counters("tCoalMiner") = 1;
global_info.Counters("tLimestoneMiner") = 3;
global_info.Counters("tBauxiteMiner") = 1;
global_info.Counters("tRawQuartzMiner") = 5;
global_info.Counters("tSulfurMiner") = 1;

%Extractors
global_info.Counters("tCrudeOilExtractor") = 3;
global_info.Counters("tWaterExtractor") = 2;
global_info.Counters("tNitrogenGasResourceWellExtractor") = 5;

%Smelters
global_info.Counters("tSmelterForCaterium") = 1;
global_info.Counters("tSmelterForIron") = 12;
global_info.Counters("tSmelterForCopper") = 10;

%Foundries
global_info.Counters("tFoundryForSteelIngot") = 7;
global_info.Counters("tFoundryForAluminumIngot") = 5;

%Constructors
global_info.Counters("tConstructorForIronPlate") = 5;
global_info.Counters("tConstructorForIronRod") = 5;
global_info.Counters("tConstructorForScrew") = 5;
global_info.Counters("tConstructorForCopperSheet") = 5;
global_info.Counters("tConstructorForWire") = 5;
global_info.Counters("tConstructorForCopperPowder") = 3;
global_info.Counters("tConstructorForQuickwire") = 3;
global_info.Counters("tConstructorForSilica") = 5;
global_info.Counters("tConstructorForSteelPipe") = 1;
global_info.Counters("tConstructorForSteelBeam") = 2;
global_info.Counters("tConstructorForConcrete") = 7;
global_info.Counters("tConstructorForCable") = 5;
global_info.Counters("tConstructorForQuartzCrystal") = 2;
global_info.Counters("tConstructorForAluminumCasing") = 6;

%Refineries
global_info.Counters("tRefineryForPlasticAndHeavyOilResidue") = 1;
global_info.Counters("tRefineryForRubberAndHeavyOilResidue") = 1;
global_info.Counters("tRefineryForAluminaSolutionAndSilica") = 1;
global_info.Counters("tRefineryForAluminumScrapAndWater") = 5;
global_info.Counters("tRefineryForSulfuricAcid") = 1;

%Assemblers
global_info.Counters("tAssemblerForReinforcedIronPlate") = 5;
global_info.Counters("tAssemblerForStator") = 3;
global_info.Counters("tAssemblerForRotor") = 3;
global_info.Counters("tAssemblerForMotor") = 3;
global_info.Counters("tAssemblerForSmartPlating") = 1;
global_info.Counters("tAssemblerForModularFrame") = 3;
global_info.Counters("tAssemblerForCircuitBoard") = 2;
global_info.Counters("tAssemblerForAlcladAluminumSheet") = 1;
global_info.Counters("tAssemblerForAutomatedWiring") = 1;
global_info.Counters("tAssemblerForVersatileFramework") = 1;
global_info.Counters("tAssemblerForEncasedIndustrialBeam") = 10;
global_info.Counters("tAssemblerAILimiter") = 1;
global_info.Counters("tAssemblerForHeatSink") = 1;
global_info.Counters("tAssemblerForPressureConversionCube") = 1;
global_info.Counters("tAssemblerForElectromagneticControlRod") = 1;
global_info.Counters("tAssemblerForAssemblyDirectorSystem") = 1;

%Blenders
global_info.Counters("tBlenderForCoolingSystem") = 1;
global_info.Counters("tBlenderForFusedModularFrame") = 5;
global_info.Counters("tBlenderForBatteryAndWater") = 1;

%Manufacturers
global_info.Counters("tManufacturerForHeavyModularFrame") = 1;
global_info.Counters("tManufacturerForComputer") = 1;
global_info.Counters("tManufacturerForHighSpeedConnector") = 1;
global_info.Counters("tManufacturerForSupercomputer") = 1;
global_info.Counters("tManufacturerForAdaptiveControlUnit") = 1;
global_info.Counters("tManufacturerForCrystalOscillator") = 1;
global_info.Counters("tManufacturerForRadioControlUnit") = 1;
global_info.Counters("tManufacturerForModularEngine") = 1;
global_info.Counters("tManufacturerForTurboMotor") = 1;
global_info.Counters("tManufacturerForThermalPropulsionRocket") = 1;
global_info.Counters("tManufacturerForMagneticFieldGenerator") = 1;

%Particle Accelerator
global_info.Counters("tParticleAcceleratorForNuclearPasta") = 1;