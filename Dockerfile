# Usa uma imagem base do Node.js LTS (Long Term Support)
FROM node:alpine

# Define o diretório de trabalho como /app
WORKDIR /app

# Copia o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Instala o Expo globalmente
RUN npm install -g expo-cli

# Copia todos os arquivos do diretório atual para o diretório de trabalho (/app) do contêiner
COPY . .

# Expõe a porta 8081 para acesso ao servidor de desenvolvimento do React Native
EXPOSE 8081
