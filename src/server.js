import express, { response } from 'express';
import { context } from './prisma.js';

const app = express();

app.use(express.json());

function get({ nome, min, max } = {}) {
    return context.produto.findMany({
        where: {
            nome: nome ? { contains: nome } : undefined,
            preco: { gte: min, lte: max }
        },
        orderBy: { nome: 'desc' }
    });
}

const PORT = 3000;

app.get('/produtos', async (req, res) => {
    const { nome, min, max } = req.query;

    res.json(await get({ nome, min, max }));
});

app.listen(PORT, () => {
    console.log(`Servidor rodando em htpp://localhost:${PORT}`);
});