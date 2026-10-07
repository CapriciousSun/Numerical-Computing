function calculateError(A, b, xa)

x = [1; 1];

RFE = max(abs(x - xa));
RBE = max(abs(b - A * xa));
EMF = (RFE / max(x)) / (RBE / max(b));
disp(A * xa);
disp(b - A * xa);

fprintf(' RFE=%.10f RBE=%.10f EMF=%.10f\n',RFE,RBE,EMF);