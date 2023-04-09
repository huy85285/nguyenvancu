
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/09/2023 14:49:56
-- Generated from EDMX file: C:\Users\Votha\source\repos\nguyenvancu\nguyenvancu\Models\nguyenvancudb.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [nguyenvancudb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ADMINS_ADMINS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ADMINS] DROP CONSTRAINT [FK_ADMINS_ADMINS];
GO
IF OBJECT_ID(N'[dbo].[FK_ADMINS_CONTENT]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CONTENTs] DROP CONSTRAINT [FK_ADMINS_CONTENT];
GO
IF OBJECT_ID(N'[dbo].[FK_ADMINS_product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[products] DROP CONSTRAINT [FK_ADMINS_product];
GO
IF OBJECT_ID(N'[dbo].[FK_Img_ADMINS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ADMINS] DROP CONSTRAINT [FK_Img_ADMINS];
GO
IF OBJECT_ID(N'[dbo].[FK_rank_ADMINS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ADMINS] DROP CONSTRAINT [FK_rank_ADMINS];
GO
IF OBJECT_ID(N'[dbo].[FK_product_cart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[carts] DROP CONSTRAINT [FK_product_cart];
GO
IF OBJECT_ID(N'[dbo].[FK_user_cart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[carts] DROP CONSTRAINT [FK_user_cart];
GO
IF OBJECT_ID(N'[dbo].[FK_product_COMMENT]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COMMENTs] DROP CONSTRAINT [FK_product_COMMENT];
GO
IF OBJECT_ID(N'[dbo].[FK_USER_COMMENT]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[COMMENTs] DROP CONSTRAINT [FK_USER_COMMENT];
GO
IF OBJECT_ID(N'[dbo].[FK_company_product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[products] DROP CONSTRAINT [FK_company_product];
GO
IF OBJECT_ID(N'[dbo].[FK_CONTENT_company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[companies] DROP CONSTRAINT [FK_CONTENT_company];
GO
IF OBJECT_ID(N'[dbo].[FK_Img_company]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[companies] DROP CONSTRAINT [FK_Img_company];
GO
IF OBJECT_ID(N'[dbo].[FK_CONTENT_product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[products] DROP CONSTRAINT [FK_CONTENT_product];
GO
IF OBJECT_ID(N'[dbo].[FK_historycart_detailhistorycart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[detailhistorycarts] DROP CONSTRAINT [FK_historycart_detailhistorycart];
GO
IF OBJECT_ID(N'[dbo].[FK_product_detailhistorycart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[detailhistorycarts] DROP CONSTRAINT [FK_product_detailhistorycart];
GO
IF OBJECT_ID(N'[dbo].[FK_product_detailproduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[detailproducts] DROP CONSTRAINT [FK_product_detailproduct];
GO
IF OBJECT_ID(N'[dbo].[FK_properties_detailproduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[detailproducts] DROP CONSTRAINT [FK_properties_detailproduct];
GO
IF OBJECT_ID(N'[dbo].[FK_user_historycart]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[historycarts] DROP CONSTRAINT [FK_user_historycart];
GO
IF OBJECT_ID(N'[dbo].[FK_Img_USERS]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[USERS] DROP CONSTRAINT [FK_Img_USERS];
GO
IF OBJECT_ID(N'[dbo].[FK_list_img_Img]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IMGs] DROP CONSTRAINT [FK_list_img_Img];
GO
IF OBJECT_ID(N'[dbo].[FK_list_img_product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[products] DROP CONSTRAINT [FK_list_img_product];
GO
IF OBJECT_ID(N'[dbo].[FK_menu_menu]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[menus] DROP CONSTRAINT [FK_menu_menu];
GO
IF OBJECT_ID(N'[dbo].[FK_menu_product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[products] DROP CONSTRAINT [FK_menu_product];
GO
IF OBJECT_ID(N'[dbo].[FK_history_product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[history] DROP CONSTRAINT [FK_history_product];
GO
IF OBJECT_ID(N'[dbo].[FK_history_USER]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[history] DROP CONSTRAINT [FK_history_USER];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ADMINS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ADMINS];
GO
IF OBJECT_ID(N'[dbo].[carts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[carts];
GO
IF OBJECT_ID(N'[dbo].[COMMENTs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[COMMENTs];
GO
IF OBJECT_ID(N'[dbo].[companies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[companies];
GO
IF OBJECT_ID(N'[dbo].[CONTENTs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CONTENTs];
GO
IF OBJECT_ID(N'[dbo].[detailhistorycarts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[detailhistorycarts];
GO
IF OBJECT_ID(N'[dbo].[detailproducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[detailproducts];
GO
IF OBJECT_ID(N'[dbo].[historycarts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[historycarts];
GO
IF OBJECT_ID(N'[dbo].[IMGs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IMGs];
GO
IF OBJECT_ID(N'[dbo].[LIST_IMG]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LIST_IMG];
GO
IF OBJECT_ID(N'[dbo].[menus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[menus];
GO
IF OBJECT_ID(N'[dbo].[products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[products];
GO
IF OBJECT_ID(N'[dbo].[properties]', 'U') IS NOT NULL
    DROP TABLE [dbo].[properties];
GO
IF OBJECT_ID(N'[dbo].[ranks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ranks];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[USERS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[USERS];
GO
IF OBJECT_ID(N'[dbo].[history]', 'U') IS NOT NULL
    DROP TABLE [dbo].[history];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ADMINS'
CREATE TABLE [dbo].[ADMINS] (
    [id] varchar(16)  NOT NULL,
    [passwords] varbinary(64)  NULL,
    [passwords_salt] varbinary(64)  NULL,
    [lastname] varchar(32)  NULL,
    [firstname] varchar(10)  NULL,
    [addressid] nvarchar(100)  NULL,
    [phone] varchar(15)  NULL,
    [email] varchar(32)  NULL,
    [idrank] int  NULL,
    [date_create] datetime  NULL,
    [admin_create] varchar(16)  NULL,
    [is_active] bit  NOT NULL,
    [idImg] int  NULL
);
GO

-- Creating table 'carts'
CREATE TABLE [dbo].[carts] (
    [iduser] varchar(16)  NOT NULL,
    [idproduct] int  NOT NULL,
    [COUNT] int  NULL
);
GO

-- Creating table 'COMMENTs'
CREATE TABLE [dbo].[COMMENTs] (
    [idproduct] int  NOT NULL,
    [iduser] varchar(16)  NOT NULL,
    [RATE] float  NOT NULL,
    [COMMENT1] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'companies'
CREATE TABLE [dbo].[companies] (
    [id] int IDENTITY(1,1) NOT NULL,
    [idcontent] int  NOT NULL,
    [idImg] int  NOT NULL
);
GO

-- Creating table 'CONTENTs'
CREATE TABLE [dbo].[CONTENTs] (
    [id] int IDENTITY(1,1) NOT NULL,
    [title] nvarchar(16)  NULL,
    [texts] nvarchar(1000)  NULL,
    [IDADMINS] varchar(16)  NOT NULL
);
GO

-- Creating table 'detailhistorycarts'
CREATE TABLE [dbo].[detailhistorycarts] (
    [idhistorycart] int  NOT NULL,
    [idproduct] int  NOT NULL,
    [COUNT] int  NULL
);
GO

-- Creating table 'detailproducts'
CREATE TABLE [dbo].[detailproducts] (
    [idproduct] int  NOT NULL,
    [idproperties] int  NOT NULL,
    [datas] nvarchar(1000)  NULL
);
GO

-- Creating table 'historycarts'
CREATE TABLE [dbo].[historycarts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [iduser] varchar(16)  NOT NULL,
    [datecart] datetime  NOT NULL,
    [iscomplete] bit  NULL
);
GO

-- Creating table 'IMGs'
CREATE TABLE [dbo].[IMGs] (
    [id] int IDENTITY(1,1) NOT NULL,
    [link] varchar(100)  NULL,
    [ten] nvarchar(50)  NULL,
    [owner_id] varchar(100)  NULL,
    [tableowner] varchar(100)  NULL,
    [mota] varchar(100)  NULL,
    [id_LIST_IMG] int  NULL
);
GO

-- Creating table 'LIST_IMG'
CREATE TABLE [dbo].[LIST_IMG] (
    [id] int IDENTITY(1,1) NOT NULL,
    [class] varchar(30)  NULL,
    [id_user] varchar(16)  NULL,
    [date_update] datetime  NULL
);
GO

-- Creating table 'menus'
CREATE TABLE [dbo].[menus] (
    [id] int IDENTITY(1,1) NOT NULL,
    [names] nvarchar(30)  NOT NULL,
    [is_active] bit  NOT NULL,
    [lv] int  NOT NULL,
    [menuownerid] int  NULL
);
GO

-- Creating table 'products'
CREATE TABLE [dbo].[products] (
    [id] int IDENTITY(1,1) NOT NULL,
    [names] nvarchar(30)  NULL,
    [price] int  NULL,
    [ispromotion] bit  NULL,
    [price_promotion] int  NULL,
    [is_available] bit  NULL,
    [idcontent] int  NOT NULL,
    [idmenu] int  NULL,
    [idcompany] int  NULL,
    [idADMINSLASTMDF] varchar(16)  NULL,
    [id_list_img] int  NULL
);
GO

-- Creating table 'properties'
CREATE TABLE [dbo].[properties] (
    [id] int IDENTITY(1,1) NOT NULL,
    [names] nvarchar(16)  NULL
);
GO

-- Creating table 'ranks'
CREATE TABLE [dbo].[ranks] (
    [id] int IDENTITY(1,1) NOT NULL,
    [names] nvarchar(20)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'USERS'
CREATE TABLE [dbo].[USERS] (
    [id] varchar(16)  NOT NULL,
    [passwords] varchar(32)  NULL,
    [lastname] varchar(32)  NULL,
    [firstname] varchar(10)  NULL,
    [addressid] nvarchar(100)  NULL,
    [phone] varchar(15)  NULL,
    [email] varchar(32)  NULL,
    [rank] nvarchar(20)  NULL,
    [datecreate] datetime  NULL,
    [is_active] bit  NOT NULL,
    [idImg] int  NULL
);
GO

-- Creating table 'history'
CREATE TABLE [dbo].[history] (
    [products_id] int  NOT NULL,
    [USERS_id] varchar(16)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'ADMINS'
ALTER TABLE [dbo].[ADMINS]
ADD CONSTRAINT [PK_ADMINS]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [iduser], [idproduct] in table 'carts'
ALTER TABLE [dbo].[carts]
ADD CONSTRAINT [PK_carts]
    PRIMARY KEY CLUSTERED ([iduser], [idproduct] ASC);
GO

-- Creating primary key on [idproduct], [iduser] in table 'COMMENTs'
ALTER TABLE [dbo].[COMMENTs]
ADD CONSTRAINT [PK_COMMENTs]
    PRIMARY KEY CLUSTERED ([idproduct], [iduser] ASC);
GO

-- Creating primary key on [id] in table 'companies'
ALTER TABLE [dbo].[companies]
ADD CONSTRAINT [PK_companies]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'CONTENTs'
ALTER TABLE [dbo].[CONTENTs]
ADD CONSTRAINT [PK_CONTENTs]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [idhistorycart], [idproduct] in table 'detailhistorycarts'
ALTER TABLE [dbo].[detailhistorycarts]
ADD CONSTRAINT [PK_detailhistorycarts]
    PRIMARY KEY CLUSTERED ([idhistorycart], [idproduct] ASC);
GO

-- Creating primary key on [idproduct], [idproperties] in table 'detailproducts'
ALTER TABLE [dbo].[detailproducts]
ADD CONSTRAINT [PK_detailproducts]
    PRIMARY KEY CLUSTERED ([idproduct], [idproperties] ASC);
GO

-- Creating primary key on [Id] in table 'historycarts'
ALTER TABLE [dbo].[historycarts]
ADD CONSTRAINT [PK_historycarts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'IMGs'
ALTER TABLE [dbo].[IMGs]
ADD CONSTRAINT [PK_IMGs]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'LIST_IMG'
ALTER TABLE [dbo].[LIST_IMG]
ADD CONSTRAINT [PK_LIST_IMG]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'menus'
ALTER TABLE [dbo].[menus]
ADD CONSTRAINT [PK_menus]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'products'
ALTER TABLE [dbo].[products]
ADD CONSTRAINT [PK_products]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'properties'
ALTER TABLE [dbo].[properties]
ADD CONSTRAINT [PK_properties]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'ranks'
ALTER TABLE [dbo].[ranks]
ADD CONSTRAINT [PK_ranks]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [id] in table 'USERS'
ALTER TABLE [dbo].[USERS]
ADD CONSTRAINT [PK_USERS]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [products_id], [USERS_id] in table 'history'
ALTER TABLE [dbo].[history]
ADD CONSTRAINT [PK_history]
    PRIMARY KEY CLUSTERED ([products_id], [USERS_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [admin_create] in table 'ADMINS'
ALTER TABLE [dbo].[ADMINS]
ADD CONSTRAINT [FK_ADMINS_ADMINS]
    FOREIGN KEY ([admin_create])
    REFERENCES [dbo].[ADMINS]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ADMINS_ADMINS'
CREATE INDEX [IX_FK_ADMINS_ADMINS]
ON [dbo].[ADMINS]
    ([admin_create]);
GO

-- Creating foreign key on [IDADMINS] in table 'CONTENTs'
ALTER TABLE [dbo].[CONTENTs]
ADD CONSTRAINT [FK_ADMINS_CONTENT]
    FOREIGN KEY ([IDADMINS])
    REFERENCES [dbo].[ADMINS]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ADMINS_CONTENT'
CREATE INDEX [IX_FK_ADMINS_CONTENT]
ON [dbo].[CONTENTs]
    ([IDADMINS]);
GO

-- Creating foreign key on [idADMINSLASTMDF] in table 'products'
ALTER TABLE [dbo].[products]
ADD CONSTRAINT [FK_ADMINS_product]
    FOREIGN KEY ([idADMINSLASTMDF])
    REFERENCES [dbo].[ADMINS]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ADMINS_product'
CREATE INDEX [IX_FK_ADMINS_product]
ON [dbo].[products]
    ([idADMINSLASTMDF]);
GO

-- Creating foreign key on [idImg] in table 'ADMINS'
ALTER TABLE [dbo].[ADMINS]
ADD CONSTRAINT [FK_Img_ADMINS]
    FOREIGN KEY ([idImg])
    REFERENCES [dbo].[IMGs]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Img_ADMINS'
CREATE INDEX [IX_FK_Img_ADMINS]
ON [dbo].[ADMINS]
    ([idImg]);
GO

-- Creating foreign key on [idrank] in table 'ADMINS'
ALTER TABLE [dbo].[ADMINS]
ADD CONSTRAINT [FK_rank_ADMINS]
    FOREIGN KEY ([idrank])
    REFERENCES [dbo].[ranks]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_rank_ADMINS'
CREATE INDEX [IX_FK_rank_ADMINS]
ON [dbo].[ADMINS]
    ([idrank]);
GO

-- Creating foreign key on [idproduct] in table 'carts'
ALTER TABLE [dbo].[carts]
ADD CONSTRAINT [FK_product_cart]
    FOREIGN KEY ([idproduct])
    REFERENCES [dbo].[products]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_product_cart'
CREATE INDEX [IX_FK_product_cart]
ON [dbo].[carts]
    ([idproduct]);
GO

-- Creating foreign key on [iduser] in table 'carts'
ALTER TABLE [dbo].[carts]
ADD CONSTRAINT [FK_user_cart]
    FOREIGN KEY ([iduser])
    REFERENCES [dbo].[USERS]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idproduct] in table 'COMMENTs'
ALTER TABLE [dbo].[COMMENTs]
ADD CONSTRAINT [FK_product_COMMENT]
    FOREIGN KEY ([idproduct])
    REFERENCES [dbo].[products]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [iduser] in table 'COMMENTs'
ALTER TABLE [dbo].[COMMENTs]
ADD CONSTRAINT [FK_USER_COMMENT]
    FOREIGN KEY ([iduser])
    REFERENCES [dbo].[USERS]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_USER_COMMENT'
CREATE INDEX [IX_FK_USER_COMMENT]
ON [dbo].[COMMENTs]
    ([iduser]);
GO

-- Creating foreign key on [idcompany] in table 'products'
ALTER TABLE [dbo].[products]
ADD CONSTRAINT [FK_company_product]
    FOREIGN KEY ([idcompany])
    REFERENCES [dbo].[companies]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_company_product'
CREATE INDEX [IX_FK_company_product]
ON [dbo].[products]
    ([idcompany]);
GO

-- Creating foreign key on [idcontent] in table 'companies'
ALTER TABLE [dbo].[companies]
ADD CONSTRAINT [FK_CONTENT_company]
    FOREIGN KEY ([idcontent])
    REFERENCES [dbo].[CONTENTs]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CONTENT_company'
CREATE INDEX [IX_FK_CONTENT_company]
ON [dbo].[companies]
    ([idcontent]);
GO

-- Creating foreign key on [idImg] in table 'companies'
ALTER TABLE [dbo].[companies]
ADD CONSTRAINT [FK_Img_company]
    FOREIGN KEY ([idImg])
    REFERENCES [dbo].[IMGs]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Img_company'
CREATE INDEX [IX_FK_Img_company]
ON [dbo].[companies]
    ([idImg]);
GO

-- Creating foreign key on [idcontent] in table 'products'
ALTER TABLE [dbo].[products]
ADD CONSTRAINT [FK_CONTENT_product]
    FOREIGN KEY ([idcontent])
    REFERENCES [dbo].[CONTENTs]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CONTENT_product'
CREATE INDEX [IX_FK_CONTENT_product]
ON [dbo].[products]
    ([idcontent]);
GO

-- Creating foreign key on [idhistorycart] in table 'detailhistorycarts'
ALTER TABLE [dbo].[detailhistorycarts]
ADD CONSTRAINT [FK_historycart_detailhistorycart]
    FOREIGN KEY ([idhistorycart])
    REFERENCES [dbo].[historycarts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idproduct] in table 'detailhistorycarts'
ALTER TABLE [dbo].[detailhistorycarts]
ADD CONSTRAINT [FK_product_detailhistorycart]
    FOREIGN KEY ([idproduct])
    REFERENCES [dbo].[products]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_product_detailhistorycart'
CREATE INDEX [IX_FK_product_detailhistorycart]
ON [dbo].[detailhistorycarts]
    ([idproduct]);
GO

-- Creating foreign key on [idproduct] in table 'detailproducts'
ALTER TABLE [dbo].[detailproducts]
ADD CONSTRAINT [FK_product_detailproduct]
    FOREIGN KEY ([idproduct])
    REFERENCES [dbo].[products]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idproperties] in table 'detailproducts'
ALTER TABLE [dbo].[detailproducts]
ADD CONSTRAINT [FK_properties_detailproduct]
    FOREIGN KEY ([idproperties])
    REFERENCES [dbo].[properties]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_properties_detailproduct'
CREATE INDEX [IX_FK_properties_detailproduct]
ON [dbo].[detailproducts]
    ([idproperties]);
GO

-- Creating foreign key on [iduser] in table 'historycarts'
ALTER TABLE [dbo].[historycarts]
ADD CONSTRAINT [FK_user_historycart]
    FOREIGN KEY ([iduser])
    REFERENCES [dbo].[USERS]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_user_historycart'
CREATE INDEX [IX_FK_user_historycart]
ON [dbo].[historycarts]
    ([iduser]);
GO

-- Creating foreign key on [idImg] in table 'USERS'
ALTER TABLE [dbo].[USERS]
ADD CONSTRAINT [FK_Img_USERS]
    FOREIGN KEY ([idImg])
    REFERENCES [dbo].[IMGs]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Img_USERS'
CREATE INDEX [IX_FK_Img_USERS]
ON [dbo].[USERS]
    ([idImg]);
GO

-- Creating foreign key on [id_LIST_IMG] in table 'IMGs'
ALTER TABLE [dbo].[IMGs]
ADD CONSTRAINT [FK_list_img_Img]
    FOREIGN KEY ([id_LIST_IMG])
    REFERENCES [dbo].[LIST_IMG]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_list_img_Img'
CREATE INDEX [IX_FK_list_img_Img]
ON [dbo].[IMGs]
    ([id_LIST_IMG]);
GO

-- Creating foreign key on [id_list_img] in table 'products'
ALTER TABLE [dbo].[products]
ADD CONSTRAINT [FK_list_img_product]
    FOREIGN KEY ([id_list_img])
    REFERENCES [dbo].[LIST_IMG]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_list_img_product'
CREATE INDEX [IX_FK_list_img_product]
ON [dbo].[products]
    ([id_list_img]);
GO

-- Creating foreign key on [menuownerid] in table 'menus'
ALTER TABLE [dbo].[menus]
ADD CONSTRAINT [FK_menu_menu]
    FOREIGN KEY ([menuownerid])
    REFERENCES [dbo].[menus]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_menu_menu'
CREATE INDEX [IX_FK_menu_menu]
ON [dbo].[menus]
    ([menuownerid]);
GO

-- Creating foreign key on [idmenu] in table 'products'
ALTER TABLE [dbo].[products]
ADD CONSTRAINT [FK_menu_product]
    FOREIGN KEY ([idmenu])
    REFERENCES [dbo].[menus]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_menu_product'
CREATE INDEX [IX_FK_menu_product]
ON [dbo].[products]
    ([idmenu]);
GO

-- Creating foreign key on [products_id] in table 'history'
ALTER TABLE [dbo].[history]
ADD CONSTRAINT [FK_history_product]
    FOREIGN KEY ([products_id])
    REFERENCES [dbo].[products]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [USERS_id] in table 'history'
ALTER TABLE [dbo].[history]
ADD CONSTRAINT [FK_history_USER]
    FOREIGN KEY ([USERS_id])
    REFERENCES [dbo].[USERS]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_history_USER'
CREATE INDEX [IX_FK_history_USER]
ON [dbo].[history]
    ([USERS_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------