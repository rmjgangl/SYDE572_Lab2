function Gaussian1D()
    load("lab2_1.mat");

    mu = 5;
    var = 1;
    stdev = sqrt(var);
    
    N1 = length(a);
    theta1_a = (1/N1)*sum(a);
    summation_a = (bsxfun(@minus, a, theta1_a)).^2;
    theta2_a = (1/N1)*sum(summation_a);
    N2 = length(b);
    theta1_b = (1/N2)*sum(b);
    summation_b = (bsxfun(@minus, b, theta1_b)).^2;
    theta2_b = (1/N2)*sum(summation_b);

    x = 0:0.01:10;
    y1 = normpdf(x, mu, stdev);
    y2 = normpdf(x, theta1_a, sqrt(theta2_a));
    y3 = normpdf(x, theta1_b, sqrt(theta2_b));
    
    plot(x,y1);
    hold on;
    plot(x,y2);
    plot(x,y3);
    legend('True p(x)','Estimated p(x) a', 'Estimated p(x) b');
    title('Gaussian: ML Estimate vs True PDF');
    xlabel('x');
    ylabel('p(x)');
    axis([0 10 0 0.5]);
    grid on;
    hold off;
end