-- CreateTable
CREATE TABLE `produtos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `sku` VARCHAR(30) NOT NULL,
    `nome` VARCHAR(120) NOT NULL,
    `preco` DECIMAL(10, 2) NOT NULL,
    `estoque` INTEGER NOT NULL DEFAULT 0,
    `criado_em` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `descricao` VARCHAR(255) NULL,

    UNIQUE INDEX `produtos_sku_key`(`sku`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
