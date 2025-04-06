-- lista de materiais:
CREATE TABLE "tMaterial" (
    codigo varchar(20) PRIMARY KEY,
    nome varchar(50) NOT NULL
);

INSERT INTO "tMaterial"
    VALUES ('ABS', 'ABS Plastico'),
    ('ACO', 'Aço'),
    ('ACOCARBONO', 'Aço Carbono'),
    ('AT', 'Alvenaria de Tijolo'),
    ('AS', 'Anel Segmentado'),
    ('AV', 'Argila Vitrificada'),
    ('ASF', 'Asfalto'),
    ('CA', 'Cimento Amianto'),
    ('CMA', 'Cimento de Amianto'),
    ('COB', 'Cobre'),
    ('CPA', 'Composto de Plástico/Aço'),
    ('CONC', 'Concreto'),
    ('CR', 'Concreto (Não Reforçado)'),
    ('CCA', 'Concreto Armado'),
    ('CL', 'Curado no Local'),
    ('DES', 'Desconhecido'),
    ('FoFo', 'Ferro Fundido'),
    ('FoFoD', 'Ferro Fundido Dúctil'),
    ('FGAL', 'Ferro Galvanizado'),
    ('FC', 'Fibra de Campo'),
    ('FFR', 'Fibra de Ferro Reforçado'),
    ('PRFV', 'Fibra de Vidro'),
    ('GEO', 'Geotêxtil'),
    ('MD', 'Madeira'),
    ('MAN', 'Manilha de Barro'),
    ('MBV', 'Manilha de Barro Vitrificado'),
    ('MO', 'Metal Corrugado'),
    ('MOL', 'Molde Ferro'),
    ('OUT', 'Outros'),
    ('PRT', 'Plástico Reforçado (Treliça)'),
    ('PVC', 'Policloreto de Vinila'),
    ('PE', 'Polietileno'),
    ('PEAD', 'Polietileno de Alta Densidade'),
    ('PP', 'Polipropileno'),
    ('PTCC', 'Pré-tensionado por cilindro de concreto'),
    ('PVCCor', 'PVC Corrugado'),
    ('DEFoFo', 'PVC Diâmetro Equivalente FoFo'),
    ('PBA', 'PVC Ponta Bolsa para Água'),
    ('RPVC', 'PVC Reforçado c/ Fibra de Vidro'),
    ('PVCr', 'PVC Rosquiável'),
    ('PVCs', 'PVC Soldável'),
    ('SCD', 'Segmento Concreto (Desparafusado)'),
    ('SCA', 'Segmentos Concreto (Aparafusado)'),
    ('TB', 'Telha de Barro'),
    ('TERGEO', 'Terra & Geotêxtil'),
    ('TER', 'Térreo'),
    ('TIJ', 'Tijolo'),
    ('TG', 'Tubo Galvanizado'),
    ('VCA', 'Vidro com Cimento Armado');

-- tipos unicos:
CREATE TYPE "tAreaOperacional" AS enum (
    'AreaAdministrativa',
    'AreaInspecao',
    'AreaManutencao',
    'EngenhariaDistrital'
);

CREATE TYPE "tBomba" AS enum (
    'Alternativo',
    'Centrifugo',
    'Desconhecido',
    'FluxoAxial',
    'Jato',
    'Outro',
    'Rotativo',
    'Turbina'
);

CREATE TYPE "tPapelAuxiliar" AS enum (
    'Nenhum',
    'Fonte',
    'Fossa'
);

CREATE TYPE "tCaptacao" AS enum (
    'Represa',
    'Rio',
    'Poco'
);

CREATE TYPE "tStatusCaptacao" AS enum (
    'EmOperacao',
    'ForaOperacao'
);

CREATE TYPE "tInstalacaoCaptacao" AS enum (
    'Flutuante',
    'Submersa'
);

CREATE TYPE "tConexao" AS enum (
    'Acoplamento',
    'Adaptador',
    'Cruzeta',
    'CruzetaReducao',
    'Curva',
    'Desconhecido',
    'Juncao',
    'JuntaExpansao',
    'Luva',
    'Outros',
    'Reducao',
    'ReducaoTE',
    'TE',
    'Transicao'
);

