const http = require("http");
// 故意添加未使用的变量（违反eslint的no-unused-vars规则）
const unusedVariable = "这段代码会触发Lint检查失败";
// 创建HTTP服务，访问时返回指定内容
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Hello Cloud Computing Class!"); 
});
// 监听3000端口
server.listen(3000, () => {
  console.log("Server running on port 3000");
});
