function resultado = paralelepipedo(Ms, cor)
  V = [
  0 0 0;
  1 0 0;
  0 0 1;
  1 0 1;
  0 1 0;
  1 1 0;
  0 1 1;
  1 1 1]';
  A = [
  1 2;
  2 4;
  4 3;
  3 1;
  5 6;
  6 8;
  8 7;
  7 5;
  1 5;
  2 6;
  3 7;
  4 8]';

  Vn = Ms*V;

  qtd_arestas = size(A, 2);

  %clf();
  hold on;

  for i = 1:qtd_arestas
      Vi_idx = A(1, i);
      Vj_idx = A(2, i);

      Vi = Vn(:, Vi_idx);
      Vj = Vn(:, Vj_idx);

      data = [Vi Vj];

      data

      plot3(data(1, :), data(2, :), data(3, :), cor);
  endfor

  hold off;

endfunction
