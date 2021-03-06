
.::// RESPOSTAS //::.


1. Ta por ultimo |
				 v


2.
select count(*) as NumeroDeClientes from cliente;

select max(id) as NumeroDeClientes from cliente


3.
select * from produto where preco = (select max(preco) from produto);


4.
select * from produto where preco = (select min(preco) from produto);


5.
select produto.nome, departamento.nome from produto 
	inner join departamento on departamento.codigo = produto.departamento_codigo


6.
select departamento.nome, count(produto.codigo) as Numero_de_Produtos 
		from produto inner join departamento on produto.departamento_codigo = departamento.codigo
			group by departamento.codigo


7.
select pedido.numero, pedido.status_pedido, pedido.data_pedido, pedido.valor_bruto, pedido.desconto, pedido.valor_final, pedido.cliente_id, cliente.nome as NomeDoCliente, produto.nome as NomeDoProduto
		from cliente
			inner join pedido on cliente.id = pedido.cliente_id
			inner join item_pedido on pedido.numero = item_pedido.pedido_numero
			inner join produto on produto.codigo = item_pedido.produto_codigo;
     
     
8.
select year(data_pedido) as ano, month(data_pedido) as mes, count(numero) as pedidos
	from pedido
		group by year(data_pedido), month(data_pedido)
			order by month(data_pedido);


9.
select year(data_pedido) as Ano, month(data_pedido) as Mes, sum(valor_final) as Faturamento
	from pedido
		group by year(data_pedido), month(data_pedido)
			order by month(data_pedido);


10.
select departamento.nome as Nome, sum(produto.estoque*preco) as ValorTotalDoEstoque 
	from produto inner join departamento on produto.departamento_codigo = departamento.codigo
		group by departamento.codigo
        
        
        
						// info daora //
		select * from produto where nome like '%monitor%';



1. 
//inserções de departamentos//
INSERT INTO departamento (nome, descricao) VALUES ("Monitores", "Dispositivo de saída que transmite informação através da imagem");
INSERT INTO departamento (nome, descricao) VALUES ("Teclados", "Dispositivo utilizado para inserir dados");
INSERT INTO departamento (nome, descricao) VALUES ("Mouses", "Dispositivo utilizado para posicionar o cursos");
INSERT INTO departamento (nome, descricao) VALUES ("Impressoras 3d", "Dispositivo que imprime objetos em cadas");
INSERT INTO departamento (nome, descricao) VALUES ("Notebooks", "Computador portátil");
INSERT INTO departamento (nome, descricao) VALUES  ("Realidade virtual", "Dispositivo de interface entre usuario e um sistema em ambiente virtual");

INSERT INTO departamento ( nome, descricao) VALUES ("Smartphone","Aparelhos de ultimna geração");
INSERT INTO departamento ( nome, descricao) VALUES ("Smartwatch","smartphone de pulso super personalizado");


//inserções de clientes//
INSERT INTO cliente (nome, email, senha, cpf) VALUES ("Ozzy Orbourne", "bateater666@gmail.com", "mrcrowley555", "036.429.920-72"); 
INSERT INTO cliente (nome, email, senha, cpf) VALUES("Lemmy Kilmister", "aceofspades@gmail.com", "gambling123", "493.527.080-24");
INSERT INTO cliente (nome, email, senha, cpf) VALUES ("John cena", "tadadadann@gmail.com", "wwe123456", "844.571.870-38");
INSERT INTO cliente (nome, email, senha, cpf) VALUES ("Joakim Brodén", "laststandisgreatsong@gmail.com","sabaton12345", "542.464.380-90");
INSERT INTO cliente (nome, email, senha, cpf) VALUES ("Ronnie james Dio", "holydiver333@gmail.com", "rainbow1234", "483.690.720-97");

INSERT INTO cliente (nome, email, senha, cpf) VALUES("Zé Ramalho","zezaoramalho@gmail.com","ze12345", "123.456.789-10");
INSERT INTO cliente (nome, email, senha, cpf) VALUES("Alceu Valença","alceuocara@gmail.com","valencinha", "604.869.300-17");
INSERT INTO cliente (nome, email, senha, cpf) VALUES("Roberto Carlos","oreidampb@hotmail.com","nataltoai", "463.346.520-10");
INSERT INTO cliente (nome, email, senha, cpf) VALUES("Maria Betania","betinha@hotmail.com","bethmaria", "897.022.550-15");
INSERT INTO cliente (nome, email, senha, cpf) VALUES("Amado Batista","batistao@gmail.com","secretaria10", "193.907.860-10");


