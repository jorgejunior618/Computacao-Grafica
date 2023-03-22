function resultado = piramide4(Ms, cor)
  V = [
  0 0 0;
  1 0 1;
  0 0 1;
  1 0 0;
  0.5 1 0.5]';
  A = [
  1 4;
  4 2;
  2 3;
  3 1;
  1 5;
  2 5;
  3 5;
  4 5]';

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
