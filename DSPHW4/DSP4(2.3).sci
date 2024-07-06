// กำหนดฟังก์ชันแบบแบ่งช่วง y(t)
function y = y_t(t)
    if t < 2 then
        y = 0;
    elseif t < 4 then
        y = 0.5 * (t - 2)^2;
    elseif t < 6 then
        y = 8 - 0.5 * (t - 2)^2;
    else
        y = 0;
    end
endfunction

// สร้างช่วงของค่า t
t = 0:0.01:8;
y = zeros(t);

// คำนวณค่า y สำหรับแต่ละค่า t
for i = 1:length(t)
    y(i) = y_t(t(i));
end

// วาดกราฟของฟังก์ชัน
plot(t, y)
xlabel('t')
ylabel('y(t)')
title('Plot of y(t)')