//inserções de endereços//
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("casa", "Rua Antônio Batista de Araújo", "333", "null", "Lagoa azul", "Natal", "RN", "59139-520", "1");
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("APTO", "Rua Dois", "999", "ap 200", "Planalto Anil IV", "São Luís", "MA", "65053-505", "1"); 
SELECT bairro, nome from endereco, cliente where cliente_id = id
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("casa", "Avenida Niterói", "12", null, "São Cristóvão", "Arcoverde", "PE", "56503-038", "2");
UPDATE endereco set complemento = null WHERE complemento ="null";
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("casa", "Rua Dois", "22", null, "Vila Mariley", "Rondonópolis", "MT", "78705-264", "3");
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("APTO", "Rua Afonso Pena", "42", "ap 300", "Vila Independente", "Imperatriz", "MA", "65914-106", "4");
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("casa", "Avenida Yusaburo Sasazaki", "23", null, "Santo Barion", "Marília", "SP", "17512-031", "5");
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES("casa", "Rua Júlio Mariano", "54", null, "Taquarí", "Rio Branco", "AC", "69906-420", "5");

INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("casa", "Avenida Sapopemba", "290", null, "São Mateus", "São Paulo", "SP","03989-000" ,  "6");
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("APTO", "Rua da Páscoa", "25", "ap 109", "Jardim Canadá", "Aparecida de Goiânia", "GO","74958-480" ,  "7");
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("casa", "Rua Clara Nunes", "439", null, "Itaúna", "São Gonçalo", "RJ","24461-630" ,  "8");
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("casa", "Rua Álvaro Cézar", "965", null, "João Eduardo II", "Rio Branco", "AC","69911-518" ,  "9");
INSERT INTO endereco (tipo, logradouro, numero, complemento, bairro, cidade, estado, cep, cliente_id) 
VALUES ("casa", "Rua João de Albuquerque", "799", null, "Santa Edwiges", "Arapiraca", "AL","57310-270" ,  "10");