CREATE TYPE "tEmenda" AS enum (
    'CAP',
    'Desconhecido',
    'No',
    'Outros',
    'TAP',
    'Ventosa'
);

CREATE TYPE "tEstrutura" AS enum (
    'Armazem',
    'BaciaArmazenamento',
    'EstacaoBomba',
    'EstacaoMetro',
    'EstacaoTratamento',
    'EstacaoElevatoria',
    'EstacaoPitometrica',
    'Outros',
    'Producao'
);

CREATE TYPE "tInstalacao" AS enum (
    'Apoiado',
    'Elevado',
    'Enterrado',
    'SemiEnterrado'
);

CREATE TYPE "tHidrante" AS enum (
    'Coluna',
    'Subterraneo'
);

CREATE TYPE "tMedidor" AS enum (
    'Pressao',
    'Vazao'
);

CREATE TYPE "tPontoServico" AS enum (
    'Bombeiro',
    'Comercial',
    'Desconhecido',
    'Domestico',
    'Industrial',
    'Misto',
    'Outros',
    'Publico'
);

CREATE TYPE "tRamal" AS enum (
    'Digital',
    'Informacao'
);

CREATE TYPE "tUso" AS enum (
    'Adutora',
    'Distribuicao',
    'Recalque'
);

CREATE TYPE "tAgua" AS enum (
    'Chuva',
    'Potavel',
    'Reaproveitada',
    'Salgada',
    'SemTratamento',
    'Tratada',
    'Combinacao',
    'Efluentes',
    'Esgoto'
);

CREATE TYPE "tSimNao" AS enum (
    'Sim',
    'Nao'
);

CREATE TYPE "tLocalizacaoRede" AS enum (
    'AreaParticular',
    'FaixaServidao',
    'NaoIdentificada',
    'ViaPublica'
);

CREATE TYPE "tPavimento" AS enum (
    'Asfalto',
    'Jardim',
    'Paralelepipedo',
    'Passeio',
    'Terra'
);

CREATE TYPE "tSistemaValvula" AS enum (
    'AntigolpeAriete',
    'Arredondado',
    'Bloqueio',
    'Bola',
    'Borboleta',
    'Cone',
    'Controle',
    'Descarga',
    'Desconhecido',
    'Esferica',
    'Gaveta',
    'Outros',
    'Portao',
    'RedutoraPressao',
    'Retencao',
    'Tomada'
);

CREATE TYPE "tAcionamento" AS enum (
    'Eletrico',
    'ManualChave',
    'ManualVolante',
    'Mecanico'
);

CREATE TYPE "tStatusValvula" AS enum (
    'CabecoteRolico',
    'Coberta',
    'Operacao',
    'Emperrada',
    'Indefinido',
    'SemVolante'
);

CREATE TYPE "tFuncaoValvula" AS enum (
    'AliviadoraSustentadoraPressao',
    'AlivioPressao',
    'AlivioPicoPressao',
    'Altitude',
    'AntecipadoraOnda',
    'Bloqueio',
    'CLA',
    'Combinacao',
    'ControladoraBomba',
    'ControladoraSustentadoraPressao',
    'Controle',
    'ControleAereo',
    'ControleRefluxo',
    'CortaVacuo',
    'Descarga',
    'Desconhecido',
    'Indefinido',
    'LacunaAr',
    'LiberacaoVacuo',
    'MedidorPressao',
    'Outro',
    'RedutoraPressao',
    'Retencao',
    'RetencaoCrivo',
    'RetencaoDupla',
    'Seguranca',
    'Sopro',
    'Vacuo',
    'VacuoAtmosferico',
    'VacuoPressao',
    'ZPR'
);

CREATE TYPE "tPosicaoAtual" AS enum (
    'Aberta',
    'Fechada',
    'Indefinido',
    'NaoAplicavel',
    'ParcialmenteAberta'
);

CREATE TYPE "tAlinhamentoTampa" AS enum (
    'TamapaAlinhada',
    'TampaDesalinhadaAbaixo',
    'TampaDesalinhadaAcima'
);

CREATE TYPE "tDescargaValvula" AS enum (
    'BocaLobo',
    'CorpoAgua',
    'GaleriaAguasPluviais',
    'Indefinido',
    'Outro',
    'PV',
    'Sarjeta'
);

