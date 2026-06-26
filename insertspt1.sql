insert into paises (pais_nome, codigo_pais, continente, idioma_principal) values
('Brasil', 'BR', 'América do Sul', 'Português'),
('EUA', 'US', 'América do Norte', 'Inglês'),
('Argentina', 'AR', 'América do Sul', 'Espanhol'),
('Espanha', 'ES', 'Europa', 'Espanhol'),
('França', 'FR', 'Europa', 'Francês'),
('China', 'CN', 'Ásia', 'Mandarim'),
('Índia', 'IN', 'Ásia', 'Hindi/Inglês'),
('Japão', 'JP', 'Ásia', 'Japonês'),
('Rússia', 'RU', 'Europa/Ásia', 'Russo'),
('Austrália', 'AU', 'Oceania', 'Inglês'),
('África do Sul', 'ZA', 'África', 'Inglês/Zulu'),
('Canadá', 'CA', 'América do Norte', 'Inglês/Francês'),
('Uruguai', 'UY', 'América do Sul', 'Espanhol'),
('Suíça', 'CH', 'Europa', 'Alemão/Francês'),
('Alemanha', 'DE', 'Europa', 'Alemão');

insert into empresas (empresa_nome) values
('OpenAI'),
('Google/OpenAI'),
('Mistral AI'),
('ByteDance / Baidu'),
('OpenAI / LY Corporation'),
('DeepSeek / Yandex'),
('Anthropic / OpenAI'),
('Mistral AI / OpenAI'),
('OpenAI / Aleph Alpha');

insert into ias (ia_nome, versao_ia, tipo_modelo, empresa_id) values
('ChatGPT', 'GPT-4', 'LLM', 1),
('ChatGPT', 'GPT-4o', 'LLM', 1),
('ChatGPT / Gemini', 'Gemini 1.5', 'Multimodal', 2),
('Mistral / ChatGPT', 'Mistral Large', 'LLM', 3),
('Doubao / Ernie Bot', 'ERNIE 4.5', 'Multimodal', 4),
('ChatGPT / LINE AI', 'GPT-4o', 'Multimodal', 5),
('DeepSeek / Yandex Alice', 'DeepSeek-V3', 'LLM', 6),
('ChatGPT', 'GPT-3.5', 'LLM', 1),
('Claude / ChatGPT', 'Claude 3.5', 'LLM', 7),
('Mistral / ChatGPT', 'Mistral Large', 'LLM', 8),
('ChatGPT / Aleph Alpha', 'GPT-4 / Aleph Alpha L', 'Multimodal', 9);

insert into usos_ia (uso_principal, observacao) values
('Geral/Educacional', 'Forte uso educacional e corporativo'),
('Geral/Corporativo', 'Alta demanda empresarial e desenvolvimento'),
('Educacional', 'Crescimento em startups e educação'),
('Geral/Turismo', 'Forte adoção em turismo e serviços'),
('Pesquisa/Corporativo', 'Foco em soberania digital e IA europeia'),
('Geral/Comércio', 'Ecossistema fechado; DeepSeek também relevante [[62]]'),
('Educacional/Startups', 'Maior crescimento global em adoção de IA [[75]]'),
('Corporativo/Robótica', 'Integração com robótica e IoT industrial'),
('Geral/Governamental', 'Alternativas locais devido a restrições geopolíticas [[74]]'),
('Geral/Mineração', 'Foco em mineração, agricultura e pesquisa'),
('Educacional/Financeiro', 'Crescimento acelerado em fintechs e educação'),
('Pesquisa/Corporativo', 'Anthropic tem raízes canadenses; foco em IA responsável'),
('Governamental/Educacional', 'Líder regional em energia renovável e digitalização [[30]]'),
('Financeiro/Pesquisa', 'Foco em privacidade, finanças e pesquisa de ponta'),
('Industrial/Engenharia', 'Forte ecossistema de IA industrial e soberania digital');