//inserções de produtos//
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Monitor Ultra wide LG 29", "Full HD, HDMI, VESA, Ajuste de Ângulo, HDR 10, 99% sRGB", "1.399", "4", "https://images.kabum.com.br/produtos/fotos/157553/monitor-lg-led-29-ultrawide-ips-hdmi-displayport-hdr-com-vesa-e-alto-falante-amd-radeon-freesync-29wl500_1620660433_gg.jpg", "1");
UPDATE produto set preco = 1399 where codigo = 1
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES("Monitor Curvo WQHD 34", "Monitor curvo WQHD de 34” com VESA DisplayHDR 400 e taxa de atualização de 144 Hz que proporciona uma experiência gamer realmente imersiva","5893", "2", "https://i.dell.com/is/image/DellContent//content/dam/global-asset-library/Products/peripherals_dell/Monitors/dell_gaming/s3422dwg/s3422dwg_xfp_01_bk.psd?fmt=pjpg&pscan=auto&scl=1&hei=402&wid=443&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0&size=443,402", "1");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES("Monitor Gamer Samsung Odyssey 49", "QLED, Curvo, 144 Hz, Full HD, 1ms, FreeSync, HDR 600, 125% sRGB, HDMI/DisplayPort", "7299", "2", "https://images.kabum.com.br/produtos/fotos/94935/monitor-gamer-samsung-qled-49-super-ultra-ampla-curvo-full-hd-hdmi-display-port-freesync-144hz-1ms-altura-ajustavel-lc49hg90dmlxzd_1628016052_gg.jpg", "1");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Teclado Mecânico Gamer Husky Gaming Blizzard", "60%, RGB, Switch Gateron Brown, ABNT2, Branco - HGMO023", "279", "8", "https://images.kabum.com.br/produtos/fotos/163972/teclado-mecanico-gamer-husky-gaming-blizzard-rgb-switch-gateron-brown-abnt2-branco-hgmo023_1635794107_gg.jpg", "2");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Teclado Mecânico Gamer Razer Blackwidow V3", "Pro Yellow Switch, Preto", "1369", "5", "https://images.kabum.com.br/produtos/fotos/149164/teclado-mecanico-gamer-razer-blackwidow-v3-chroma-razer-switch-yellow-us-rz03-03541900-r3m1_1614017966_g.jpg", "2");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("MOUSE GAMER PICHAU P301", "4000DPI PRETO, PGM-P301-RGB", "89", "12", "https://www.pichau.com.br/mouse-gamer-pichau-p301-rgb-4000dpi-preto-pgm-p301-rgb?gclid=CjwKCAiAo4OQBhBBEiwA5KWu_0yZhUg3gZuZQWz2d11o_V3BXJSphzRcpIbfjErHCK8in-12bCakJxoCW1kQAvD_BwE", "3");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Mouse Gamer Husky Polar", "Rainbow, 6 Botões, 10000DPI - MO-HPO-RA", "99", "26", "https://images.kabum.com.br/produtos/fotos/114579/mouse-gamer-husky-polar-rainbow-6-botoes-10000dpi-mo-hpo-ra_1619468833_gg.jpg", "3");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Mouse Gamer Corsair Harpoon Wireless", "RGB, 6 Botões, 10000DPI, Preto", "332", "9", "https://images.kabum.com.br/produtos/fotos/101143/101143_1553692485_index_gg.jpg", "3");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Impressora 3D CREALITY LD002R", "Impressão LCD e Impressão de 6 a 18 Segundos/Camada", "1699", "3", "https://images.kabum.com.br/produtos/fotos/166012/impressora-3d-3dlab-ld002r-com-impressao-lcd-e-impressao-de-6-a-18-segundos-camada-9899010291_1628862342_gg.jpg", "4");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Impressora 3D Two Trees modelo Bluer Silence", "Impressora 3D Two Trees – Modelo Bluer A Bluer V3, versão mais atualizada, concilia um ótimo preço e itens de série de uma impressora de alta performance. ", "1804", "6", "https://3dfila.com.br/wp-content/uploads/2021/04/impressora-3d-bluer-two-trees.jpg", "4");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Notebook Dell Alienware M15 R6 15.6", "Notebook Dell Alienware M15 R6 15.6 FHD i7-11800H 1TBSSD 16GB Nvidia RTX 3070 8GB Win11 H Cinza US","14962", "3", "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQkziw1dbuMDulr91JQjyaaXMF_K9CPEHWJOFNY_o2DZcRrumOqJxlCJdBKlq7EXlQPZF-DC-KnmcstRKKOQtkngEBK56LPqTrF9RpiL24suLc08oY3T4FH&usqp=CAE", "5");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Óculos Quest 2 128gb", "Oculus Quest 2 é nosso sistema de realidade virtual tudo em um mais avançado até hoje. Cada detalhe foi projetado para fazer os mundos virtuais se adaptarem aos seus movimentos, permitindo que você explore jogos e experiências inspiradores com liberdade incomparável. ", "2998", "4", "https://http2.mlstatic.com/D_NQ_NP_802927-MLB48170313758_112021-O.webp", "6");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Valve Index Full Vr Kit", "Experiencie a nova geração de realidade virtual de alta qualidade com o Valve Index VR Kit.", "13199", "2", "https://http2.mlstatic.com/D_NQ_NP_918191-MLB49036786736_022022-O.webp", "6");

INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES("Smartphone Samsung Galaxy M12", "64GB 4G Wi-Fi Tela 6.5'' Dual Chip 4GB RAM Câmera Quádrupla + Selfie 8MP - Azul", "999", "321", "https://www.americanas.com.br/produto/3163815845?epar=bp_pl_00_go_tel_smartphone_todas_geral_gmv&opn=YSMESP&WT.srch=1&gclid=CjwKCAiAo4OQBhBBEiwA5KWu__FDW2HdajZ1UFoncXZdfJSR0ruCG42HF-QzdIs1eYHCpFdrdQfjWRoCPEsQAvD_BwE&cor=AZUL#&gid=1&pid=1", "7");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Smartphone Iphone 12","64GB Roxo, 5G, 6.1, 12MP ","5210","27","https://www.kabum.com.br/produto/285556/iphone-12-64gb-roxo-5g-6-1-12mp-mjnm3br-a%22,%227%22", "7");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Smartphone Motorola Moto E7","64GB Dual Chip Android 10 Tela 6.5 Helio G25 Helio G25 (2,0 GHz Octa-Core) Câmera 48MP+2MP - Cobre ","875","48","https://www.americanas.com.br/produto/2910438925?epar=bp_pl_00_go_tel_smartphone_todas_geral_gmv&opn=YSMESP&WT.srch=1&gclid=CjwKCAiAo4OQBhBBEiwA5KWu_8ozDeo3XSlVDekQzJp2zhdTWDpLe_aWKVTeeR2XRN5p-Hxg63tlmxoCfFMQAvD_BwE&cor=COBRE", "7");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Apple Watch","Apple Relógio série 7 GPS, 45 mm caixa de alumínio Midnight com pulseira esportiva Midnight ","3499","12","https://www.amazon.com.br/Apple-alum%C3%ADnio-Midnight-pulseira-esportiva/dp/B09HF6XBPF/ref=asc_df_B09HF6XBPF/?tag=googleshopp00-20&linkCode=df0&hvadid=559298940153&hvpos=&hvnetw=g&hvrand=14292876010104332009&hvpone=&hvptwo=&hvqmt=&hvdev=c&", "8");
INSERT INTO produto (nome, descricao, preco, estoque, link_foto, departamento_codigo)
VALUES ("Smartwatch Amazfit Band 5","Relógio Smartwatch Amazfit Band 5 com Alexa e Oximetro","220","54"," https://www.amazon.com.br/Rel%C3%B3gio-Smartwatch-Amazfit-Band-Oximetro/dp/B08DKWSVZG/ref=asc_df_B08DKWSVZG/?tag=googleshopp00-20&linkCode=df0&hvadid=379738801152&hvpos=&hvnetw=g&hvrand=14292876010104332009&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcm", "8");