CREATE TYPE "tCondicaoAcesso" AS enum (
    'Coberto',
    'Lacrado',
    'Normal',
    'Obstruido',
    'Outros',
    'SemTampao',
    'TampaoForaCentro',
    'Travado'
);

CREATE TYPE "tAcessoValvula" AS enum (
    'Caixa',
    'Enterrado',
    'Livre',
    'PV',
    'T9'
);

CREATE TYPE "tCondicaoOperacao" AS enum (
    'Afogado',
    'Assoreado',
    'Coberto',
    'Entulhado',
    'Lacrado',
    'Normal',
    'Obstruido',
    'Outros',
    'SemTampao',
    'TampaoForaCentro',
    'Travado'
);

CREATE TYPE "tFuncaoAuxiliar" AS enum (
    'Nenhum',
    'Entrada',
    'Saida'
);

CREATE TYPE "tPontoLancamento" AS enum (
    'Descarga',
    'Desconhecido',
    'Outros',
    'PadraoSaida',
    'Transbordo'
);

CREATE TYPE "tAcessorio" AS enum (
    'Curva',
    'Lancamento',
    'PocoLogico',
    'TerminalLimpeza'
);

CREATE TYPE "tSubTipoAcessorio" AS enum (
    'Descarga',
    'DissipacaoEnergia',
    'Extravasor',
    'Gordura',
    'Sifao',
    'Transicao'
);

CREATE TYPE "tAcesso" AS enum (
    'Cobertura',
    'Desconhecido',
    'Grade',
    'Mao',
    'Porta',
    'Tampa'
);

CREATE TYPE "tLimpeza" AS enum (
    'Desconhecido',
    'EstruturaDescarga',
    'Fossa',
    'Outros',
    'TuboVertical'
);

CREATE TYPE "tPrecisaoCota" AS enum (
    'Acervo',
    'LevantamentoAltimetrico',
    'ModeloDigitalTerreno'
);

CREATE TYPE "tFormaPocoTampa" AS enum (
    'Circular',
    'Quadrado',
    'Retangular'
);

CREATE TYPE "tPoco" AS enum (
    'CaixaPassagem',
    'PocoInspecao',
    'PocoVisita',
    'PocoIndefinido'
);

CREATE TYPE "tMetodoRevestimento" AS enum (
    'CuradoLocal',
    'DeformaReforma',
    'Espiral',
    'Nenhum',
    'Outros',
    'PainelSegmentado',
    'TuboSegmentado'
);

CREATE TYPE "tRedeEsgoto" AS enum (
    'Coletor',
    'ColetorTronco',
    'Interceptor',
    'LinhaRecalque'
);

CREATE TYPE "tFormaTubo" AS enum (
    'Alongado',
    'Circular',
    'Desconhecido',
    'Ferradura',
    'Outros',
    'Retangular',
    'Trapezoidal',
    'Triangular'
);

CREATE TYPE "tJusante" AS enum (
    'Degrau',
    'Normal',
    'TuboQueda'
);

CREATE TYPE "tMontante" AS enum (
    'Normal',
    'PontaSeca'
);

CREATE TYPE "tRevestimentoPoco" AS enum (
    'Armacao',
    'Desconhecido',
    'Outros',
    'PonteCanalizacao',
    'TunelAcesso',
    'TunelProtecao'
);

-- tabelas sistema de água:
-- wOperationalArea
-- drop table "aAreaOperacional";
CREATE TABLE "aAreaOperacional" (
    geom geometry(polygon, 4326),
    idarea serial PRIMARY KEY,
    nomearea varchar(50),
    tipoarea "tAreaOperacional",
    contato varchar(50),
    descricao varchar(254),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(50),
    observacoes varchar(254)
);

-- wPump
-- drop table "aBomba";
CREATE TABLE "aBomba" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    nome varchar(20),
    tipobomba "tBomba",
    diametroentrada integer,
    diametrosaida integer,
    vazaonominal real,
    pressaonominal integer,
    -- cabecadinamina ???,
    -- cabecadesligameto ???,
    -- cabecamaxop ???,
    -- modelocabeca ???,
    saidaopmaxima real,
    vazaoprojetada real,
    elevacao real,
    papelauxiliar "tPapelAuxiliar",
    rotacao real,
    enabled boolean,
    funcaoauxiliar "tFuncaoAuxiliar",
    proprietario varchar(50),
    gerenciado varchar(50),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- aBooster:
