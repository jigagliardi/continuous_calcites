t_new = 0:0.01:27

var = readtable('BV8a_deposition.csv');
BV8a = interp1(var.BV8a_age, var.BV8a_dep, t_new);
%BV8a(isnan(BV8a)) = 0

var = readtable('BV9a2_deposition.csv');
BV9a2 = interp1(var.BV9a2_age, var.BV9a2_dep, t_new);
%BV9a2(isnan(BV9a2)) = 0

var = readtable('BV9a2a_deposition.csv');
BV9a2a = interp1(var.BV9a2a_age, var.BV9a2a_dep, t_new);
%BV9a2a(isnan(BV9a2a)) = 0

var = readtable('BV9a2b_deposition.csv');
BV9a2b = interp1(var.BV9a2b_age, var.BV9a2b_dep, t_new);
%BV9a2b(isnan(BV9a2b)) = 0

var = readtable('BV9a2c_deposition.csv');
BV9a2c = interp1(var.BV9a2c_age, var.BV9a2c_dep, t_new);
%BV9a2c(isnan(BV9a2c)) = 0

var = readtable('BV9b_deposition.csv');
BV9b = interp1(var.BV9b_age, var.BV9b_dep, t_new);
%BV9b(isnan(BV9b)) = 0

var = readtable('BV9a1i_deposition.csv');
BV9a1i = interp1(var.BV9a1i_age, var.BV9a1i_dep, t_new);
%BV9a1i(isnan(BV9a1i)) = 0

%composite_sum = BV8a + BV9a2 + BV9a2a + BV9a2b + BV9a2c + BV9b + BV9a1i
table = [BV8a; BV9a2; BV9a2a; BV9a2b; BV9a2c; BV9b; BV9a1i];
avg_dep_rate = mean(table,'omitnan');

figure (1)
hold all
yyaxis left
plot(t_new, avg_dep_rate)
xlabel('Time (ka)')
ylabel('Deposition rate (mm/ka)')
xlim([17,27])
hold off
