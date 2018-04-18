const Koa = require('koa');
const app = new Koa();

app.use(async ctx => {
  ctx.body = `Hello World from ${process.env.SERVER_ID}`;
});

app.listen(3000);