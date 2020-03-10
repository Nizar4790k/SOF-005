
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/10/2020 10:44:01
-- Generated from EDMX file: C:\Users\Nizar4790k\Documents\SOF-005\EntityFrameWorkModelForm\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FORMULARIO2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EstadoCivilPersona]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Personas] DROP CONSTRAINT [FK_EstadoCivilPersona];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonaHobby_Persona]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonaHobby] DROP CONSTRAINT [FK_PersonaHobby_Persona];
GO
IF OBJECT_ID(N'[dbo].[FK_PersonaHobby_Hobby]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PersonaHobby] DROP CONSTRAINT [FK_PersonaHobby_Hobby];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Personas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Personas];
GO
IF OBJECT_ID(N'[dbo].[EstadoCivils]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstadoCivils];
GO
IF OBJECT_ID(N'[dbo].[Hobbies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Hobbies];
GO
IF OBJECT_ID(N'[dbo].[PersonaHobby]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PersonaHobby];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Personas'
CREATE TABLE [dbo].[Personas] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Cedula] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [EstadoCivil_Id] int  NOT NULL
);
GO

-- Creating table 'EstadoCivils'
CREATE TABLE [dbo].[EstadoCivils] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Hobbies'
CREATE TABLE [dbo].[Hobbies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PersonaHobby'
CREATE TABLE [dbo].[PersonaHobby] (
    [Personas_Id] int  NOT NULL,
    [Hobbies_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Personas'
ALTER TABLE [dbo].[Personas]
ADD CONSTRAINT [PK_Personas]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EstadoCivils'
ALTER TABLE [dbo].[EstadoCivils]
ADD CONSTRAINT [PK_EstadoCivils]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Hobbies'
ALTER TABLE [dbo].[Hobbies]
ADD CONSTRAINT [PK_Hobbies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Personas_Id], [Hobbies_Id] in table 'PersonaHobby'
ALTER TABLE [dbo].[PersonaHobby]
ADD CONSTRAINT [PK_PersonaHobby]
    PRIMARY KEY CLUSTERED ([Personas_Id], [Hobbies_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [EstadoCivil_Id] in table 'Personas'
ALTER TABLE [dbo].[Personas]
ADD CONSTRAINT [FK_EstadoCivilPersona]
    FOREIGN KEY ([EstadoCivil_Id])
    REFERENCES [dbo].[EstadoCivils]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EstadoCivilPersona'
CREATE INDEX [IX_FK_EstadoCivilPersona]
ON [dbo].[Personas]
    ([EstadoCivil_Id]);
GO

-- Creating foreign key on [Personas_Id] in table 'PersonaHobby'
ALTER TABLE [dbo].[PersonaHobby]
ADD CONSTRAINT [FK_PersonaHobby_Persona]
    FOREIGN KEY ([Personas_Id])
    REFERENCES [dbo].[Personas]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Hobbies_Id] in table 'PersonaHobby'
ALTER TABLE [dbo].[PersonaHobby]
ADD CONSTRAINT [FK_PersonaHobby_Hobby]
    FOREIGN KEY ([Hobbies_Id])
    REFERENCES [dbo].[Hobbies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonaHobby_Hobby'
CREATE INDEX [IX_FK_PersonaHobby_Hobby]
ON [dbo].[PersonaHobby]
    ([Hobbies_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------