CREATE TABLE "aBooster" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    nome varchar(20),
    diametroentrada integer,
    diametrosaida integer,
    vazaonominal real,
    pressaonominal integer,
    -- cabecadinamica ???,
    -- cabecadesligamento ???,
    -- cabecadesligamento ???,
    -- cabecamaxop ???,
    -- modelocabeca ???,
    saidaopmaxima real,
    vazaoprojetada integer,
    elevacao real,
    papelauxiliar "tPapelAuxiliar",
    rotacao real,
    enabled boolean,
    funcaoauxiliar "tFuncaoAuxiliar",
    proprietario varchar(20),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- aCaptacao:
CREATE TABLE "aCaptacao" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    nomecaptacao varchar(20),
    tipocaptacao "tCaptacao",
    profundidade real,
    -- revestimento ???,
    diametro integer,
    statuscaptacao "tStatusCaptacao",
    instalacaocaptacao "tInstalacaoCaptacao",
    bomba boolean,
    marcabomba varchar(50),
    modelobomba varchar(20),
    potenciabomba integer,
    amperagembomba integer,
    profundidadebomba real,
    altmonometricabomba real,
    datasubstbomba date,
    cavalete boolean,
    materialcavalete varchar(20) REFERENCES "tMaterial" (codigo),
    diametrocavalete integer,
    medidorvazaocavalete boolean,
    medidornivelcavalete boolean,
    eletrodutoinferior boolean,
    eletrodutosuperior boolean,
    nivelestatico real,
    niveldinamico real,
    vazao integer,
    rebaixamento real,
    vazaoespecifica integer,
    cotamaxmanacial real,
    cotaminmanancial real,
    cotamaxtomada real,
    cotamintomada real,
    dataexecucao date,
    cotapoco real,
    enabled boolean,
    funcaoauxiliar "tFuncaoAuxiliar",
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wFitting:
CREATE TABLE "aConexao" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipoconexao "tConexao",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametroentrada integer,
    diametrosaida integer,
    profundidade real,
    rotacao real,
    tipopavimento "tPavimento",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wFitting:
CREATE TABLE "aEmenda" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipoemenda "tEmenda",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametroentrada integer,
    diametrosaida integer,
    profundidade real,
    rotacao real,
    tipopavimento "tPavimento",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wTestStation:
CREATE TABLE "aEstacaoAnalise" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wNetworkStructure:
CREATE TABLE "aEstruturaRede" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    dataoperacao date,
    nome varchar(20),
    tipoestrutura "tEstrutura",
    tipoinstalacao "tInstalacao",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    capacidade integer,
    altura real,
    papelauxiliar "tPapelAuxiliar",
    rotacao real,
    tipopavimento "tPavimento",
    enabled boolean,
    funcaoauxiliar "tFuncaoAuxiliar",
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wStructure:
CREATE TABLE "aEstruturas" (
    geom geometry(polygon, 4326),
    idinstalacao serial PRIMARY KEY,
    nome varchar(20),
    dataoperacao date,
    tipoestrutura "tEstrutura",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wHydrant:
CREATE TABLE "aHidrante" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipohidrante "tHidrante",
    vazao integer,
    fabricante varchar(50),
    dataultimoservico date,
    rotacao real,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wServiceConnection:
CREATE TABLE "aHidrometro" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    idconta varchar(20),
    idlocalizacao varchar(50),
    datainstalacao date,
    tipomedidor "tMedidor",
    servicomedido "tSimNao",
    tiposervico "tPontoServico",
    clientecritico boolean,
    rotacao real,
    tipopavimento "tPavimento",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wConstructionLine:
CREATE TABLE "aLinhaConstrucao" (
    geom geometry(linestring, 4326),
    observacoes varchar(254),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20)
);

