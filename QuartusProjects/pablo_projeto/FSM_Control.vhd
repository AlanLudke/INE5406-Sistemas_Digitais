library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSM_control is
	-- ENTRADAS E SAIDAS DO BLOCO CONTROLADOR
	port ( Enter, Saldo, Pass_Certo, Clock_50, Rst: in std_logic; 
	Estados: out std_logic_vector(4 downto 0);
	TentativaOut: out std_logic_vector (1 downto 0);
	Sel_Disp: out std_logic_vector (1 downto 0);
	Test_Pass, C0, C1, C2, C3, Sel_Led: out std_logic
	);
end FSM_control;
architecture FSM_beh of FSM_control is
	type states is (e0, e1, e2, e3, e4, e5, e6, e7, e8); --DECLARACAO DOS ESTADOS
	signal EA, PE: states; -- DECLARACAO DOS SINAIS
	signal tent: std_logic_vector (1 downto 0);
begin 

P1: process (CLOCK_50, Rst) -- ATUALIZAÇÃO DO PROXIMO ESTADO E RESET ASSINCRONO
begin
	if Rst = '0' then
		EA <= e0;
	elsif CLOCK_50'event and CLOCK_50 = '1' then
		EA <= PE;
	end if;
end process;
 
P2: process (Enter, EA, CLOCK_50)
begin
	if CLOCK_50'event and CLOCK_50 = '0' then
	case EA is
	-- CASO ESTADO SEJA E0
	when e0 =>
	if Enter = '1' then 
		PE <= e0;
	else
		PE <= e1; -- ENTER = 0 AVANÇA
	end if;
	-- ATRIBUIÇÕES DAS VARIAVEIS
	Sel_Disp <= "00";
	Sel_Led <= '0';
	TentativaOut <= "00";
	Estados <= "00000";
	tent <= "00";
	C3 <= '1';
	C2 <= '1';
	C1 <= '1';
	C0 <= '1';
	Test_Pass <= '0';
	
	-- QUANDO ESTADO É 1
	when e1 =>
	if Enter = '1' then
		PE <= e1;
	else
		PE <= e2; -- QUANDO ENTER = 0
	end if;
	--ATRIBUIÇÕES DE VARIAVEIS
	Sel_Disp <= "01";
	Sel_Led <= '0';
	Test_Pass <= '0';
	Estados <= "00001";
	C3 <= '0';
	C2 <= '0';
	C1 <= '0';
	C0 <= '0';
	TentativaOut <= tent;
	
	--Quando o estado é 2
	when e2 => 
	if Enter = '1' then
		PE <= e2;
	else
		PE <= e3; -- AVANÇA QUANDO ENTER = 1
	end if;
	C3 <= '1'; -- VAI GRAVAR NO PRIMEIRO REGISTRADOR
	C2 <= '0';
	C1 <= '0';
	C0 <= '0';
	Estados <= "00010";
	Test_Pass <= '0';
	Sel_Disp <= "01";
	Sel_Led <= '0';
	TentativaOut <= tent;
	
	--QUANDO ESTADO É E3
	when e3 => 
	if Enter = '1' then
		PE <= e3;
	else
		PE <= e4; -- AVANÇA APERTANDO ENTER
	end if;
	C3 <= '0';
	C2 <= '1'; -- GRAVARÁ NO SEGUNDO REGISTRADOR
	C1 <= '0';
	C0 <= '0';
	--ATRIBUIÇÃO DE VARIAVEIS
	Estados <= "00011";
	Test_Pass <= '0';
	Sel_Disp <= "01";
	Sel_Led <= '0';
	TentativaOut <= tent;
	
	--QUANDO ESTADO É 4
	when e4 => 
	if Enter = '1' then
		PE <= e4; 
	else
		PE <= e5; -- AVANÇA QUANDO ENTER = 0
	end if;
	C3 <= '0';
	C2 <= '0';
	C1 <= '1'; -- GRAVA NO 3 REGISTRADOR
	C0 <= '0';
	Estados <= "00100";
	Test_Pass <= '0';
	Sel_Disp <= "01";
	Sel_Led <= '0';
	TentativaOut <= tent;
	
	-- QUANDO ESTADO É 5
	when e5 => 
	if Enter = '1' then
		PE <= e5;
	else
		PE <= e6; --AVANÇA QUANDO ENTER = 0
	end if;
	C3 <= '0';
	C2 <= '0';
	C1 <= '0';
	C0 <= '1'; -- GRAVA NO ULTIMO REGISTRADOR
	Estados <= "00101";
	Test_Pass <= '1'; --ATIVA A COMPARAÇÃO DA SENHA
	Sel_Disp <= "01";
	Sel_Led <= '0';
	TentativaOut <= tent;
	
	-- QUANDO ESTADO É 6
	when e6 => 
	Test_Pass <= '1';
	if (tent = "11" and Pass_Certo = '0') then -- FAZ A VERIFICAÇÃO SE ESTÁ ERRADA E EXCEDEU TENTATIVAS
		PE <= e0; -- VOLTA PARA DESLIGADO
	elsif (tent < "11" and Pass_Certo = '0') then -- FAZ VERIFICAÇÃO SE ERROU MAS AINDA TEM CHANCE
		PE <= e1; -- VOLTA PARA ESTADO 1
	else
		PE <= e7; -- SE ELE ACERTOU VAI PARA ESTADO 7
	end if;
	tent <= tent + 1; -- ACRESCENTA 1 NAS TENTATIVAS
	TentativaOut <= tent;
	Sel_Led <= '0';
	Sel_Disp <= "00"; -- SELECIONA NO MUX OS NUMEROS QUE DESLIGAM OS DISPLAYS
	C0 <= '1'; --ATIVA OS DISPLAYS PARA QUE POSSAM SER DESLIGADOS
	C3 <= '1';
	C2 <= '1';
	C1 <= '1';
	Estados <= "00110";
	
	--QUANDO ESTADO É 7
	when e7 => 
	if Enter = '1' then
		PE <= e7;
	else
		PE <= e8; -- AVANÇA COM ENTER = 0
	end if;
	Sel_Led <= '0';
	Sel_Disp <= "10"; -- MOSTRA AGENDA
	Estados <="00111";
	C0 <= '1'; -- ATIVA REGISTRADOR PARA AGENDA
	c1 <= '1';
	c2 <= '1';
	c3 <= '1';
	Test_Pass <= '0';
	TentativaOut <= "00"; -- ZERA TENTATIVAS PARA QUE NA AGENDA NENHUM LED ESTEJA LIGADO
	
	--QUANDO ESTADO É 8
	when e8 =>	
	if (Saldo = '1') then -- SE O SALDO ACABOU
		PE <= e0; -- RETORNA PARA DESLIGADO
	elsif (Enter = '1') then -- SE O SALDO NAO ACABOU E ENTER NÃO FOI APERTADO
		PE <= e8; -- CONTINUA NO ESTADO 8
	else PE <= e7; -- SE ENTER FOI APERTADO VOLTA PARA AGENDA
	end if;
	Sel_Disp <= "11"; -- SELECIONA CONTAGEM ASC
	Sel_Led <= '1'; -- SELECIONA CONTAGEM DESC
	Estados <= "01000";
	Test_Pass <= '0';
	C0 <= '1'; --ATIVA OS REGISTRADORES
	c1 <= '1';
	c2 <= '1';
	c3 <= '1';
	TentativaOut <= tent;
	end case;
	end if;
 end process;
end FSM_beh;