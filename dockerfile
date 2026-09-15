# imagem base
FROM node:20-slim
# define o diretório de trabalho
WORKDIR /app
# cópia das dependências
COPY package*.json ./
# instalação das dependências
RUN npm ci --omit=dev
# cópia do código fonte
COPY . .
# porta da aplicação
EXPOSE 3000
# comando de inicialização

CMD ["node", "src/app.js"]