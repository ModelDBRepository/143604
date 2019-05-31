% peak_bAP_grapher.m
% graphs stored peak bAP voltage to study sealed_end effect
figure
hold on

for i=1:149
cmd=['load max_bAP_ctrl_' num2str(i) '.txt;'];
eval(cmd)
end

for trace=1:10:149
cmd=['X=max_bAP_ctrl_' num2str(trace) '(:,1);'];
% disp(cmd)
eval(cmd)
for i=1:2
Y(1, i)=trace + 1.5 - i;
for j=1:length(X)
cmd = ['Z(i,j)=max_bAP_ctrl_' num2str(trace) '(j,2);'];
eval(cmd)
end
end
if j<length(Z)
    Z(:,j+1:end)=[]; % resizes Z if necessary
end
surf(X, Y, Z)
end