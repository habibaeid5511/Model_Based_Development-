K_u = 5;
Taw = 2;

for i = 1:5
    model = "Temperature_Control_System.slx";
    K_u = K_u + 1;
    Taw = Taw * i * 2;
    
    result = sim(model);
    plot(result.logsout.get("T"));
    hold on

    legendLables_Taw(i) = "Taw = " + num2str(Taw);
    legendLables_K_u(i) = "K_u = " + num2str(K_u);
    
    disp("simulation at K_u" + num2str(i) + " is complete");
    disp("simulation at Taw" + num2str(i) + " is complete");
end

legend(legendLables_K_u);
legend(legendLables_Taw);