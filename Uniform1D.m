function Uniform1D()
    load("lab2_1.mat");
    
    lower = 0;
    upper = 10;
    upper_a = max(a);
    lower_a = min(a); 
    upper_b = max(b);
    lower_b = min(b); 

    x1 = 0:0.01:10;
    y1 = unifpdf(x1,lower,upper);
    x2 = lower_a:0.01:upper_a;
    y2 = unifpdf(x2,lower_a,upper_a);
    x3 = lower_b:0.01:upper_b;
    y3 = unifpdf(x3,lower_b,upper_b);
    
    plot(x1,y1);
    hold on; 
    plot(x2,y2);
    plot(x3,y3);
    legend('True p(x)','Estimated p(x) a', 'Estimated p(x) b');
    title('Uniform: ML Estimates vs True PDF');
    xlabel('x');
    ylabel('p(x)');
    axis([-0.5 10.5 0 0.35]);
    grid on;
    hold off;
end