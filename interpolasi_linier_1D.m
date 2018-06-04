% data = rand(10,2)*100;
data = data1;
% data(:,1) = ceil(linspace(1,30,10));

range = 200;
n = min(data(:,1));
x = max(data(:,1));
idx = n:range:x;
output = idx';
for i = 1:length(data(:,1))
    if i+1<=length(data(:,1))
        for j = 1:length(idx);
            if idx(j)>=data(i,1) && idx(j)<data(i+1,1)
                x1 = data(i,1);
                y1 = data(i,2);
                x2 = data(i+1,1);
                y2 = data(i+1,2);
                m = (y2-y1)/(x2-x1);
                output(j,2) = m*(output(j,1)-x1)+y1;
            else
                continue
            end
        end
    else
        output(end,2) = data(end,2);
    end
end


figure;
subplot(211);
plot(data(:,1),data(:,2));
subplot(212);
plot(output(:,1),output(:,2));