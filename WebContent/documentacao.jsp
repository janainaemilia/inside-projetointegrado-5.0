<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<!-- Header -->
<c:import url="head.jsp"/>

<body>
	<!-- Header -->
	<c:import url="header.jsp"/>
	
	<div class="container-fluid documentacao">
		<div class="row">			
			<div class="container col-lg-3 col-md-3 col-sm-3 col-xs-3 sidebar-container">
				<ul class="nav nav-pills nav-stacked" id="sidebar">
					<div class="sidebar-header">
						<h1>Sumário</h1>				
					</div>
					<li><a href="#conteudo1" data-toggle="tab" id="cont1">Introdução</a></li>
					<li><a href="#conteudo2" data-toggle="tab">Descrição e Função das Classes de Implementação</a></li>
					<li><!-- Link with dropdown items -->
		                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Autômato do Analisador Léxico<span class="caret"></span></a></li>
		                <ul class="collapse list-unstyled" id="homeSubmenu">
		                    <li><a href="#conteudo3" data-toggle="tab">Autômato</a></li>
		                    <li><a href="#conteudo4" data-toggle="tab">Lógica do Autômato</a></li>
		                </ul>
		        	<li>
		        		<a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false">Análise Sintática
		        			<span class="caret"></span>
		        		</a>
		        	</li>
		            <ul class="collapse list-unstyled" id="homeSubmenu2">
		                <li><a href="#conteudo5" data-toggle="tab">O que é</a></li>
		                <li><a href="#conteudo6" data-toggle="tab">Como funciona</a></li>
		                <li><a href="#conteudo7" data-toggle="tab">Árvores sintáticas do sistema</a></li>
		            </ul>
		        	<li><a href="#conteudo8" data-toggle="tab">Features Adicionadas</a></li>
		        	<li>
		            	<a href="#homeSubmenu3" data-toggle="collapse" aria-expanded="false">Análise Sintática das Features Adicionadas
		            		<span class="caret"></span>
		            	</a>
		           	</li>
		            <ul class="collapse list-unstyled" id="homeSubmenu3">
		                <li><a href="#conteudo9 " data-toggle="tab">Autômato</a></li>
		                <li><a href="#conteudo10" data-toggle="tab">Análise sintática das features adicionadas</a></li>
		            </ul>
		            <li><a href="#conteudo11" data-toggle="tab">Conclusão</a></li>
		  		</ul>
			</div>
			<div class="container-fluid col-lg-9 col-md-9 col-sm-9 col-xs-9 cont tab-content" >
				<div class="conteudo tab-pane fade in active" id="conteudo1">
					<div class="contDentro">
						<div class="titulos"><h1>Introdução</h1></div>
						<p><span class="priLetra">F</span>oi proposto ao grupo desenvolver uma solução para a implementação de um compilador, utilizando conceitos e ferramentas de automatos e linguagens formais. De acordo com o escopo passado pela orientadora, nós usamos como base o código do livro: AHO, A.V. ; SETHI, S. &amp; ULMMAN, J. D. Compiladores; Princípios, técnicas e ferramentas. 2a Ed. Addison-Wesley, 1986.Dentro do escopo do projeto foram definidas algumas etapas:</p>
						<p>Na primeira etapa nós implementamos o código do livro acima e descrevemos qual a
						função de cada classe dentro do código.</p>
						<p>Na segunda etapa foi proposto ao grupo fazer o esboço e descrição dos automatos
						envolvidos na Analise Léxica e da Arvore Sintática empregada na Analise Sintática do
						compilador.</p>
						<p>Na terceira etapa do projeto a orientadora nos propos a inclusão de duas modificações
						ao código, nós decidimos incluir o SWICH e o FOR.</p>
					</div>
				</div>
				<div class="conteudo tab-pane fade" id="conteudo2">
					<div class="contDentro">
						<div class="titulos"><h1> Descrição e Função das Classes de Implementação </h1></div>
						<h3>&bull; Main</h3>
						<p>Classe inicial do código o qual cria um analisador léxico e um analisado sintético.</p>
						<h3>&bull; Tag</h3>
						<p>Define as constantes para os tokens.</p>
						<h3>&bull; Token</h3>
						<p>Esta classe tem como função receber um inteiro e quem recebe este inteiro é o atributo tag. Esta atribuição é feita pelo construtor da classe. Além disso também	possui o método toString, e posteriormente esta classe é herdada.</p>
						<h3>&bull; Num</h3>
						<p>Esta classe realiza a atribuição de valores inteiros ao seu atributo value. A classe também herda da classe Token a tag tipo Num.</p>
						<h3>&bull; Word</h3>
						<p>Gerenciar os lexemas para as palavras reservadas, identificadores e tokens compostos. Outra função é gerenciar a forma escrita dos operadores no código intermediário.</p>
						<h3>&bull; Real</h3>
						<p>Classe para atribuições de número de ponto flutuante.</p>
						<h3>&bull; Lexer</h3>
						<p>A principal função desta classe é a leitura dos caracteres. O método principal é	Scan que reconhece números, identificadores e palavras reservadas. O método	readch é usada para ler o próximo caractere de entrada na variável peek. Em	determinado momento do código o método é sobrescrito para auxiliar o reconhecimento de Tokens compostos.</p>
						<h3>&bull; Env</h3>
						<p>Mapear os tokens de palavra a objetos da classe Id, que é definida no pacote	inter com as classes para as expressões e comandos.</p>
						<h3>&bull; Type</h3>
						<p>A classe Type é uma subclasse da classe Word. Ela cria uma variável que será	responsável pela alocação de memória, chamado width. Constrói quatro objetos, um para Int, Float, Char e Bool. Outra função é criar um método que faz
						conversões com os tipos “numéricos” (Int, Float, Char).</p>
						<h3>&bull; Array</h3>
						<p>Define o tipo de variável e o seu tamanho.</p>
						<h3>&bull; Node</h3>
						<p>Recebe os nós de expressão da classe Expr e os nós do comando da subclasse stmt e os implementa como objeto. Possui a variável lexline que serve para ter o	relato dos erros, guarda o n° da linha onde o erro do nó começou.</p>
						<h3>&bull; Expr</h3>
						<p>Possui dois campos para representar o operador e o tipo. É uma subclasse de	Node. O método gn retorna um “termo” que pode caber do lado direito de um comando de três endereços. Esse método retorna um termo derivado da
						expressão E = E1 + E2, onde X1 e X2 são endereços para os valores de E1 e E2 respectivamente.O método reduce calcula uma expressão para um união	endereço, como um identificador. Ele pega uma expressão E e retorna um nome
						temporário contendo o valor de E. Os métodos jumping e emijump geram códigos para expressões boolenas.</p>
						<h3>&bull; Id</h3>
						<p>Cria um método que guarda id e p nas variáveis herdadas type e op. Sua variável offset contém o endereço relativo.</p>
						<h3>&bull; Op</h3>
						<p>Faz uma implementação de reduce() usando o gen(), ele gera um termo e emite uma instrução para atribuir um nome temporário, e retorna o temporário.</p>
						<h3>&bull; Arith</h3>
						<p>A classe Arith implementa operadores binários como “+” e “*“. Além disso ela é capaz de verificar e converter tipos, fazendo com que o type se torne o tipo do resultado obtido, caso eles não possam ser convertidos ela retorna nulo.</p>
						<h3>&bull; Temp</h3>
						<p>A funcionalidade da classe Temp é contar a quantidade de nomes temporários.</p>
						<h3>&bull; Unary</h3>
						<p>Essa classe verifica o tipo de variável inserida e verifica se os dois operadores solicitados nela podem ser convertidos em números comuns, porém ela não chega a fazer a conversão.</p>
						<h3>&bull; Constant</h3>
						<p>Possui um construtor para carregar um objeto a partir de um inteiro. Nessa classe é gerada uma expressão booleana para duas saídas, true e false.</p>
						<h3>&bull; Logical</h3>
						<p>Essa classe tem como função construir um nó com os três operadores declarados nela e usa a função check para garantir que eles são booleanos. Ela também possui um método chamado gen para retornar uma variável temporária que é determinada pelo fluxo de controle, ela só segue para o próximo fluxo se a saída for true.</p>
						<h3>&bull; Or</h3>
						<p>Essa classe define se a variável é true ou false, e em seguida define seu fluxo. Em caso de true ela define a saída para T e para false ela define a primeira instrução de B2 como fluxo alternativo.</p>
						<h3>&bull; And</h3>
						<p>Possui a mesma funcionalidade da classe Or, com a diferença que ao invé de direcionar para T no caso de true, ela direciona para F.</p>
						<h3>&bull; Not</h3>
						<p>Essa classe implementa apenas um operador lógico, nela são chamadas as saídas true e false e as mesmas são invertidas.</p>
						<h3>&bull; Rel</h3>
						<p>A função dessa classe é verificar se os operandos são do mesmo tipo e se eles não são arranjos.</p>
						<h3>&bull; Access</h3>
						<p>Classe que permite a atribuição de valores boleanos a identificadores e a elementos de arranjo, de modo que uma expressão boleana possa ser um acesso a arranjo. A classe possui o método gen para gerar código &quot;normal&quot; e o método jumping para o código de desvio. O construtor dessa classe é chamado com um arranjo achatado a, um índice i, e o tipo p de um elemento no arranjo achatado.</p>
						<h3>&bull; Stmt</h3>
						<p>A classe Stmt faz parte do código intermediário para comandos e cada construção de comando é implementada por uma subclasse de Stmt. Os campos para os componentes de uma construção estão na subclasse relevante.</p>
						<h3>&bull; If</h3>
						<p>Classe responsável por criar um nó para um comando If. A criação deste nó é feito no construtor da classe. As propriedades expr e stmt contêm os nós para E e S, respectivamente.</p>
						<h3>&bull; Else</h3>
						<p>A implementação da classe Else é semelhante a classe If, esta classe cria um nó para um comando Else, para tratar as condicionais desses nós.</p>
						<h3>&bull; While</h3>
						<p>A construção de um objeto While é dividida entre o construtor da classe, que cria um nó com filhos nulos, e uma função de inicialização init(x, s), que define o filho expr como e e o filho stmt como s. A função gen(b, a) para gerar o código de três endereços, está no mesmo escopo da função correspondente gen() na classe If, com a diferença que o rótulo a é guardado no campo ager e que o código para stmt é seguido por um desvio para b para a próxima iteração do loop.</p>
						<h3>&bull; Do</h3>
						<p>A classe Do tem sua estrutura e lógica semelhante a classe While, também tendo a construção de um objeto dividida entre o construtor e a função de inicialização init(), tendo também o método gen(b, a) para gerar o código de três endereços.</p>
						<h3>&bull; Set</h3>
						<p>Classe que implementa atribuições com um identificador no lado esquerdo e uma expressão à direita. A maior parte do código na classe Set é para construir um nó e verificar tipos.</p>
						<h3>&bull; SetElem</h3>
						<p>Classe SetElem serve somente para implementar atribuições a um elemento do arranjo. A classe possui um construtor que recebe um Access e um Expr, e atribui os valores para os atributos index e expr, respectivamente. Possui os
						métodos Type e gen para checagem do tipo e geração do código.</p>
						<h3>&bull; Seq</h3>
						<p>Esta classe implementa uma sequência de comandos para teste. Os teste para comandos nulos são para evitar rótulos.</p>
						<h3>&bull; Break</h3>
						<p>Esta classe usa o campo stmt para que seja atribuído a ele a construção do comando envolvente. O objeto Break é um desvio para o rótulo stmt.after, que marca a instrução imediatamente após o código para stmt.</p>
						<h3>&bull; Parser</h3>
						<p>Esta classe faz parte do código do analisador sintático que lê um fluxo de tokens e constrói uma árvore de sintaxe chamando as funções construtoras apropriadas. A classe Parser possui um procedimento para cada não-terminal. Os
						procedimentos são baseados em uma gramática formada pela remoção da recursão à esquerda da gramática da linguagem fonte.</p>
					</div>
				</div>
				<div class="conteudo tab-pane fade" id="conteudo3">
					<div class="contDentro">
						<div class="titulos"><h1> Autômato do Analisador Léxico </h1></div>
						<p><span class="priLetra">A</span> função do analisador léxico em um compilador é ler os caracteres do código e produzir uma sequência de tokens para ser posteriormente utilizada numa outra etapa chamada de análise sintática. Abaixo, segue o autômato que representa o analisador léxico:</p>
						<div class="imagens">
							<img src="./images/automatoAnaliseLexica.png">
						</div>
					</div>
				</div>
				<div class="conteudo tab-pane fade" id="conteudo4">
					<div class="contDentro">
						<div class="titulos"><h1> Lógica do Autômato </h1></div>
						<p><span class="priLetra"> N</span>a imagem acima, podemos analisar que o autômato está lendo cada caractere da entrada, e de acordo com que o autômato vai validando se o caractere de fato está dentro do escopo, que pode ser, respectivamente:</p>
						<h4>&bull; inteiro</h4>
						<h4>&bull; real</h4>
						<h4>&bull; caractere</h4>
						<h4>&bull; string</h4>
						<h4>&bull; comentário</h4>
						<h4>&bull; operador</h4>
						<h4>&bull; identificador</h4>
						<h4>&bull; caracteres reservados</h4>
						<h4>&bull; palavras reservada</h4>
						<p>De acordo com que o autômato vai validando se o valor inputado corresponde a uma
						entrada válida, ele vai chegando ao estado final, e no código isso significa que será
						retornado um token bem formado.</p>
					</div>
				</div>
				<div class="conteudo tab-pane fade" id="conteudo5">
					<div class="contDentro">
						<div class="titulos"><h1> O que é Análise Sintática </h1></div>
						<p><span class="priLetra">A</span>nalise Sintática é o processo de analisar uma sequência de entradas para determinar a estrutura do programa, essa análise faz parte de um compilador junto a análise léxica e analise semântica.</p>
						<p>Ela transforma o texto na entrada em uma estrutura de dados, ou seja, uma arvore. O que é bom posteriormente para o processamento e captura a hierarquia das entradas.</p>
						<p>O analisador sintático pega o grupo de tokens da analise léxica e usa um grupo de regras para construir uma arvore sintática da estrutura.</p>
					</div>
				</div>
				<div class="conteudo tab-pane fade" id="conteudo6">
					<div class="contDentro">
						<div class="titulos"><h1> Como funciona a Análise Sintática </h1></div>
						<p><span class="priLetra">A</span> análise sintática agrupa tokens de acordo com a estrutura do programa. Ela recebe na entrada uma sequência de tokens que o analisador léxico fornece e sua saída é uma arvore sintática do programa.</p>
						<p>Nem todas as sequencias de tokens são programas validos, e distinguir sequências validas das inválidas é função da análise sintática. Para fazer essa distinção precisamos de duas coisas:</p>
						<h4>&bull; Uma linguagem para descrever as sequencias validas e a estrutura do programa.</h4>
						<h4>&bull; Um método para diferenciar a sequência valida da invalida e extrair a estrutura das sequências validas.</h4>
						<p>Basicamente, o que ocorre é que ela pega um certo programa, por exemplo: A = B * C + 5, e coloca seus tokens correspondentes em forma de arvore: Tokens correspondentes:</p>
						<div class="divisaoImg"></div>
						<div class="imagens">
							<img src="images/analiseSintatica.jpg">
						</div>
					</div>
				</div>
				<div class="conteudo tab-pane fade" id="conteudo7">
					<div class="contDentro">
						<div class="titulos"><h1> Árvores sintáticas do sistema </h1></div>
						<p>No nosso programa foram definidos os seguintes tokens:</p>
						<h3>AND = &quot;&amp;&amp;&quot;</h3>
						<h3>EQ = &quot;==&quot;</h3>
						<h3>INDEX = Vetor &quot;[ ]&quot;</h3>
						<h3>OR = &quot;||&quot;</h3>
						<h3>BASIC = Declaração de variáveis &quot;Int, float, char e bool&quot;</h3>
						<h3>FALSE = &quot;false&quot;</h3>
						<h3>LE = &quot;&lt;=&quot;</h3>
						<h3>NE = &quot;!=&quot;</h3>
						<h3>ELSE = &quot;else&quot;</h3>
						<h3>NUM = Números &quot;1,2,3,4,5,6,7,8,9 …&quot;</h3>
						<h3>BREAK = &quot;break&quot;</h3>
						<h3>REAL = Variáveis do tipo float &quot;float x&quot;</h3>
						<h3>GE = &quot;&gt;=&quot;</h3>
						<h3>MINUS = &quot;minus&quot;</h3>
						<h3>TEMP = Variáveis temporárias &quot;t&quot;</h3>
						<h3>DO = &quot;do&quot;</h3>
						<h3>ID = Variável inteira &quot;int x&quot;</h3>
						<h3>TRUE = &quot;true&quot;</h3>
						<h3>IF = &quot;if&quot;</h3>
						<h3>WHILE = &quot;while&quot;</h3>
						<p>E com base nos estudos realizados diante do conteúdo apresentado elaboramos a árvore sintática do compilador e também dos tokens envolvidos na construção do compilador e análise léxica. A primeira imagem mostra o fluxo completo dos nossos tokens, e nas outras nós separamos para melhor compreensão das regras estabelecidas dentro do compilador:</p>
						<div class="imagens">
							<img src="images/arvoreSintatica.png">
						</div>
						<div class="divisaoImg"></div>
						<p>Operadores Aritiméticos: Operadores utilizados para equações de valores implentados, são operadores que atuam na soma, subtração, multiplicação e divisão de valores:</p>
						<p>A = B * 10 + C * 5</p>
						<div class="imagens">
							<img src="images/arvoreSintatica2.jpg">
						</div>
						<div class="divisaoImg"></div>
						<p>Operadores Lógicos: Os operadores lógicos tem como principal função a atribuição no conjunto de variaveis seja como complemento ou como opcional.</p>
						<p>{int a; int b; int c; a &amp;&amp; b = c;}</p>
						<div class="imagens">
							<img src="images/arvoreSintatica3.jpg">
						</div>
						<div class="divisaoImg"></div>
						<p>Palavras Reservadas: Para palavras reservadas o contexto é avaliar a condição imposta após a inserção de dados no compilador, analise identifica a palavra reservada atribuindo a raiz da arvore e o resultado/comparação ao corpo folhas.</p>
						<div class="imagens">
							<img src="images/arvoreSintatica4.jpg">
						</div>
						<div class="divisaoImg"></div>
						<p>A representação acima é chamada de top-down, outro modo é o bottom-up. Abaixo segue um exemplo para palavras reservada, após a inserção de dados no compilador, analise identifica a palavra reservada atribuindo a raiz da arvore e o resultado/comparação das folhas ao corpo.</p>
						<div class="imagens">
							<img src="images/arvoreSintatica5.jpg">
						</div>
					</div>
				</div>
					<div class="conteudo tab-pane fade" id="conteudo8">
						<div class="contDentro">
							<div class="titulos"><h1> Features Adicionadas </h1></div>
							<p><span class="priLetra"> C</span>om base no algoritmo implementado, foi adicionado outras duas validações para o interpretador do compilador em desenvolvimento.</p>
							<p>Inclusão dos blocos de laço repetitivo FOR e condicional SWITCH CASE:</p>
							<h3>FOR</h3>
							<p>Implementação da classe For</p>
							<img src="images/for.jpg">
							<div class="divisaoImg"></div>
							<p>Adição da palavra reservada For na classe Lexer</p>
							<img src="images/for2.jpg">
							<div class="divisaoImg"></div>
							<p>Adição da Tag For na classe Tag</p>
							<img src="images/for3.jpg">
							<div class="divisaoImg"></div>
							<p>Implementação do bloco condicional da tag For na class Parse</p>
							<img src="images/for4.jpg">
							<div class="divisaoImg"></div>
							<h3>SWITCH CASE</h3>
							<p>Implementação da classe Switch</p>
							<img src="images/switch.jpg">
							<div class="divisaoImg"></div>
							<p>Implementação da classe Case</p>
							<img src="images/switch2.jpg">
							<div class="divisaoImg"></div>
							<p>Adição da palavra reservada Switch e Case na classe Lexer</p>
							<img src="images/switch3.jpg">
							<div class="divisaoImg"></div>
							<p>Adição da Tag Switch e da Tag Case na classe Tag</p>
							<img src="images/switch4.jpg">
							<div class="divisaoImg"></div>
							<p>Implementação do bloco condicional da tag Switch e Case na class Parse</p>
							<img src="images/switch5.jpg">
							<div class="divisaoImg"></div>
						</div>
					</div>
					<div class="conteudo tab-pane fade" id="conteudo9">
						<div class="contDentro">
							<div class="titulos"><h1> Autômato com as Features Adicionadas </h1></div>
							<p><span class="priLetra"> A</span> pós adcionar as novas palavras reservadas nós atualizamos nossa analise léxica e a partir da imagem abaixo podemos analizar as novas entradas. As novas palavras reservadas adicionadas foram “FOR” e “SWITCH, CASE”:</p>
							<div class="imagens">
								<img src="images/analiseSintaticaFet.jpg">
							</div>
						</div>			
					</div>
					<div class="conteudo tab-pane fade" id="conteudo10">
						<div class="contDentro">
							<div class="titulos"><h1> Análise Sintática das Features Adicionadas </h1></div>
							<p><span class="priLetra"> A</span> o adcionar as novas Features nós atualizamos também nossos tokens, palavras validas ao nosso compilador, a analise léxica agora passa a considerar valida as duas arvores abaixo:</p>
							<h3>FOR</h3>
							<div class="imagens">
								<img src="images/fet.jpg">
							</div>
							<div class="divisaoImg"></div>
							<h3>SWITCH – CASE</h3>
							<div class="imagens">
								<img src="images/fet2.jpg">
							</div>
							<div class="divisaoImg"></div>
							<p>Essas duas novas features são classificadas como palavras reservadas, isso significa que a partir dessas alterações o nosso compilador passará a reconnhecer essas sequencias como válidas.</p>
						</div>		
					</div>
					<div class="conteudo tab-pane fade" id="conteudo11">
						<div class="contDentro">
							<div class="titulos"><h1> Conclusão </h1></div>
							<p><span class="priLetra">N</span>osso Projeto é composto por varias etapas, na primeira nós implementamos o código de um compilador e analisa-lo, descrevendo o que ocorreia em cada classe e suas funcionalidades. Na segunda etapa nós definimos os autômatos da analise léxica desse código, para definir esses autômatos nós separamos as cadeias de caracteres e palavras reservadas que o compilador aceita segundo seu código e criamos um esboço representando essa estrutura.</p>
							<p>Outra etapa do projeto foi a construção da arvore sintática do sistema, nela nós separamos os tokens aceitos pelo sistema (palavras, sequencia de caracteres ou operadores lógicos), nós montamos um esboço contendo a representação de um programa válido por tokens. Essa arvore tem a função de indentificar programas validos e não validos fazendo com que o compilador efetue a leitura do código ou de erro.</p>
							<p>Na ultima etapa, foram adicionas duas novas construções para o código. As construções foram o SWITCH e o FOR, onde nós construimos também a analise sintática referente as essas duas construções e também foram feitas as arvores sintáticas dessas construções.</p>
							<p>Para concluir nosso projeto nosso compilador passou a reconhecer os dois novos comandos descritos acima e foi definida a estrutura lógica tanto dos comandos já existentes quanto as dos criados pelo grupo.</p>	
						</div>
					</div>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
	<c:import url="footer.jsp"/>
</body>
</html>