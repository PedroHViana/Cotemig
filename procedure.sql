DELIMITER $$
CREATE PROCEDURE prctotal(IN qtdItens INT, IN codProduto INT, OUT valortotal DOUBLE)
BEGIN
 
SELECT(preco_unitario * qtdItens) INTO valorTotal FROM produto WHERE id = codProduto;

END
$$

CALL prcTotal(3, 1, @total);
SELECT @total;