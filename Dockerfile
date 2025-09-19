# Etapa base: Node 22.19 LTS
FROM node:22.19-alpine

# Define diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copia apenas arquivos de dependências primeiro (cache build)
COPY package*.json ./

# Instala dependências em modo produção
RUN npm ci --omit=dev

# Copia código da aplicação
COPY . .

# Expõe porta da aplicação
EXPOSE 3000

# Comando padrão
CMD ["node", "server.js"]
