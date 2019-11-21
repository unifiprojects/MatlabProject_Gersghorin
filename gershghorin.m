function gershghorin(A)
    c = diag(A);
    % righe
    r = computeByRows(A);
    draw(c,r,'b');
    % colonne calcolate come righe della trasposta
    r = computeByRows(A');
    draw(c,r,'r');
end

function r = computeByRows(A)
        n = size(A,1);
        c = diag(A);
        r = zeros(n,1);
        for i = 1:n
           r(i) = sum(abs( A(i,:))) - abs(c(i));
        end
end

function draw(c, r, colore)
    % c, r sono i vettori centri e raggi
    n = length(c);
    for i = 1:n
        drawCircle(c(i),r(i),colore);
    end
end

function drawCircle(c, r, colore)
    grid on;
    hold on;
    axis equal;
    th = 0:pi/50:2*pi;
    xunit = r * cos(th) + c;
    yunit = r * sin(th) + 0;
    plot(xunit, yunit, colore);
    hold off;
end