-- CARDINALIDADE
-- Gafanhoto assiste n*Cursos
-- Curso é assistido por n*Gafanhotos
-- muitos-para-muitos * n-para-n
-- desmembrar gerando novas entidades um-para-muitos

-- Marido casa com 1*Esposa
-- Esposa casa com 1*Marido
-- um-para-um
-- na entidade dominante é adicionada a chave estrangeira de esposa

-- Funcionário cuida de n*dependentes
-- Dependentes pode ser cuidado apenas por 1*Funcionário
-- um-para-muitos * muitos-para-um
-- entidade de 'muitos' recebe chave estrangeira de 'um' 