//inserções de pedidos e items_pedidos, alteração de status para status_pedido por se tratar de palavra aparentemente reservada e inclusão de mais caracteres no VARCHAR//
	
    ALTER TABLE pedido
	ADD status_pedido VARCHAR(15) NOT NULL 
	AFTER numero
    
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES ("enviado", "2022-01-02", "5097", "300", "4797", "1"); 
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES ("3", "1699", "5097", "9", "1")
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-03-05", "14198", null, "14198", "1");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "13199", "13199", "13", "2");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "999", "999", "14", "2");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado","2022-02-16", "7299", "50", "7249", "2");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "7299", "7299", "3", "3");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-01-28", "31260", "600", "30660", "3");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("6", "5210", "31260", "15", "4");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-02-02", "2020", null, "2020", "4");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "1399", "1399", "1", "5");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "279", "279", "4", "5");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "332", "332", "8", "5");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-03-29", "24010", "750", "23260", "5");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("5", "2998", "14990", "12", "6");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("5", "1884", "9020", "10", "6");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-03-30", "1780", "180", "1600", "5");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("20", "89", "1780", "6", "7");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-04-24","220", null, "220", "5")
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "220", "220","18", "8");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-04-14", "6998", "50", "6948", "2");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("2", "3499", "6948", "17", "9");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-05-05", "99", null, "99", "3");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "99", "99", "7", "10");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-05-07", "5893", null, "5893", "8");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "5893", "5893", "2", "11");
INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-06-13", "875", "20", "855", "4");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1","875","875","16","12");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-06-27", "6998", "198", "6800", "8");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("2", "3499", "6998", "17", "13");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-06-15", "880", "30", "850", "10");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("4", "220", "880", "18", "14");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-07-11", "5210", "0", "5210", "9");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "5210", "5210", "15", "15");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-07-11", "198", "18", "180", "9");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("2", "99", "198", "7", "16");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-08-12", "3398", "98", "3300", "10");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("2", "1699", "3398", "9", "17");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-08-25", "13199", "99", "13100", "8");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "13199", "13199", "13", "18");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-09-03", "7299", "199", "7100", "7");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "7299", "7299", "3", "19");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-09-22", "445", "0", "445", "9");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("5", "89", "445", "6", "20");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-10-02", "1540", "40", "1500", "10");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("7", "220", "1540", "18", "21");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-10-17", "5996", "196", "5800", "3");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("2", "2998", "5996", "12", "22");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-11-16", "15630", "0", "15630", "7");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("3", "5210", "15630", "15", "23");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-12-01", "7299", "99", "7200", "6");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "7299", "7299", "3", "24");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-12-01", "1369", "169", "1200", "6");
INSERT INTO item_pedido (quantidade, valor_unitario, valor_total, produto_codigo, pedido_numero)
VALUES("1", "1369", "1369", "5", "25");

INSERT INTO pedido (status_pedido, data_pedido, valor_bruto, desconto, valor_final, cliente_id)
VALUES("enviado", "2022-12-23", "7000", "0", "7000", "8");
  
