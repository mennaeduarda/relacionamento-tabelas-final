-- WARNING: This schema is for context only and is not meant to be run.
-- Table order and constraints may not be valid for execution.

CREATE TABLE public.paises (
  pais_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  pais_nome text NOT NULL UNIQUE,
  codigo_pais text,
  continente text,
  idioma_principal text,
  CONSTRAINT paises_pkey PRIMARY KEY (pais_id)
);
CREATE TABLE public.localizacoes (
  localizacao_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  regiao text,
  cidade text,
  clima text,
  temperatura_media_c numeric,
  proximidade_agua text,
  pais_id bigint NOT NULL,
  CONSTRAINT localizacoes_pkey PRIMARY KEY (localizacao_id),
  CONSTRAINT localizacoes_pais_id_fkey FOREIGN KEY (pais_id) REFERENCES public.paises(pais_id)
);
CREATE TABLE public.empresas (
  empresa_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  empresa_nome text NOT NULL UNIQUE,
  CONSTRAINT empresas_pkey PRIMARY KEY (empresa_id)
);
CREATE TABLE public.ias (
  ia_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  ia_nome text NOT NULL,
  versao_ia text,
  tipo_modelo text,
  empresa_id bigint,
  CONSTRAINT ias_pkey PRIMARY KEY (ia_id),
  CONSTRAINT ias_empresa_id_fkey FOREIGN KEY (empresa_id) REFERENCES public.empresas(empresa_id)
);
CREATE TABLE public.usos_ia (
  uso_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  uso_principal text,
  observacao text,
  CONSTRAINT usos_ia_pkey PRIMARY KEY (uso_id)
);
CREATE TABLE public.infraestrutura (
  infraestrutura_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  tipo_data_center text,
  tipo_resfriamento text,
  fonte_energia text,
  ano_instalacao integer,
  status text,
  numero_servidores_estimado integer,
  custo_anual_mi_usd numeric,
  CONSTRAINT infraestrutura_pkey PRIMARY KEY (infraestrutura_id)
);
CREATE TABLE public.metricas_uso (
  metrica_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  usuarios_milhoes numeric,
  interacoes_dia_mi numeric,
  latencia_media_ms numeric,
  pico_uso text,
  crescimento_anual numeric,
  CONSTRAINT metricas_uso_pkey PRIMARY KEY (metrica_id)
);
CREATE TABLE public.impacto_ambiental (
  impacto_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  consumo_agua_milhoes_l_ano numeric,
  regulamentacao_ambiental text,
  reuso_agua text,
  CONSTRAINT impacto_ambiental_pkey PRIMARY KEY (impacto_id)
);
CREATE TABLE public.atividade_ia_pais (
  atividade_id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  pais_id bigint NOT NULL,
  ia_id bigint NOT NULL,
  localizacao_id bigint,
  uso_id bigint,
  infraestrutura_id bigint,
  metrica_id bigint,
  impacto_id bigint,
  CONSTRAINT atividade_ia_pais_pkey PRIMARY KEY (atividade_id),
  CONSTRAINT atividade_ia_pais_pais_id_fkey FOREIGN KEY (pais_id) REFERENCES public.paises(pais_id),
  CONSTRAINT atividade_ia_pais_ia_id_fkey FOREIGN KEY (ia_id) REFERENCES public.ias(ia_id),
  CONSTRAINT atividade_ia_pais_localizacao_id_fkey FOREIGN KEY (localizacao_id) REFERENCES public.localizacoes(localizacao_id),
  CONSTRAINT atividade_ia_pais_uso_id_fkey FOREIGN KEY (uso_id) REFERENCES public.usos_ia(uso_id),
  CONSTRAINT atividade_ia_pais_infraestrutura_id_fkey FOREIGN KEY (infraestrutura_id) REFERENCES public.infraestrutura(infraestrutura_id),
  CONSTRAINT atividade_ia_pais_metrica_id_fkey FOREIGN KEY (metrica_id) REFERENCES public.metricas_uso(metrica_id),
  CONSTRAINT atividade_ia_pais_impacto_id_fkey FOREIGN KEY (impacto_id) REFERENCES public.impacto_ambiental(impacto_id)
);