-- wAbandonedPoints:
CREATE TABLE "aPontoAbandonado" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    tipoponto varchar(20),
    datainstalacao date,
    dataabandono date,
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametro integer,
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wSamplingStations:
CREATE TABLE "aPontoAmostragem" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    nome varchar(20),
    elevacao real,
    endereco varchar(254),
    dataamostra date,
    valoramostra real,
    limiar real,
    regradesinfeccao varchar(50),
    rotacao real,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- aPontoDescarga:
CREATE TABLE "aPontoDescarga" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wLateralLine:
CREATE TABLE "aRamalLigacao" (
    geom geometry(linestring, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tiporamal "tRamal",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametro integer,
    tipoagua "tAgua",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wAbandonedLine:
CREATE TABLE "aRedeAbandonada" (
    geom geometry(linestring, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    dataabandono date,
    tipolinha "tUso",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametro integer,
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wMain:
CREATE TABLE "aRedeAgua" (
    geom geometry(linestring, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipouso "tUso",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametro integer,
    tipoagua "tAgua",
    transmissao "tSimNao",
    extensaodigital real GENERATED ALWAYS AS (st_length (geom)) STORED,
    extensaoreal real,
    profundidade real,
    localizacaorede "tLocalizacaoRede",
    tipopavimento "tPavimento",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wCasing:
CREATE TABLE "aRevestimento" (
    geom geometry(linestring, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    material "tMaterial",
    diametro integer,
    comprimentogravado real,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- wPressureZone:
CREATE TABLE "aSetorPressao" (
    geom geometry(polygon, 4326),
    idsetor serial PRIMARY KEY,
    nomesetor varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    observacoes varchar(254)
);

-- wSystemValve:
CREATE TABLE "aValvulaSistema" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipovalvula "tSistemaValvula",
    funcaovalvula "tFuncaoValvula",
    valvuladesvio boolean,
    valvulahidrante boolean,
    -- valvulasistema ???,
    diametro integer,
    acionamento "tAcionamento",
    statusvalvula "tStatusValvula",
    condicaooperacao "tCondicaoOperacao",
    abrenormalmente boolean,
    fechasentidohorario boolean,
    qtsvoltasfechar real,
    posicaoatual "tPosicaoAtual",
    profundidade real,
    alinhamentotampa "tAlinhamentoTampa",
    descarga "tDescargaValvula",
    acessovalvula "tAcessoValvula",
    condicaoacesso "tCondicaoAcesso",
    operavel boolean,
    rotacao real,
    tipopavimento "tPavimento",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- tabelas para sistema de esgoto:
-- eEmenda:
CREATE TABLE "eEmenda" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipoemenda "tEmenda",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametroentrada integer,
    diametrosaida integer,
    profundidade real,
    tipopavimento "tPavimento",
    rotacao real,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- eEstrutura:
-- drop table "eEstrutura";
CREATE TABLE "eEstrutura" (
    geom geometry(polygon, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    dataoperacao date,
    nome varchar(20),
    tipoestrutura "tEstrutura",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssNetworkStruvture:
CREATE TABLE "eEstruturaRede" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    dataoperacao date,
    nome varchar(20),
    tipoestrutura "tEstrutura",
    cotanivel real,
    cotafundo real,
    papelauxiliar "tPapelAuxiliar",
    tipopavimento "tPavimento",
    rotacao real,
    enabled boolean,
    funcaoauxiliar "tFuncaoAuxiliar",
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- eExtravasor:
CREATE TABLE "eExtravasor" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametro integer,
    profundidadeinterior real,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssDischargePoint:
CREATE TABLE "eLancamento" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipolancamento "tPontoLancamento",
    lancamentomedio "tSimNao",
    -- picolancamento ???,
    diametro integer,
    papelauxiliar "tPapelAuxiliar",
    rotacao real,
    enabled boolean,
    funcaoauxiliar "tFuncaoAuxiliar",
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssServiceConnection:
CREATE TABLE "eLigacaoPredial" (
    geom geometry(linestring, 4326),
    idinstalacao serial PRIMARY KEY,
    idconta varchar(20),
    idlocal varchar(50),
    datainstalacao date,
    nomeinstalacao varchar(20),
    medidor boolean,
    clientecritico boolean,
    -- escoamentototal ???,
    rotacao real,
    enabled boolean,
    funcaoauxiliar "tFuncaoAuxiliar",
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssCleanOut:
CREATE TABLE "eOrgaoAcessorio" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    nomeacessorio varchar(20),
    tipoacessorio "tAcessorio",
    materialacessorio varchar(20) REFERENCES "tMaterial" (codigo),
    subtipoacessorio "tSubTipoAcessorio",
    lancamentogaleria "tSimNao",
    condicaooperacao "tCondicaoOperacao",
    cotanivel real,
    cotafundo real,
    profundidadeinterior real,
    precisaocota "tPrecisaoCota",
    formapoco "tFormaPocoTampa",
    formatampao "tFormaPocoTampa",
    materialtampao varchar(20) REFERENCES "tMaterial" (codigo),
    alinhamentotampa "tAlinhamentoTampa",
    cotatampao real,
    localizacao varchar(254),
    tipoacesso "tAcesso",
    condicaoacesso "tCondicaoAcesso",
    diametroacesso integer,
    tipopavimento "tPavimento",
    rotacao real,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssManhole:
CREATE TABLE "ePocoVisita" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipopoco "tPoco",
    materialparede varchar(20) REFERENCES "tMaterial" (codigo),
    lancamentogaleria "tSimNao",
    condicaooperacao "tCondicaoOperacao",
    cotanivel real,
    cotafundo real,
    profundidadeinterior real,
    precisaocota "tPrecisaoCota",
    formapoco "tFormaPocoTampa",
    formatampao "tFormaPocoTampa",
    materialtampao varchar(20) REFERENCES "tMaterial" (codigo),
    alinhamentotampa "tAlinhamentoTampa",
    cotatampao real,
    localizacao varchar(254),
    tipoacesso "tAcesso",
    condicaoacesso "tCondicaoAcesso",
    diametroacesso integer,
    tipopavimento "tPavimento",
    rotacao real,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssLateralLine:
CREATE TABLE "eRamalLigacao" (
    geom geometry(linestring, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tiporamal "tRamal",
    tipolinha "tMetodoRevestimento",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametro integer,
    distancia real GENERATED ALWAYS AS (st_length (geom)) STORED,
    tipoagua "tAgua",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssGravityMain:
CREATE TABLE "eRedeEsgoto" (
    geom geometry(linestring, 4326),
    idinstalacao serial PRIMARY KEY,
    tipoagua "tAgua",
    tiporedeesgoto "tRedeEsgoto",
    material varchar(20) REFERENCES "tMaterial" (codigo),
    diametro integer,
    -- escoamentototal ???,
    formaprincipal "tFormaTubo",
    tipolinha "tMetodoRevestimento",
    anorevestimento date,
    tipomontante "tMontante",
    pecamontante varchar(20),
    cotamontante real,
    profundidademontante real,
    tipojusante "tJusante",
    pecajusante varchar(20),
    cotajusante real,
    profundidadejusante real,
    extensaoreal real,
    extensaodigital real GENERATED ALWAYS AS (st_length (geom)) STORED,
    largura real,
    altura real,
    declive real,
    localizacaorede "tLocalizacaoRede",
    tipopavimento "tPavimento",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssCasing:
CREATE TABLE "eRevestimento" (
    geom geometry(linestring, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    diametro integer,
    material varchar(20) REFERENCES "tMaterial" (codigo),
    comprimentogravado real,
    tiporevestimento "tMetodoRevestimento",
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

-- ssSystemValve:
CREATE TABLE "eValvulaSistema" (
    geom geometry(point, 4326),
    idinstalacao serial PRIMARY KEY,
    datainstalacao date,
    tipovalvulasistema "tSistemaValvula",
    diametro integer,
    valvuladesvio boolean,
    fechasentidohorario boolean,
    abrenormalmente boolean,
    qtdvoltasfechar integer,
    posicaoatual "tPosicaoAtual",
    operavel boolean,
    rotacao real,
    enabled boolean,
    proprietario varchar(50),
    gerenciado varchar(20),
    dataatualizacao timestamp DEFAULT now(),
    usuarioatualizacao varchar(20) DEFAULT CURRENT_USER,
    datacriacao timestamp,
    usuariocriacao varchar(20),
    descloc varchar(254),
    observacoes varchar(254)
);

