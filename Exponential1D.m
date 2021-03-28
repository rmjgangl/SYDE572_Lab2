function Exponential1D()
    load("lab2_1.mat");
    
    lambda = 1;
    N1 = length(a);
    theta_a = N1/(sum(a)); 
    N2 = length(b);
    theta_b = N2/(sum(b));

    x = 0:0.01:10;
    exponent = bsxfun(@times, lambda, x);
    y1 = lambda*exp(-exponent);
    exponent_a = bsxfun(@times, theta_a, x);
    y2 = theta_a*exp(-exponent_a);
    exponent_b = bsxfun(@times, theta_b, x);
    y3 = theta_b*exp(-exponent_b);
    
    plot(x,y1)
    hold on;
    plot(x,y2)
    plot(x,y3)
    legend('True p(x)','Estimated p(x) a', 'Estimated p(x) b');
    title('Exponential: ML Estimate vs True PDF');
    xlabel('x');
    ylabel('p(x)');
    axis([0 10 0 1.2]);
    grid on;
    hold off;
end