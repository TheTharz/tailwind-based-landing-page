FROM node:21-alpine
WORKDIR /react_tailwind_practice_website
COPY public/ /react_tailwind_practice_website/public
COPY src/ /react_tailwind_practice_website/src
COPY package.json /react_tailwind_practice_website
COPY tailwind.config.js /react_tailwind_practice_website/

RUN npm install
RUN npm install -D tailwindcss
RUN npx tailwindcss init

CMD ["npm","run", "start"]