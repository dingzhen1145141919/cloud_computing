# 基础镜像：轻量Node.js 18（和后续Workflow的Node版本对应，避免兼容性问题）
FROM node:18-alpine
# 容器内的工作目录（后续命令都在这个目录执行）
WORKDIR /app
# 先复制package.json（优化构建：避免代码变动导致依赖重新安装）
COPY package.json ./
# 安装依赖（对应package.json，这里依赖为空，仅演示流程）
RUN npm install
# 复制所有项目文件到容器（包括app.js、Dockerfile等）
COPY . .
# 暴露端口（和app.js的3000端口对应，告诉Docker容器对外暴露的端口）
EXPOSE 3000
# 容器启动命令（启动Node服务）
CMD ["node", "app.js"]