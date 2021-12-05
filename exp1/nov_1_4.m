load SH600004.mat;

date_index = 1:100;
m_close = [];
m_balance = [];
m_len = length(M);

for index = m_len - 99:m_len
    m_close = [m_close, M(index, 5)];
    m_balance = [m_balance, (M(index, 5) - M(index - 1, 5)) / M(index - 1, 5)];
end

subplot(3, 1, 1);
scatter(date_index, m_balance);
hold on;

subplot(3, 1, 2);
plot(date_index, m_balance);
hold on;

subplot(3, 1, 3);
bar(date_index, m_balance);
