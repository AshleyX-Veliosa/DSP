// กำหนดค่าพารามิเตอร์
alpha = 1;
t = -1:0.01:5; // ช่วงเวลาจาก -1 ถึง 5 โดยมีขนาดก้าว 0.01

// นิยาม x(t) และ h(t)
x = zeros(1, length(t));
h = zeros(1, length(t));

for i = 1:length(t)
    if t(i) >= 0 then
        x(i) = exp(-alpha * t(i)); // x(t) = e^(-alpha * t) u(t)
        h(i) = 1; // h(t) = u(t)
    end
end

// คำนวณการคอนโวลูชั่น y(t)
y = (1 / alpha) * (1 - exp(-alpha * t));
y(t < 0) = 0; // y(t) = 0 เมื่อ t < 0

// พล็อตกราฟของ x(t), h(t), และ y(t)
clf;
plot(t, x, 'b'); // พล็อต x(t) ด้วยสีน้ำเงิน
plot(t, h, 'g'); // พล็อต h(t) ด้วยสีเขียว
plot(t, y, 'r'); // พล็อต y(t) ด้วยสีแดง
legend(['x(t)'; 'h(t)'; 'y(t) = x(t) * h(t)']);
title('สัญญาณ x(t), h(t), และ y(t) = x(t) * h(t)');
xlabel('t');
ylabel('แอมพลิจูด');
