% This function calculates 
function [] = print_metrics(sim_results)

global global_info

idle_time = zeros(1, length(sim_results.global_transitions));
active_idle_time = zeros(1, length(sim_results.global_transitions));
transitions = strings(1, length(sim_results.global_transitions));
total_count = 0;
for i = 1:length(sim_results.global_transitions)
    transitions(i) = sim_results.global_transitions(i).name;
    % This assumes you do not have a completion time of 1, or you will get
    % a divide by zero error.
    idle_time(i) = 1 - (sim_results.global_transitions(i).times_fired / ceil((ceil(sim_results.completion_time) - 1) / get_firingtime(i)));
    if isKey(global_info.time_of_first_firing, transitions(i))
        active_idle_time(i) = 1 - (sim_results.global_transitions(i).times_fired...
                            / ceil((ceil(sim_results.completion_time) - global_info.time_of_first_firing(transitions(i))) / get_firingtime(i)));
    else
        active_idle_time(i) = 0;
    end
    total_count = total_count + global_info.Counters(transitions(i));
end

table(transitions', round(idle_time * 100, 1)', round(active_idle_time * 100, 1)',...
    'VariableNames',["Transition name", "Idle time", "Active idle time"])

fprintf("\tTotal number of machines in system: %d\n", total_count)
