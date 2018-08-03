CREATE TABLE [dbo].[ESTUDIANTE]
(
[MATRICULA] [int] NOT NULL,
[NOMBRE] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[APELLIDO] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[NO.RESIDENCIA] [int] NOT NULL,
[CALLE] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[SECTOR] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[MUNICIPIO] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[PROVINCIA] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[NUMERO] [varchar] (15) COLLATE Latin1_General_CI_AS NOT NULL,
[CERTIFICADO_BACH] [xml] NULL,
[CEDULA] [image] NULL,
[FOTO] [image] NOT NULL,
[ACTA_NACIMIENTO] [xml] NOT NULL,
[RECORD_NOTA] [xml] NULL,
[ESTADO] [varchar] (15) COLLATE Latin1_General_CI_AS NOT NULL,
[COD_CARRERA] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ESTUDIANTE] ADD CONSTRAINT [PK_ESTUDIANTE] PRIMARY KEY CLUSTERED  ([MATRICULA]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ESTUDIANTE] ADD CONSTRAINT [FK_ESTUDIANTE_CARRERA] FOREIGN KEY ([COD_CARRERA]) REFERENCES [dbo].[CARRERA] ([COD_CARRERA])
GO