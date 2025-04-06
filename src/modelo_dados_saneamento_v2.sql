CREATE DATABASE if not exists modelo_saneamento;

CREATE EXTENSION if not exists postgis;

CREATE TYPE tipo_material AS enum (
    'abs',
    'aco',
    'acocarbono',
    'asf',
    'ca',
    'cob',
    'conc',
    'desconhecido',
    'fofo',
    'fgal',
    'prfv',
    'mbv',
    'outros',
    'pvc',
    'pead',
    'pp',
    'defofo',
    'tergeo',
    'tij'
);

CREATE TYPE tipo_area_operacional AS enum (
    'area_administrativa',
    'area_inspecao',
    'area_manutencao',
    'engenharia_distrital'
);

CREATE TYPE tipo_bomba AS enum (
    'alternativo',
    'centrifugo',
    'desconhecido',
    'fluxo_axial',
    'jato',
    'outro',
    'rotativo',
    'turbina'
);

CREATE TYPE tipo_papael_auxiliar AS enum (
    'nenhum',
    'fonte',
    'fossa'
);

CREATE TYPE tipo_captacao AS enum (
    'represa',
    'rio',
    'poco'
);

CREATE TYPE tipo_status_captacao AS enum (
    'em_operacao',
    'fora_operacao'
);

CREATE TYPE tipo_instalacao_captacao AS enum (
    'flutuante',
    'submersa'
);

CREATE TYPE tipo_conexao AS enum (
    'acoplamento',
    'adaptador',
    'cruzeta',
    'cruzeta_reducao',
    'curva',
    'desconhecido',
    'juncao',
    'junta_expansao',
    'luva',
    'outros',
    'reducao',
    'reducao_te',
    'te',
    'transicao'
);

CREATE TYPE tipo_emenda AS enum (
    'cap',
    'desconhecido',
    'no',
    'outros',
    'tap',
    'ventosa'
);

CREATE TYPE tipo_estrutura AS enum (
    'armazem',
    'bacia_armazenamento',
    'estacao_bomba',
    'estacao_metro',
    'estacao_tratamento',
    'estacao_elevatoria',
    'estacao_pitometrica',
    'outros',
    'producao',
    'reservatorio'
);

CREATE TYPE tipo_instalacao AS enum (
    'apoiado',
    'elevado',
    'enterrado',
    'semi_enterrado'
);

CREATE TYPE tipo_hidrante AS enum (
    'coluna',
    'subterraneo'
);

CREATE TYPE tipo_medidor AS enum (
    'pressao',
    'vazao'
);

CREATE TYPE tipo_ponto_servico AS enum (
    'bombeiro',
    'comercial',
    'desconhecido',
    'domestico',
    'industrial',
    'misto',
    'outros',
    'publico'
);

CREATE TYPE tipo_ramal AS enum (
    'digital',
    'informacao'
);

CREATE TYPE tipo_rede_agua AS enum (
    'adutora',
    'distribuicao',
    'recalque'
);

CREATE TYPE tipo_agua AS enum (
    'chuva',
    'potavel',
    'reaproveitada',
    'salgada',
    'sem_tratamento',
    'tratada',
    'combinacao',
    'efluentes',
    'esgoto'
);

CREATE TYPE tipo_sim_nao AS enum (
    'sim',
    'nao'
);

CREATE TYPE tipo_localizacao_rede AS enum (
    'area_particular',
    'faixa_servidao',
    'nao_identificada',
    'via_publica'
);

CREATE TYPE tipo_pavimento AS enum (
    'asfalto',
    'jardim',
    'paralelepipedo',
    'passeio',
    'terra'
);

CREATE TYPE tipo_sistema_valvula AS enum (
    'antigolpe_ariete',
    'arredondado',
    'bloqueio',
    'bola',
    'borboleta',
    'cone',
    'controle',
    'descarga',
    'desconhecido',
    'esferica',
    'gaveta',
    'outros',
    'portao',
    'redutora_pressao',
    'retencao',
    'tomada'
);

CREATE TYPE tipo_acionamento AS enum (
    'eletrico',
    'manual_chave',
    'manual_volante',
    'mecanico'
);

CREATE TYPE tipo_status_valvula AS enum (
    'cabecote_rolico',
    'coberta',
    'operacao',
    'emperrada',
    'indefinido',
    'sem_volante'
);

