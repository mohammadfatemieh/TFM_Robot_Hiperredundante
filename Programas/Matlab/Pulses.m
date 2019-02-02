function [Pulses] = Pulses(t0,t1,x_0,v_0,v_1,a_0,a_1)

% Para utilizar la funcion con variables simbolicas
% syms t;
% Polinomio = Poli4_Pos(t0,t1,x_0,v_0,v_1,a_0,a_1);
% try
% Pulses=double(subs(Polinomio,t,t1))-x_0;
% catch
% Pulses=subs(Polinomio,t,t1)-x_0;  
% end

%%Respuesta de Poli4 ante las varibles de entrada para eliminar las
%%variables simbólicas
Pulses = (2*a_0*t0^6 - 2*a_1*t0^6 - 12*t0^5*v_0 - 12*t0^5*v_1 + 24*t0^4*x_0 + 24*t1^4*x_0 - 12*a_0*t0^5*t1 + 12*a_1*t0^5*t1 - 24*t0*t1^4*v_0 + 60*t0^4*t1*v_0 + 36*t0^4*t1*v_1 - 96*t0*t1^3*x_0 - 96*t0^3*t1*x_0 + 12*a_0*t0^2*t1^4 - 32*a_0*t0^3*t1^3 + 30*a_0*t0^4*t1^2 + 8*a_1*t0^3*t1^3 - 18*a_1*t0^4*t1^2 + 96*t0^2*t1^3*v_0 - 120*t0^3*t1^2*v_0 - 24*t0^3*t1^2*v_1 + 144*t0^2*t1^2*x_0)/(24*t0^4 - 96*t0^3*t1 + 144*t0^2*t1^2 - 96*t0*t1^3 + 24*t1^4) - x_0 - (t1^3*(8*a_0*t0^3 + 16*a_0*t1^3 + 16*a_1*t0^3 + 8*a_1*t1^3 - 24*t0^2*v_0 + 24*t0^2*v_1 + 24*t1^2*v_0 - 24*t1^2*v_1 - 24*a_0*t0*t1^2 - 24*a_1*t0^2*t1))/(24*t0^4 - 96*t0^3*t1 + 144*t0^2*t1^2 - 96*t0*t1^3 + 24*t1^4) + (t1^2*(12*a_0*t1^4 + 12*a_1*t0^4 + 24*a_0*t0^3*t1 + 24*a_1*t0*t1^3 + 72*t0*t1^2*v_0 - 72*t0^2*t1*v_0 - 72*t0*t1^2*v_1 + 72*t0^2*t1*v_1 - 36*a_0*t0^2*t1^2 - 36*a_1*t0^2*t1^2))/(24*t0^4 - 96*t0^3*t1 + 144*t0^2*t1^2 - 96*t0*t1^3 + 24*t1^4) + (t1^4*(12*t0*v_1 - 12*t0*v_0 + 12*t1*v_0 - 12*t1*v_1 + 6*a_0*t0^2 + 6*a_0*t1^2 + 6*a_1*t0^2 + 6*a_1*t1^2 - 12*a_0*t0*t1 - 12*a_1*t0*t1))/(24*t0^4 - 96*t0^3*t1 + 144*t0^2*t1^2 - 96*t0*t1^3 + 24*t1^4) + (t1*(24*t0^4*v_1 + 24*t1^4*v_0 - 24*a_0*t0*t1^4 - 24*a_1*t0^4*t1 - 96*t0*t1^3*v_0 - 96*t0^3*t1*v_1 + 48*a_0*t0^2*t1^3 - 24*a_0*t0^3*t1^2 - 24*a_1*t0^2*t1^3 + 48*a_1*t0^3*t1^2 + 72*t0^2*t1^2*v_0 + 72*t0^2*t1^2*v_1))/(24*t0^4 - 96*t0^3*t1 + 144*t0^2*t1^2 - 96*t0*t1^3 + 24*t1^4);

end

