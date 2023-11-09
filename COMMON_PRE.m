function [fire, transition] = COMMON_PRE(transition)

global global_info
fire = 1;

% Transitions should not fire if the number of tokens in the corresponding
% output will be greater than the maximum storage.
if ntokens(global_info.t_p_map(transition.name)) + global_info.transision_output_rates(transition.name)...
        >= global_info.Counters(transition.name) * global_info.Storage_Capacity
    fire = 0;
end

% Phase 2 stop conditions.
switch transition.name
    case "tAssemblerForVersatileFramework"
        if ntokens("pVersatileFramework") >= global_info.required_vf
            % We no longer need to create more versatile frameworks
            global_info.completed_vf = true(1);
            fire = 0;
        end
    case "tAssemblerForSmartPlating"
        if ntokens("pSmartPlating") >= global_info.required_sp
            % We no longer need to create more smart plating
            global_info.completed_sp = true(1);
            fire = 0;
        end
    case "tAssemblerForAutomatedWiring"
        if ntokens("pAutomatedWiring") >= global_info.required_aw
            % We no longer need to create more automated wire
            global_info.completed_aw = true(1);
            fire = 0;
        end
    otherwise
end