CREATE TYPE tipo_funcao_valvula AS enum (
    'aliviadora_sustentadora_pressao',
    'alivio-pressao',
    'alivio_pico_pressao',
    'altitude',
    'antecipadora_onda',
    'bloqueio',
    'cla',
    'combinacao',
    'controladora_bomba',
    'controladora_sustentadora_pressao',
    'controle',
    'controle_aereo',
    'controle_refluxo',
    'corta_vacuo',
    'descarga',
    'desconhecido',
    'indefinido',
    'lacuna_ar',
    'liberacao_vacuo',
    'medidor_pressao',
    'outro',
    'redutora_pressao',
    'retencao',
    'retencao_crivo',
    'retencao_dupla',
    'seguranca',
    'sopro',
    'vacuo',
    'vacuo_atmosferico',
    'vacuo_pressao',
    'zpr'
);

CREATE TYPE tipo_posicao_atual AS enum (
    'aberta',
    'fechada',
    'indefinido',
    'nao_aplicavel',
    'parcialmente_aberta'
);

CREATE TYPE tipo_alinhamento_tampa AS enum (
    'tamapa_alinhada',
    'tampa_desalinhada_abaixo',
    'tampa_desalinhada_acima'
);

CREATE TYPE tipo_descarga_valvula AS enum (
    'boca_lobo',
    'corpo_agua',
    'galeria_aguas_pluviais',
    'indefinido',
    'outro',
    'pv',
    'sarjeta'
);

CREATE TYPE tipo_condicao_operacao AS enum (
    'afogado',
    'assoreado',
    'coberto',
    'entulhado',
    'lacrado',
    'normal',
    'obstruido',
    'outros',
    'sem_tampao',
    'tampao_fora_centro',
    'travado'
);

CREATE TYPE tipo_acesso_valvula AS enum (
    'caixa',
    'enterrado',
    'livre',
    'pv',
    't9'
);

CREATE TYPE tipo_funcao_auxiliar AS enum (
    'nenhum',
    'entrada',
    'saida'
);

CREATE TYPE tipo_ponto_lancamento AS enum (
    'descarga',
    'desconhecido',
    'outros',
    'padrao_saida',
    'transbordo'
);

CREATE TYPE tipo_acessorio AS enum (
    'curva',
    'lancamento',
    'poco_logico',
    'terminal_limpeza'
);

CREATE TYPE tipo_sub_acessorio AS enum (
    'descarga',
    'dissipacao_energia',
    'extravasor',
    'gordura',
    'sifao',
    'transicao'
);

CREATE TYPE tipo_acesso AS enum (
    'cobertura',
    'desconhecido',
    'grade',
    'mao',
    'porta',
    'tampa'
);

CREATE TYPE tipo_limpeza AS enum (
    'desconhecido',
    'estrutura_descarga',
    'fossa',
    'outros',
    'tubo_vertical'
);

CREATE TYPE tipo_precisao_cota AS enum (
    'acervo',
    'levantamento_altimetrico',
    'modelo_digital_terreno'
);

CREATE TYPE tipo_forma AS enum (
    'circular',
    'quadrado',
    'retangular'
);

CREATE TYPE tipo_poco AS enum (
    'caixa_passagem',
    'poco_inspecao',
    'poco_visita',
    'indefinido'
);

CREATE TYPE tipo_metodo_revestimento AS enum (
    'curado_local',
    'deforma_reforma',
    'espiral',
    'nenhum',
    'outros',
    'painel_segmentado',
    'tubo_segmentado'
);

CREATE TYPE tipo_rede_esgoto AS enum (
    'coletor',
    'coletor_tronco',
    'interceptor',
    'linha_recalque'
);

CREATE TYPE tipo_forma_tubo AS enum (
    'alongado',
    'circular',
    'desconhecido',
    'ferradura',
    'outros',
    'retangular',
    'trapezoidal',
    'triangular'
);

CREATE TYPE tipo_jusante AS enum (
    'degrau',
    'normal',
    'tubo_queda'
);

CREATE TYPE tipo_montante AS enum (
    'normal',
    'ponta_seca'
);

CREATE TYPE tipo_revestimento_poco AS enum (
    'armacao',
    'desconhecido',
    'outros',
    'ponte_canalizacao',
    'tunel_acesso',
    'tunel_protecao'
);

CREATE OR REPLACE FUNCTION func_criacao ()
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
    COST 100 VOLATILE NOT LEAKPROOF
    AS $body$
BEGIN
    NEW.data_criacao = CURRENT_DATE;
    NEW.usuario_criacao = CURRENT_USER;
    RETURN NEW;
END;
$body$;

CREATE SCHEMA sistema_agua;

CREATE TABLE sistema_agua.areas_operacionais (
    geom geometry(polygon, 4326),
    id_area serial PRIMARY KEY,
    nome_area varchar(50),
    tipo_area tipo_area_operacional,
    contato varchar(50),
    descricao varchar(254),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(50),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.areas_operacionais
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wpump
CREATE TABLE sistema_agua.bombas (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome varchar(20),
    tipo_bomba tipo_bomba,
    diametro_entrada integer,
    diametro_saida integer,
    vazao_nominal real,
    pressao_nominal integer,
    saida_op_maxima real,
    vazao_projetada real,
    elevacao real,
    papel_auxiliar tipo_papael_auxiliar,
    rotacao real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(50),
    gerenciado varchar(50),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.bombas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- abooster:
CREATE TABLE sistema_agua.boosters (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome varchar(20),
    diametro_entrada integer,
    diametro_saida integer,
    vazao_nominal real,
    pressao_nominal integer,
    saida_op_maxima real,
    vazao_projetada integer,
    elevacao real,
    papel_auxiliar tipo_papael_auxiliar,
    rotacao real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(20),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.boosters
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- acaptacao:
CREATE TABLE sistema_agua.captacoes (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome varchar(20),
    tipo_captacao tipo_captacao,
    profundidade real,
    revestimento tipo_revestimento_poco,
    diametro integer,
    status_captacao tipo_status_captacao,
    instalacao_captacao tipo_instalacao_captacao,
    bomba boolean,
    marca_bomba varchar(50),
    modelo_bomba varchar(20),
    potencia_bomba integer,
    amperagem_bomba integer,
    profundidade_bomba real,
    alt_monometrica_bomba real,
    data_subst_bomba date,
    cavalete boolean,
    material_cavalete tipo_material,
    diametro_cavalete integer,
    medidor_vazao_cavalete boolean,
    medidor_nivel_cavalete boolean,
    eletroduto_inferior boolean,
    eletroduto_superior boolean,
    nivel_estatico real,
    nivel_dinamico real,
    vazao integer,
    rebaixamento real,
    vazao_especifica integer,
    cota_max_manacial real,
    cota_min_manancial real,
    cota_max_tomada real,
    cota_min_tomada real,
    data_execucao date,
    cota_poco real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.captacoes
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wfitting:
CREATE TABLE sistema_agua.conexoes (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_conexao tipo_conexao,
    material tipo_material,
    diametro_entrada integer,
    diametro_saida integer,
    profundidade real,
    rotacao real,
    tipo_pavimento tipo_pavimento,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.conexoes
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wfitting:
CREATE TABLE sistema_agua.emendas (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_emenda tipo_emenda,
    material tipo_material,
    diametro_entrada integer,
    diametro_saida integer,
    profundidade real,
    rotacao real,
    tipo_pavimento tipo_pavimento,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.emendas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wteststation:
CREATE TABLE sistema_agua.estacoes_analise (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.estacoes_analise
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wnetworkstructure:
CREATE TABLE sistema_agua.estruturas_rede (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    data_operacao date,
    nome varchar(20),
    tipo_estrutura tipo_estrutura,
    tipo_instalacao tipo_instalacao,
    material tipo_material,
    capacidade integer,
    altura real,
    papel_auxiliar tipo_papael_auxiliar,
    rotacao real,
    tipo_pavimento tipo_pavimento,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.estruturas_rede
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wstructure:
CREATE TABLE sistema_agua.estruturas (
    geom geometry(polygon, 4326),
    id_instalacao serial PRIMARY KEY,
    nome varchar(20),
    data_operacao date,
    tipo_estrutura tipo_estrutura,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.estruturas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- whydrant:
CREATE TABLE sistema_agua.hidrantes (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_hidrante tipo_hidrante,
    vazao integer,
    fabricante varchar(50),
    data_ultimo_servico date,
    rotacao real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.hidrantes
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wserviceconnection:
CREATE TABLE sistema_agua.hidrometros (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    id_conta varchar(20),
    id_localizacao varchar(50),
    data_instalacao date,
    tipo_medidor tipo_medidor,
    servico_medido tipo_sim_nao,
    tipo_servico tipo_ponto_servico,
    cliente_critico boolean,
    rotacao real,
    tipo_pavimento tipo_pavimento,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.hidrometros
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wconstructionline:
CREATE TABLE sistema_agua.linhas_construcao (
    geom geometry(linestring, 4326),
    observacoes varchar(254),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.linhas_construcao
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wabandonedpoints:
CREATE TABLE sistema_agua.pontos_abandonados (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    tipo_ponto varchar(20),
    data_instalacao date,
    data_abandono date,
    material tipo_material,
    diametro integer,
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.pontos_abandonados
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wsamplingstations:
CREATE TABLE sistema_agua.pontos_amostragem (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome varchar(20),
    elevacao real,
    endereco varchar(254),
    data_amostra date,
    valor_amostra real,
    limiar real,
    regra_desinfeccao varchar(50),
    rotacao real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.pontos_amostragem
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- apontodescarga:
CREATE TABLE sistema_agua.pontos_descarga (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.pontos_descarga
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wlateralline:
CREATE TABLE sistema_agua.ramais_ligacao (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_ramal tipo_ramal,
    material tipo_material,
    diametro integer,
    tipo_agua tipo_agua,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.ramais_ligacao
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wabandonedline:
CREATE TABLE sistema_agua.redes_abandonadas (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    data_abandono date,
    tipo_linha tipo_rede_agua,
    material tipo_material,
    diametro integer,
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.redes_abandonadas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wmain:
CREATE TABLE sistema_agua.redes_agua (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_uso tipo_rede_agua,
    material tipo_material,
    diametro integer,
    tipo_agua tipo_agua,
    transmissao tipo_sim_nao,
    extensao_digital real GENERATED ALWAYS AS (st_length (geom)) STORED,
    extensao_real real,
    profundidade real,
    localizacao_rede tipo_localizacao_rede,
    tipo_pavimento tipo_pavimento,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.redes_agua
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wcasing:
CREATE TABLE sistema_agua.revestimentos (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    material tipo_material,
    diametro integer,
    comprimento_gravado real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.revestimentos
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wpressurezone:
CREATE TABLE sistema_agua.setores_pressao (
    geom geometry(polygon, 4326),
    id_setor serial PRIMARY KEY,
    nome_setor varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.setores_pressao
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- wsystemvalve:
CREATE TABLE sistema_agua.valvulas_sistema (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_valvula tipo_sistema_valvula,
    funcao_valvula tipo_funcao_valvula,
    valvula_desvio boolean,
    valvula_hidrante boolean,
    valvula_sistema varchar(20),
    diametro integer,
    acionamento tipo_acionamento,
    status_valvula tipo_status_valvula,
    condicao_operacao tipo_condicao_operacao,
    abre_normalmente boolean,
    fecha_sentido_horario boolean,
    qtd_voltas_fechar real,
    posicao_atual tipo_posicao_atual,
    profundidade real,
    alinhamento_tampa tipo_alinhamento_tampa,
    descarga tipo_descarga_valvula,
    acesso_valvula tipo_acesso_valvula,
    condicao_acesso tipo_condicao_operacao,
    operavel boolean,
    rotacao real,
    tipo_pavimento tipo_pavimento,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_agua.valvulas_sistema
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- tabelas para sistema de esgoto:
CREATE SCHEMA sistema_esgoto;

-- eemenda:
CREATE TABLE sistema_esgoto.emendas (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_emenda tipo_emenda,
    material tipo_material,
    diametro_entrada integer,
    diametro_saida integer,
    profundidade real,
    tipo_pavimento tipo_pavimento,
    rotacao real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.emendas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- eestrutura:
CREATE TABLE sistema_esgoto.estruturas (
    geom geometry(polygon, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    data_operacao date,
    nome varchar(20),
    tipo_estrutura tipo_estrutura,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.estruturas
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- ssnetworkstruvture:
CREATE TABLE sistema_esgoto.estruturas_rede (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    data_operacao date,
    nome varchar(20),
    tipo_estrutura tipo_estrutura,
    cota_nivel real,
    cota_fundo real,
    papel_auxiliar tipo_papael_auxiliar,
    tipo_pavimento tipo_pavimento,
    rotacao real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.estruturas_rede
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- eextravasor:
CREATE TABLE sistema_esgoto.extravasores (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    material tipo_material,
    diametro integer,
    profundidade_interior real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.extravasores
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- ssdischargepoint:
CREATE TABLE sistema_esgoto.lancamentos (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_lancamento tipo_ponto_lancamento,
    lancamento_medio tipo_sim_nao,
    pico_lancamento varchar(20),
    diametro integer,
    papel_auxiliar tipo_papael_auxiliar,
    rotacao real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.lancamentos
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- ssserviceconnection:
CREATE TABLE sistema_esgoto.ligacoes_prediais (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    id_conta varchar(20),
    id_local varchar(50),
    data_instalacao date,
    nome_instalacao varchar(20),
    medidor boolean,
    cliente_critico boolean,
    escoamento_total varchar(20),
    rotacao real,
    ativado boolean,
    funcao_auxiliar tipo_funcao_auxiliar,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.ligacoes_prediais
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- sscleanout:
CREATE TABLE sistema_esgoto.orgaos_acessorios (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    nome_acessorio varchar(20),
    tipo_acessorio tipo_acessorio,
    material_acessorio tipo_material,
    subtipo_acessorio tipo_sub_acessorio,
    lancamento_galeria tipo_sim_nao,
    condicao_operacao tipo_condicao_operacao,
    cota_nivel real,
    cota_fundo real,
    profundidade_interior real,
    precisao_cota tipo_precisao_cota,
    forma_poco tipo_forma,
    forma_tampao tipo_forma,
    material_tampao tipo_material,
    alinhamento_tampa tipo_alinhamento_tampa,
    cota_tampao real,
    localizacao varchar(254),
    tipo_acesso tipo_acesso,
    condicao_acesso tipo_condicao_operacao,
    diametro_acesso integer,
    tipo_pavimento tipo_pavimento,
    rotacao real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.orgaos_acessorios
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- ssmanhole:
CREATE TABLE sistema_esgoto.pocos_visita (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_poco tipo_poco,
    material_parede tipo_material,
    lancamento_galeria tipo_sim_nao,
    condicao_operacao tipo_condicao_operacao,
    cota_nivel real,
    cota_fundo real,
    profundidade_interior real,
    precisao_cota tipo_precisao_cota,
    forma_poco tipo_forma,
    forma_tampao tipo_forma,
    material_tampao tipo_material,
    alinhamento_tampa tipo_alinhamento_tampa,
    cota_tampao real,
    localizacao varchar(254),
    tipo_acesso tipo_acesso,
    condicao_acesso tipo_condicao_operacao,
    diametro_acesso integer,
    tipo_pavimento tipo_pavimento,
    rotacao real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.pocos_visita
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- sslateralline:
CREATE TABLE sistema_esgoto.ramais_ligacao (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_ramal tipo_ramal,
    tipo_linha tipo_metodo_revestimento,
    material tipo_material,
    diametro integer,
    distancia real GENERATED ALWAYS AS (st_length (geom)) STORED,
    tipo_agua tipo_agua,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.ramais_ligacao
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- ssgravitymain:
CREATE TABLE sistema_esgoto.redes_esgoto (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    tipo_agua tipo_agua,
    tipo_rede_esgoto tipo_rede_esgoto,
    material tipo_material,
    diametro integer,
    escoamento_total real,
    formaprincipal tipo_forma_tubo,
    tipo_linha tipo_metodo_revestimento,
    ano_revestimento date,
    tipo_montante tipo_montante,
    peca_montante varchar(20),
    cota_montante real,
    profundidade_montante real,
    tipo_jusante tipo_jusante,
    peca_jusante varchar(20),
    cota_jusante real,
    profundidade_jusante real,
    extensao_real real,
    extensao_digital real GENERATED ALWAYS AS (st_length (geom)) STORED,
    largura real,
    altura real,
    declive real,
    localizacao_rede tipo_localizacao_rede,
    tipo_pavimento tipo_pavimento,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.redes_esgoto
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- sscasing:
CREATE TABLE sistema_esgoto.revestimentos (
    geom geometry(linestring, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    diametro integer,
    material tipo_material,
    comprimento_gravado real,
    tipo_revestimento tipo_metodo_revestimento,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.revestimentos
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

-- sssystemvalve:
CREATE TABLE sistema_esgoto.valvulas_sistema (
    geom geometry(point, 4326),
    id_instalacao serial PRIMARY KEY,
    data_instalacao date,
    tipo_valvula_sistema tipo_sistema_valvula,
    diametro integer,
    valvula_desvio boolean,
    fecha_sentido_horario boolean,
    abre_normalmente boolean,
    qtd_voltas_fechar integer,
    posicao_atual tipo_posicao_atual,
    operavel boolean,
    rotacao real,
    ativado boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    data_atualizacao timestamp DEFAULT now(),
    usuario_atualizacao varchar(20) DEFAULT CURRENT_USER,
    data_criacao timestamp,
    usuario_criacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

CREATE TRIGGER trig_criacao
    BEFORE INSERT ON sistema_esgoto.valvulas_sistema
    FOR EACH ROW
    EXECUTE FUNCTION func_criacao ();

