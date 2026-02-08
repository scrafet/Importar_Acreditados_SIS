USE [sigh_sis]
GO
/****** Object:  Table [dbo].[a_categoriaeess]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_categoriaeess](
	[cat_IdCategoriaEESS] [varchar](2) NOT NULL,
	[cat_Abreviatura] [varchar](10) NOT NULL,
	[cat_Descripcion] [varchar](50) NOT NULL,
	[cat_Nivel] [int] NULL,
	[cat_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_componentes]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_componentes](
	[com_IdComponente] [varchar](1) NOT NULL,
	[com_Descripcion] [varchar](50) NOT NULL,
	[com_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_condicionmaterna]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_condicionmaterna](
	[cdm_IdCondicion] [varchar](1) NOT NULL,
	[cdm_Descripcion] [varchar](20) NOT NULL,
	[cdm_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_destinoasegurado]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_destinoasegurado](
	[des_IdDestinoAsegurado] [varchar](1) NOT NULL,
	[des_Descripcion] [varchar](50) NOT NULL,
	[des_Refiere] [varchar](50) NOT NULL,
	[des_IdEstado] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_detallereglasconvenio]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_detallereglasconvenio](
	[rcc_IdRCC] [int] NOT NULL,
	[rcc_IdConvenio] [varchar](3) NOT NULL,
	[rcc_IdRC] [varchar](3) NOT NULL,
	[rcc_IdEstado] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_especialidad]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_especialidad](
	[esp_IdEspecialidad] [varchar](2) NOT NULL,
	[esp_Descripcion] [varchar](200) NOT NULL,
	[esp_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_institucion]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_institucion](
	[iseg_IdInstitucion] [varchar](3) NOT NULL,
	[iseg_IdDisa] [varchar](3) NULL,
	[iseg_Descripcion] [varchar](60) NOT NULL,
	[iseg_EsConvenio] [varchar](1) NULL,
	[iseg_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_lotes]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_lotes](
	[lot_IdLote] [int] NOT NULL,
	[lot_IdComponente] [varchar](1) NOT NULL,
	[lot_IdTipoFormato] [int] NOT NULL,
	[lot_IdTablaSiasis] [varchar](2) NULL,
	[lot_IdSitFormato] [int] NOT NULL,
	[lot_Lote] [varchar](2) NOT NULL,
	[lot_IdEstado] [varchar](1) NOT NULL,
	[lot_Detalle] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_lugaratencion]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_lugaratencion](
	[lug_IdLugar] [varchar](1) NOT NULL,
	[lug_Descripcion] [varchar](50) NOT NULL,
	[lug_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_modalidadatencion]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_modalidadatencion](
	[mod_IdModalidad] [varchar](1) NOT NULL,
	[mod_Descripcion] [varchar](50) NOT NULL,
	[mod_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_normaslegales]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_normaslegales](
	[nrm_IdNormaLegal] [int] NOT NULL,
	[nrm_NormaLegal] [varchar](50) NOT NULL,
	[nrm_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_origenpersonal]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_origenpersonal](
	[ope_IdOrigenPersonal] [varchar](1) NOT NULL,
	[ope_Descripcion] [varchar](50) NOT NULL,
	[ope_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_parentesco]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_parentesco](
	[par_IdParentesco] [varchar](2) NOT NULL,
	[par_Descripcion] [varchar](40) NOT NULL,
	[par_Orden] [int] NOT NULL,
	[par_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_periodos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_periodos](
	[per_IdPeriodo] [int] NOT NULL,
	[per_Periodo] [varchar](4) NOT NULL,
	[per_Mes] [varchar](2) NOT NULL,
	[per_FecIniAfi] [smalldatetime] NULL,
	[per_FecIniReg] [smalldatetime] NOT NULL,
	[per_FecMaxReg] [smalldatetime] NOT NULL,
	[per_725] [varchar](1) NOT NULL,
	[per_Control] [varchar](1) NULL,
	[per_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_presentaciones]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_presentaciones](
	[tpre_IdPresentacion] [varchar](3) NOT NULL,
	[tpre_Descripcion] [varchar](250) NOT NULL,
	[tpre_Abreviatura] [varchar](15) NOT NULL,
	[tpre_TopeMinimo] [int] NULL,
	[tpre_TopeNoHosp] [int] NULL,
	[tpre_TopeHosp] [int] NULL,
	[tpre_IdEstado] [sysname] NOT NULL,
 CONSTRAINT [PK_a_presentaciones] PRIMARY KEY CLUSTERED
(
	[tpre_IdPresentacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_query]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_query](
	[qry_IdQuery] [int] NOT NULL,
	[qry_Definicion] [ntext] NOT NULL,
	[qry_Descripcion] [nvarchar](500) NULL,
	[qry_Conteo] [int] NOT NULL,
	[qry_FechaEjecucion] [smalldatetime] NULL,
	[qry_FechaPublicacion] [smalldatetime] NOT NULL,
	[qry_VersionAplicativo] [int] NOT NULL,
	[qry_IdEstado] [sysname] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc01]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc01](
	[rc01_IdRegla] [int] NOT NULL,
	[rc01_IdRM] [int] NULL,
	[rc01_IdServicio] [varchar](3) NOT NULL,
	[rc01_IdComponente] [varchar](1) NOT NULL,
	[rc01_IdCondicion] [varchar](1) NOT NULL,
	[rc01_IdSexo] [varchar](1) NOT NULL,
	[rc01_EdadMin] [varchar](8) NOT NULL,
	[rc01_IdTipoEdadMin] [varchar](1) NULL,
	[rc01_EdadMax] [varchar](8) NOT NULL,
	[rc01_IdTipoEdadMax] [varchar](1) NULL,
	[rc01_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc03]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc03](
	[rc03_IdRegla] [int] NOT NULL,
	[rc03_IdRM] [int] NOT NULL,
	[rc03_IdNomaLegal] [int] NULL,
	[rc03_IdServicio] [varchar](3) NOT NULL,
	[rc03_IdModalidad] [varchar](1) NOT NULL,
	[rc03_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc04]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc04](
	[rc04_IdRegla] [int] NOT NULL,
	[rc04_IdRM] [int] NULL,
	[rc04_IdServicio] [varchar](3) NOT NULL,
	[rc04_IdDestinoAsegurado] [varchar](1) NOT NULL,
	[rc04_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc05]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc05](
	[rc05_IdRegla] [int] NOT NULL,
	[rc05_IdRM] [int] NULL,
	[rc05_IdServicio] [varchar](3) NOT NULL,
	[rc05_IdSmi] [varchar](3) NOT NULL,
	[rc05_Enteros] [int] NULL,
	[rc05_Decimales] [int] NULL,
	[rc05_Minimo] [float] NULL,
	[rc05_Maximo] [float] NULL,
	[rc05_SINO] [int] NULL,
	[rc05_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc06]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc06](
	[rc06_IdRegla] [int] NOT NULL,
	[rc06_IdRM] [int] NOT NULL,
	[rc06_AbreviaturaFF] [varchar](15) NOT NULL,
	[rc06_TopeMinimo] [int] NOT NULL,
	[rc06_TopeNoHosp] [int] NOT NULL,
	[rc06_TopeHosp] [int] NOT NULL,
	[rc06_IdEstado] [sysname] NOT NULL,
	[rc06_NivelEESS] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc07]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc07](
	[rc07_IdServicio] [varchar](3) NOT NULL,
	[rc07_TopeSepelio] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc09]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc09](
	[rc09_IdRegla] [int] NOT NULL,
	[rc09_IdServicio] [varchar](3) NOT NULL,
	[rc09_IdRM] [int] NOT NULL,
	[rc09_CodMed] [varchar](13) NULL,
	[rc09_CodIns] [varchar](5) NULL,
	[rc09_TopeMinimo] [int] NOT NULL,
	[rc09_TopeMaximo] [int] NOT NULL,
	[rc09_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc12]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc12](
	[rc12_IdRc12] [int] NOT NULL,
	[rc12_IdRM] [int] NULL,
	[rc12_IdServicio] [varchar](3) NOT NULL,
	[rc12_ControlCantidad] [smallint] NOT NULL,
	[rc12_MedIns] [smallint] NOT NULL,
	[rc12_ApoDiag] [smallint] NOT NULL,
	[rc12_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc13]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc13](
	[rc13_IdRegla] [int] NOT NULL,
	[rc13_IdRM] [int] NULL,
	[rc13_IdServicio] [varchar](3) NOT NULL,
	[rc13_TopeDia] [smallint] NOT NULL,
	[rc13_TopeMes] [smallint] NOT NULL,
	[rc13_TopeAnio] [smallint] NOT NULL,
	[rc13_Capita] [varchar](1) NULL,
	[rc13_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc14]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc14](
	[rc14_IdRegla] [smallint] NOT NULL,
	[rc14_IdRM] [int] NULL,
	[rc14_IdServicio] [varchar](3) NULL,
	[rc14_IdSmi] [varchar](3) NULL,
	[rc14_Item] [smallint] NULL,
	[rc14_Dosis] [varchar](2) NULL,
	[rc14_IdEstado] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc15]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc15](
	[rc15_IdRegla] [smallint] NOT NULL,
	[rc15_IdRM] [int] NULL,
	[rc15_IdServicio] [varchar](3) NULL,
	[rc15_IdProcedimiento] [varchar](15) NULL,
	[rc15_Combinacion] [smallint] NULL,
	[rc15_GrupoA] [smallint] NULL,
	[rc15_GrupoB] [smallint] NULL,
	[rc15_IdEstado] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc16]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc16](
	[rc16_IdRegla] [smallint] NOT NULL,
	[rc16_Idservicio] [varchar](3) NULL,
	[rc16_IdRM] [int] NULL,
	[rc16_Nivel] [varchar](1) NULL,
	[rc16_IdTipoAtencion] [varchar](1) NULL,
	[rc16_autoriza] [varchar](1) NULL,
	[rc16_IdEstado] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc18]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc18](
	[rc18_IdRegla] [int] NOT NULL,
	[rc18_IdRM] [int] NOT NULL,
	[rc18_IdProcedimiento] [varchar](15) NOT NULL,
	[rc18_Tope] [smallint] NOT NULL,
	[rc18_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc19]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc19](
	[rc19_IdRegla] [int] NOT NULL,
	[rc19_IdRM] [int] NOT NULL,
	[rc19_IdServicio] [varchar](3) NOT NULL,
	[rc19_IdProcedimiento] [varchar](15) NOT NULL,
	[rc19_ControlCantidad] [smallint] NOT NULL,
	[rc19_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc20]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc20](
	[rc20_IdRegla] [int] NOT NULL,
	[rc20_IdRm] [int] NOT NULL,
	[rc20_IdProcedimiento] [varchar](15) NOT NULL,
	[rc20_IdTipoPersonalSalud] [varchar](2) NOT NULL,
	[rc20_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc21]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc21](
	[rc21_IdRegla] [int] NOT NULL,
	[rc21_IdRM] [int] NOT NULL,
	[rc21_IdServicio] [varchar](3) NOT NULL,
	[rc21_IdProcedimiento] [varchar](15) NOT NULL,
	[rc21_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc22]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc22](
	[rc22_IdRegla] [int] NOT NULL,
	[rc22_IdRM] [int] NOT NULL,
	[rc22_IdServicio] [varchar](3) NOT NULL,
	[rc22_IdDisa] [varchar](3) NOT NULL,
	[rc22_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_rc23]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_rc23](
	[rc23_IdRegla] [int] NOT NULL,
	[rc23_IdRM] [int] NOT NULL,
	[rc23_IdDisa] [varchar](3) NULL,
	[rc23_IdProcedimiento] [varchar](15) NOT NULL,
	[rc23_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_resatencion]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_resatencion](
	[pers_IdResAtencion] [varchar](9) NOT NULL,
	[pers_IdTipoDocumento] [varchar](1) NOT NULL,
	[pers_ApePaterno] [varchar](40) NULL,
	[pers_ApeMaterno] [varchar](40) NULL,
	[pers_PriNombre] [varchar](35) NULL,
	[pers_OtrNombre] [varchar](35) NULL,
	[pers_IdTipoPersonalSalud] [varchar](2) NOT NULL,
	[pers_Colegiatura] [varchar](20) NULL,
	[pers_IdEspecialidad] [varchar](2) NULL,
	[pers_NroEspecialidad] [varchar](10) NULL,
	[pers_IdEstado] [varchar](1) NULL,
 CONSTRAINT [PK_a_resatencion] PRIMARY KEY CLUSTERED
(
	[pers_IdResAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_serviciosconvenio]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_serviciosconvenio](
	[src_IdRCC] [int] NOT NULL,
	[src_IdRegla] [int] NOT NULL,
	[src_IdEstado] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_sexo]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_sexo](
	[sex_IdSexo] [varchar](1) NOT NULL,
	[sex_Descripcion] [varchar](18) NOT NULL,
	[sex_General] [varchar](1) NOT NULL,
	[sex_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_situacionformato]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_situacionformato](
	[sfrm_IdSitFormato] [int] NULL,
	[sfrm_Descripcion] [sysname] NOT NULL,
	[sfrm_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tipoatencion]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tipoatencion](
	[tat_IdTipoAtencion] [varchar](1) NOT NULL,
	[tat_Descripcion] [varchar](50) NOT NULL,
	[tat_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tipodiagnostico]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tipodiagnostico](
	[tda_IdTipoDiagnostico] [varchar](1) NOT NULL,
	[tda_Descripcion] [varchar](15) NOT NULL,
	[tda_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tipodocumento]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tipodocumento](
	[ide_IdTipoDocumento] [varchar](1) NOT NULL,
	[ide_Descripcion] [varchar](50) NOT NULL,
	[ide_Longitud] [int] NOT NULL,
	[ide_CUI] [varchar](1) NOT NULL,
	[ide_NoTiene] [varchar](1) NOT NULL,
	[ide_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tipoedad]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tipoedad](
	[ted_IdTipoEdad] [sysname] NOT NULL,
	[ted_Descripcion] [sysname] NOT NULL,
	[ted_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tipoformato]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tipoformato](
	[tfrm_IdTipoFormato] [int] NOT NULL,
	[tfrm_IdTipoSiasisBaja] [nvarchar](2) NULL,
	[tfrm_Descripcion] [sysname] NOT NULL,
	[tfrm_Anulable] [sysname] NOT NULL,
	[tfrm_Atencion] [sysname] NOT NULL,
	[tfrm_InsAfi] [sysname] NOT NULL,
	[tfrm_IdEstado] [sysname] NOT NULL,
	[tfrm_AtencionEscolar] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tipoingegr]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tipoingegr](
	[tpie_IdIngEgr] [varchar](1) NOT NULL,
	[tpie_Descripcion] [varchar](50) NOT NULL,
	[tpie_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tipopersonalsalud]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tipopersonalsalud](
	[tps_IdTipoPersonalSalud] [varchar](2) NOT NULL,
	[tps_Descripcion] [varchar](30) NOT NULL,
	[tps_EsProfesional] [varchar](1) NOT NULL,
	[tps_Abrevia] [varchar](4) NOT NULL,
	[tps_Especialista] [varchar](1) NOT NULL,
	[tps_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tiporesponsable]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tiporesponsable](
	[tre_IdTipoResponsable] [varchar](2) NOT NULL,
	[tre_Descripcion] [varchar](100) NOT NULL,
	[tre_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tiposervicio]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tiposervicio](
	[tse_IdTipoServicio] [int] NOT NULL,
	[tse_Descripcion] [varchar](20) NOT NULL,
	[tse_IdEstado] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_tipotarifa]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_tipotarifa](
	[tta_IdTipoTarifa] [int] NULL,
	[tta_Descripcion] [sysname] NOT NULL,
	[tta_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[a_version]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[a_version](
	[ver_IdVersion] [int] NOT NULL,
	[ver_Maestros] [int] NOT NULL,
	[ver_Data] [int] NOT NULL,
	[ver_Arfsis] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[i_reconsideracion]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[i_reconsideracion](
	[rcd_IdAtencion] [int] NOT NULL,
	[rcd_IdDisa] [sysname] NOT NULL,
	[rcd_Lote] [sysname] NOT NULL,
	[rcd_Numero] [sysname] NOT NULL,
	[rcd_IdEstado] [nvarchar](1) NULL,
	[rcd_Observacion] [nvarchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_apodiag]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_apodiag](
	[apo_CodProcedimiento] [varchar](15) NOT NULL,
	[apo_CodSeg] [varchar](3) NULL,
	[apo_Nombre] [varchar](180) NOT NULL,
	[apo_EsIntercambio] [varchar](50) NULL,
	[apo_Costo] [numeric](18, 4) NOT NULL,
	[apo_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_cie10]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_cie10](
	[C10_CodDia] [varchar](5) NOT NULL,
	[C10_Descripcion] [varchar](100) NOT NULL,
	[C10_Excluido] [varchar](1) NOT NULL,
	[C10_Morbi] [varchar](3) NOT NULL,
	[C10_TipDia] [varchar](3) NOT NULL,
	[C10_EsByPass] [varchar](1) NOT NULL,
	[C10_IdSexo] [varchar](1) NOT NULL,
	[C10_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_departamentos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_departamentos](
	[dep_IdDep] [sysname] NOT NULL,
	[dep_Descripcion] [sysname] NOT NULL,
	[dep_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_disas]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_disas](
	[dis_IdDisa] [varchar](3) NOT NULL,
	[dis_Descripcion] [varchar](50) NOT NULL,
	[dis_Abrevia] [varchar](50) NOT NULL,
	[dis_IdDep] [varchar](2) NOT NULL,
	[dis_Es_ByPass] [varchar](1) NOT NULL,
	[dis_PlanF] [varchar](1) NOT NULL,
	[dis_Capita] [varchar](1) NOT NULL,
	[dis_CodBan] [varchar](4) NOT NULL,
	[dis_Umbral] [varchar](1) NOT NULL,
	[dis_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_distritos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_distritos](
	[dis_IdUbigeo] [sysname] NOT NULL,
	[dis_IdProv] [sysname] NOT NULL,
	[dis_Descripcion] [sysname] NOT NULL,
	[dis_Quintil_Foncodes] [nvarchar](1) NULL,
	[dis_Ambito] [nvarchar](1) NULL,
	[dis_Region] [nvarchar](1) NULL,
	[dis_Crecer880] [nvarchar](1) NULL,
	[dis_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_eess]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_eess](
	[pre_IdEESS] [varchar](10) NOT NULL,
	[pre_Nombre] [varchar](150) NOT NULL,
	[pre_Afilia] [varchar](1) NOT NULL,
	[pre_UCI] [varchar](1) NOT NULL,
	[pre_IdCategoriaEESS] [varchar](2) NOT NULL,
	[pre_IdDisa] [varchar](3) NOT NULL,
	[pre_IdOdsis] [varchar](3) NOT NULL,
	[pre_IdUbigeo] [varchar](6) NOT NULL,
	[pre_CodEjeAdm] [varchar](4) NOT NULL,
	[pre_Vrae] [varchar](1) NOT NULL,
	[pre_Umbral] [varchar](1) NOT NULL,
	[pre_Aisped] [varchar](1) NULL,
	[pre_esmn] [varchar](50) NULL,
	[pre_IdEstado] [varchar](50) NOT NULL,
	[pre_CodigoRENAES] [varchar](50) NULL,
 CONSTRAINT [PK_m_eess] PRIMARY KEY CLUSTERED
(
	[pre_IdEESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_equivalencias]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_equivalencias](
	[equ_IdEquivalencia] [int] NULL,
	[equ_IdServicio] [sysname] NOT NULL,
	[equ_IdCodSerEqu] [sysname] NOT NULL,
	[equ_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_gruporiesgo]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_gruporiesgo](
	[rgo_IdGrupoRiesgo] [sysname] NOT NULL,
	[rgo_Descripcion] [sysname] NOT NULL,
	[rgo_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_iiee]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_iiee](
	[IEQW_ID_NUMREGISTROIE] [float] NULL,
	[IEQW_V_CODIGODRE] [nvarchar](255) NULL,
	[IEQW_V_NOMBREDRE] [nvarchar](255) NULL,
	[IEQW_V_CODIGOUGEL] [nvarchar](255) NULL,
	[IEQW_V_NOMBREUGEL] [nvarchar](255) NULL,
	[IEQW_V_CODIGOMODULAR] [nvarchar](255) NULL,
	[IEQW_V_ANEXO] [nvarchar](255) NULL,
	[IEQW_V_NOMBREIE] [nvarchar](255) NULL,
	[IEQW_V_CODIGOLOCAL] [nvarchar](255) NULL,
	[IEQW_V_UGIGEOIE_INEI] [nvarchar](255) NULL,
	[IEQW_V_UBIGEOIE_NOMBRE] [nvarchar](255) NULL,
	[IEQW_V_CODIGOCENTRO_POBLADO] [nvarchar](255) NULL,
	[IEQW_V_NOMBRECENTRO_POBLADO] [nvarchar](255) NULL,
	[IEQW_V_DIRECCIONIE] [nvarchar](255) NULL,
	[IEQW_V_NIVELMODALIDAD] [nvarchar](255) NULL,
	[IEQW_V_TIPOGESTION] [nvarchar](255) NULL,
	[IEQW_V_FORMASERVICIO] [nvarchar](255) NULL,
	[IEQW_V_TURNO] [nvarchar](255) NULL,
	[IEQW_D_FECHAREGISTRO_IE] [nvarchar](255) NULL,
	[IEQW_V_ESTADO] [nvarchar](255) NULL,
	[IEQW_D_FECHARETIRO] [nvarchar](255) NULL,
	[IEQW_V_NOMBREDIRECTOR_IE] [nvarchar](255) NULL,
	[IEQW_V_TELEFONO_IE] [nvarchar](255) NULL,
	[IEQW_V_LONGITUD] [nvarchar](255) NULL,
	[IEQW_V_LATITUD] [nvarchar](255) NULL,
	[IEQW_V_AMBITOQALIWARMA] [nvarchar](255) NULL,
	[IEQW_V_USUARIOCREA] [nvarchar](255) NULL,
	[IEQW_D_FECCREA] [nvarchar](255) NULL,
	[IEQW_V_DOCUMENTOCREA] [nvarchar](255) NULL,
	[IEQW_V_USUARIOACT] [nvarchar](255) NULL,
	[IEQW_D_FECACT] [nvarchar](255) NULL,
	[IEQW_V_DOCUMENTOACT] [nvarchar](255) NULL,
	[IEQW_B_FLAGREGISTROELIMINADO] [float] NULL,
	[IEQW_V_CODIGOCOLEGIO] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_IIEE_Grado]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_IIEE_Grado](
	[IdNivel] [varchar](1) NOT NULL,
	[IdGrado] [varchar](1) NOT NULL,
	[Grado] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_IIEE_Nivel]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_IIEE_Nivel](
	[IdNivel] [varchar](1) NOT NULL,
	[Nivel] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_IIEE_Turno]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_IIEE_Turno](
	[IdTurno] [varchar](1) NOT NULL,
	[Turno] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_insumos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_insumos](
	[ins_CodIns] [varchar](5) NOT NULL,
	[ins_Nombre] [varchar](200) NOT NULL,
	[ins_FormaFarmaceutica] [varchar](15) NOT NULL,
	[ins_Presen] [varchar](80) NULL,
	[ins_Concen] [varchar](50) NULL,
	[ins_Costo] [numeric](10, 2) NOT NULL,
	[ins_Observacion] [varchar](50) NULL,
	[ins_Petitorio] [varchar](1) NOT NULL,
	[ins_FecBaja] [smalldatetime] NULL,
	[ins_DocBaja] [varchar](100) NULL,
	[ins_IdEstado] [varchar](1) NOT NULL,
 CONSTRAINT [PK_m_insumos] PRIMARY KEY CLUSTERED
(
	[ins_CodIns] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_medicamentos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_medicamentos](
	[med_CodMed] [varchar](13) NOT NULL,
	[med_Nombre] [varchar](100) NOT NULL,
	[med_FormaFarmaceutica] [varchar](15) NULL,
	[med_Presen] [varchar](20) NOT NULL,
	[med_Concen] [varchar](50) NULL,
	[med_Costo] [numeric](11, 2) NOT NULL,
	[med_Petitorio] [varchar](1) NOT NULL,
	[med_Petitorio2005] [varchar](6) NOT NULL,
	[med_Petitorio2010] [varchar](6) NOT NULL,
	[med_FecBaja] [smalldatetime] NULL,
	[med_FFDigemid] [varchar](100) NULL,
	[med_IdEstado] [varchar](1) NOT NULL,
 CONSTRAINT [PK_m_medicamentos] PRIMARY KEY CLUSTERED
(
	[med_CodMed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_odsis]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_odsis](
	[ods_IdOdsis] [sysname] NOT NULL,
	[ods_Descripcion] [sysname] NOT NULL,
	[ods_Abrevia] [sysname] NOT NULL,
	[ods_IdDisa] [sysname] NOT NULL,
	[ods_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_pinstalacion]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_pinstalacion](
	[pin_IdPPDD] [int] NOT NULL,
	[pin_IdOdsis] [sysname] NOT NULL,
	[pin_PDig] [nvarchar](3) NULL,
	[pin_Nombre] [sysname] NOT NULL,
	[pin_Tipo] [nvarchar](1) NULL,
	[pin_IdEESS] [nvarchar](10) NULL,
	[pin_PdigAct] [nvarchar](6) NULL,
	[pin_Aisped] [nvarchar](1) NULL,
	[pin_TipDig] [nvarchar](1) NULL,
	[pin_PDOrigen] [nvarchar](3) NULL,
	[pin_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_provincias]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_provincias](
	[prv_IdProv] [sysname] NOT NULL,
	[prv_Descripcion] [sysname] NOT NULL,
	[prv_IdDep] [sysname] NOT NULL,
	[prv_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_resolucionesMinisteriales]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_resolucionesMinisteriales](
	[rmt_IdRM] [int] NOT NULL,
	[rmt_Descripcion] [varchar](50) NOT NULL,
	[rmt_FecInicio] [smalldatetime] NOT NULL,
	[rmt_FecTermino] [smalldatetime] NULL,
	[rmt_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_servicios]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_servicios](
	[ser_IdServicio] [varchar](3) NOT NULL,
	[ser_CodSer] [varchar](3) NOT NULL,
	[ser_Descripcion] [varchar](100) NOT NULL,
	[ser_IdTipoServicio] [int] NOT NULL,
	[ser_Uci] [varchar](1) NOT NULL,
	[ser_Hosp] [varchar](1) NOT NULL,
	[ser_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_smi]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_smi](
	[smi_IdSmi] [varchar](3) NOT NULL,
	[smi_Descripcion] [varchar](50) NOT NULL,
	[smi_Enteros] [int] NOT NULL,
	[smi_Decimales] [int] NOT NULL,
	[smi_Minimo] [float] NOT NULL,
	[smi_Maximo] [float] NOT NULL,
	[smi_SINO] [int] NOT NULL,
	[smi_IdEstado] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_tarifario]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_tarifario](
	[tar_IdTarifa] [int] NULL,
	[tar_IdRM] [int] NOT NULL,
	[tar_IdServicio] [sysname] NOT NULL,
	[tar_IdCategoriaEESS] [nvarchar](2) NULL,
	[tar_NivelEess] [int] NULL,
	[tar_IdTipoTarifa] [int] NOT NULL,
	[tar_PoblAdscrita] [nvarchar](1) NULL,
	[tar_Tarifa] [float] NOT NULL,
	[tar_IdEstado] [sysname] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recetaTopes]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recetaTopes](
	[codigoSismed] [varchar](7) NOT NULL,
	[cantidadMaxima] [int] NOT NULL,
 CONSTRAINT [PK_recetaTopes] PRIMARY KEY CLUSTERED
(
	[codigoSismed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[a_categoriaeessSeleccionarPorId]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[a_categoriaeessSeleccionarPorId]
	@lcCodigoCategoriaSis [varchar](2)
WITH EXECUTE AS CALLER
AS
select * from a_categoriaeess where cat_IdCategoriaEESS=@lcCodigoCategoriaSis
GO
/****** Object:  StoredProcedure [dbo].[a_destinoAseguradoSeleccionarTodos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[a_destinoAseguradoSeleccionarTodos]
WITH EXECUTE AS CALLER
AS
select * from a_destinoAsegurado order by des_descripcion
GO
/****** Object:  StoredProcedure [dbo].[a_lotesXidTablaSiaSis]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[a_lotesXidTablaSiaSis]
	@lcCodigo [varchar](2)
WITH EXECUTE AS CALLER
AS
select * from a_lotes where lot_idTablaSiaSis=@lcCodigo
GO
/****** Object:  StoredProcedure [dbo].[a_modalidadAtencionSeleccionarTodos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_modalidadAtencionSeleccionarTodos]
WITH EXECUTE AS CALLER
AS
select * from a_modalidadAtencion
where mod_idestado=0
order by mod_descripcion
GO
/****** Object:  StoredProcedure [dbo].[a_presentacionesAgregar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_presentacionesAgregar]
	@tpre_IdPresentacion [varchar](3),
	@tpre_Descripcion [varchar](250),
	@tpre_Abreviatura [varchar](15),
	@tpre_TopeMinimo [int],
	@tpre_TopeNoHosp [int],
	@tpre_TopeHosp [int],
	@tpre_IdEstado [nvarchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into a_presentaciones (
tpre_IdPresentacion,tpre_Descripcion,tpre_Abreviatura,tpre_TopeMinimo,tpre_TopeNoHosp,tpre_TopeHosp,tpre_IdEstado) values (
@tpre_IdPresentacion,@tpre_Descripcion,@tpre_Abreviatura,@tpre_TopeMinimo,@tpre_TopeNoHosp,@tpre_TopeHosp,@tpre_IdEstado)
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@tpre_IdPresentacion,'a_presentaciones'
GO
/****** Object:  StoredProcedure [dbo].[a_presentacionesEliminar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_presentacionesEliminar]
	@tpre_IdPresentacion [varchar](3),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from a_presentaciones
where tpre_IdPresentacion = @tpre_IdPresentacion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@tpre_IdPresentacion,'a_presentaciones'
GO
/****** Object:  StoredProcedure [dbo].[a_presentacionesModificar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_presentacionesModificar]
	@tpre_IdPresentacion [varchar](3),
	@tpre_Descripcion [varchar](250),
	@tpre_Abreviatura [varchar](15),
	@tpre_TopeMinimo [int],
	@tpre_TopeNoHosp [int],
	@tpre_TopeHosp [int],
	@tpre_IdEstado [nvarchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update a_presentaciones
set
tpre_Descripcion = @tpre_Descripcion,
tpre_Abreviatura = @tpre_Abreviatura,
tpre_TopeMinimo = @tpre_TopeMinimo,
tpre_TopeNoHosp = @tpre_TopeNoHosp,
tpre_TopeHosp = @tpre_TopeHosp,
tpre_IdEstado = @tpre_IdEstado
where tpre_IdPresentacion = @tpre_IdPresentacion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@tpre_IdPresentacion,'a_presentaciones'
GO
/****** Object:  StoredProcedure [dbo].[a_presentacionesSeleccionarMaximoCodigo]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_presentacionesSeleccionarMaximoCodigo]
WITH EXECUTE AS CALLER
AS
select max(convert(int,tpre_IdPresentacion)) from a_presentaciones
GO
/****** Object:  StoredProcedure [dbo].[a_presentacionesSeleccionarPorAbreviatura]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[a_presentacionesSeleccionarPorAbreviatura]
	@tpre_Abreviatura [varchar](15)
WITH EXECUTE AS CALLER
AS
select * from a_presentaciones
where tpre_Abreviatura = @tpre_Abreviatura
GO
/****** Object:  StoredProcedure [dbo].[a_presentacionesSeleccionarPorId]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_presentacionesSeleccionarPorId]
	@tpre_IdPresentacion [varchar](3)
WITH EXECUTE AS CALLER
AS
select * from a_presentaciones
where tpre_IdPresentacion = @tpre_IdPresentacion

GO
/****** Object:  StoredProcedure [dbo].[a_resatencionAgregar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_resatencionAgregar]
	@pers_IdResAtencion [varchar](9),
	@pers_IdTipoDocumento [varchar](1),
	@pers_ApePaterno [varchar](40),
	@pers_ApeMaterno [varchar](40),
	@pers_PriNombre [varchar](35),
	@pers_OtrNombre [varchar](35),
	@pers_IdTipoPersonalSalud [varchar](2),
	@pers_Colegiatura [varchar](20),
	@pers_IdEspecialidad [varchar](2),
	@pers_NroEspecialidad [varchar](10),
	@pers_IdEstado [varchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into a_resatencion (
pers_IdResAtencion,pers_IdTipoDocumento,pers_ApePaterno,pers_ApeMaterno,pers_PriNombre,pers_OtrNombre,pers_IdTipoPersonalSalud,pers_Colegiatura,pers_IdEspecialidad,pers_NroEspecialidad,pers_IdEstado) values (
@pers_IdResAtencion,@pers_IdTipoDocumento,@pers_ApePaterno,@pers_ApeMaterno,@pers_PriNombre,@pers_OtrNombre,@pers_IdTipoPersonalSalud,@pers_Colegiatura,@pers_IdEspecialidad,@pers_NroEspecialidad,@pers_IdEstado)
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@pers_IdResAtencion,'a_resatencion'
GO
/****** Object:  StoredProcedure [dbo].[a_resatencionEliminar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_resatencionEliminar]
	@pers_IdResAtencion [varchar](9),
	@pers_IdTipoDocumento [varchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from a_resatencion
where pers_IdResAtencion = @pers_IdResAtencion and pers_IdTipoDocumento=@pers_IdTipoDocumento
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@pers_IdResAtencion,'a_resatencion'
GO
/****** Object:  StoredProcedure [dbo].[a_resatencionModificar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_resatencionModificar]
	@pers_IdResAtencion [varchar](9),
	@pers_IdTipoDocumento [varchar](1),
	@pers_ApePaterno [varchar](40),
	@pers_ApeMaterno [varchar](40),
	@pers_PriNombre [varchar](35),
	@pers_OtrNombre [varchar](35),
	@pers_IdTipoPersonalSalud [varchar](2),
	@pers_Colegiatura [varchar](20),
	@pers_IdEspecialidad [varchar](2),
	@pers_NroEspecialidad [varchar](10),
	@pers_IdEstado [varchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update a_resatencion
set
pers_IdTipoDocumento = @pers_IdTipoDocumento,
pers_ApePaterno = @pers_ApePaterno,
pers_ApeMaterno = @pers_ApeMaterno,
pers_PriNombre = @pers_PriNombre,
pers_OtrNombre = @pers_OtrNombre,
pers_IdTipoPersonalSalud = @pers_IdTipoPersonalSalud,
pers_Colegiatura = @pers_Colegiatura,
pers_IdEspecialidad = @pers_IdEspecialidad,
pers_NroEspecialidad = @pers_NroEspecialidad,
pers_IdEstado = @pers_IdEstado
where pers_IdResAtencion = @pers_IdResAtencion and pers_IdTipoDocumento=@pers_IdTipoDocumento
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@pers_IdResAtencion,'a_resatencion'
GO
/****** Object:  StoredProcedure [dbo].[a_resatencionSeleccionarPorColegiatura]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_resatencionSeleccionarPorColegiatura]
	@colegiatura [varchar](20)
WITH EXECUTE AS CALLER
AS
SELECT     dbo.a_resatencion.*,
  dbo.a_resatencion.pers_IdTipoPersonalSalud+' = '+ dbo.a_resatencion.pers_ApePaterno+' '+dbo.a_resatencion.pers_ApeMaterno+' '+dbo.a_resatencion.pers_PriNombre as Medico
FROM         dbo.a_resatencion
WHERE     pers_Colegiatura = @colegiatura
GO
/****** Object:  StoredProcedure [dbo].[a_resatencionSeleccionarPorId]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[a_resatencionSeleccionarPorId]
	@pers_IdResAtencion [varchar](9),
	@pers_IdTipoDocumento [varchar](1)
WITH EXECUTE AS CALLER
AS
select * from a_resatencion
where pers_IdResAtencion = @pers_IdResAtencion and pers_IdTipoDocumento=@pers_IdTipoDocumento
GO
/****** Object:  StoredProcedure [dbo].[a_tipoDocumentoSeleccionarTodos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[a_tipoDocumentoSeleccionarTodos]
WITH EXECUTE AS CALLER
AS
select * from a_tipoDocumento order by ide_descripcion
GO
/****** Object:  StoredProcedure [dbo].[CompruebaDatos]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[CompruebaDatos]
	@Tabla [nvarchar](50),
	@Campo [nvarchar](50),
	@Valor [nvarchar](50)
WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;

DECLARE @sql nvarchar(1000);
SET @sql = 'SELECT *  FROM ' +(@Tabla) +  '  WHERE '+ @campo + '= ''' + @valor + '''';

EXEC sp_executesql @sql
GO
/****** Object:  StoredProcedure [dbo].[EstablecimientosSinRENAESenSIS]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EstablecimientosSinRENAESenSIS]
WITH EXECUTE AS CALLER
AS
SELECT     distinct  sigh_sis.dbo.m_eess.pre_CodigoRENAES, sigh_sis.dbo.m_eess.pre_Nombre, sigh.dbo.Establecimientos.Codigo,
                      sigh.dbo.Establecimientos.Nombre, sigh_sis.dbo.m_eess.pre_IdCategoriaEESS, sigh_sis.dbo.m_eess.pre_IdUbigeo
FROM         sigh.dbo.Establecimientos RIGHT OUTER JOIN
                      sigh_sis.dbo.m_eess ON LEFT(sigh.dbo.Establecimientos.Codigo, 5) = RIGHT(sigh_sis.dbo.m_eess.pre_CodigoRENAES, 5) COLLATE SQL_Latin1_General_CP1_CI_AS
WHERE     (sigh.dbo.Establecimientos.Codigo IS NULL) AND (sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '01' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '02' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '03' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '04' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '05' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '06' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '07' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '08' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '11' OR
                      sigh_sis.dbo.m_eess.pre_IdCategoriaEESS = '12')
GO
/****** Object:  StoredProcedure [dbo].[m_eessAgregar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_eessAgregar]
	@pre_IdEESS [varchar](10),
	@pre_Nombre [varchar](150),
	@pre_Afilia [varchar](1),
	@pre_UCI [varchar](1),
	@pre_IdCategoriaEESS [varchar](2),
	@pre_IdDisa [varchar](3),
	@pre_IdOdsis [varchar](3),
	@pre_IdUbigeo [varchar](6),
	@pre_CodEjeAdm [varchar](4),
	@pre_Vrae [varchar](1),
	@pre_Umbral [varchar](1),
	@pre_Aisped [varchar](1),
	@pre_esmn [varchar](50),
	@pre_IdEstado [varchar](50),
	@pre_CodigoRENAES [varchar](50),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into m_eess (
pre_IdEESS,pre_Nombre,pre_Afilia,pre_UCI,pre_IdCategoriaEESS,pre_IdDisa,pre_IdOdsis,pre_IdUbigeo,pre_CodEjeAdm,pre_Vrae,pre_Umbral,pre_Aisped,pre_esmn,pre_IdEstado,pre_CodigoRENAES) values (
@pre_IdEESS,@pre_Nombre,@pre_Afilia,@pre_UCI,@pre_IdCategoriaEESS,@pre_IdDisa,@pre_IdOdsis,@pre_IdUbigeo,@pre_CodEjeAdm,@pre_Vrae,@pre_Umbral,@pre_Aisped,@pre_esmn,@pre_IdEstado,@pre_CodigoRENAES)
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@pre_IdEESS,'m_eess'
GO
/****** Object:  StoredProcedure [dbo].[m_eessEliminar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_eessEliminar]
	@pre_IdEESS [varchar](10),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from m_eess
where pre_IdEESS = @pre_IdEESS
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@pre_IdEESS,'m_eess'
GO
/****** Object:  StoredProcedure [dbo].[m_eessModificar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_eessModificar]
	@pre_IdEESS [varchar](10),
	@pre_Nombre [varchar](150),
	@pre_Afilia [varchar](1),
	@pre_UCI [varchar](1),
	@pre_IdCategoriaEESS [varchar](2),
	@pre_IdDisa [varchar](3),
	@pre_IdOdsis [varchar](3),
	@pre_IdUbigeo [varchar](6),
	@pre_CodEjeAdm [varchar](4),
	@pre_Vrae [varchar](1),
	@pre_Umbral [varchar](1),
	@pre_Aisped [varchar](1),
	@pre_esmn [varchar](50),
	@pre_IdEstado [varchar](50),
	@pre_CodigoRENAES [varchar](50),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update m_eess
set
pre_Nombre = @pre_Nombre,
pre_Afilia = @pre_Afilia,
pre_UCI = @pre_UCI,
pre_IdCategoriaEESS = @pre_IdCategoriaEESS,
pre_IdDisa = @pre_IdDisa,
pre_IdOdsis = @pre_IdOdsis,
pre_IdUbigeo = @pre_IdUbigeo,
pre_CodEjeAdm = @pre_CodEjeAdm,
pre_Vrae = @pre_Vrae,
pre_Umbral = @pre_Umbral,
pre_Aisped = @pre_Aisped,
pre_esmn = @pre_esmn,
pre_IdEstado = @pre_IdEstado,
pre_CodigoRENAES = @pre_CodigoRENAES
where pre_IdEESS = @pre_IdEESS
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@pre_IdEESS,'m_eess'
GO
/****** Object:  StoredProcedure [dbo].[m_eessSeleccionarPorcodigoRenaes]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[m_eessSeleccionarPorcodigoRenaes]
	@lcCodigoRenaes [varchar](50)
WITH EXECUTE AS CALLER
AS
select * from  m_eess where pre_CodigoRENAES=@lcCodigoRenaes
GO
/****** Object:  StoredProcedure [dbo].[m_eessSeleccionarPorId]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_eessSeleccionarPorId]
	@pre_IdEESS [varchar](10)
WITH EXECUTE AS CALLER
AS
select * from m_eess
where pre_IdEESS = @pre_IdEESS

GO
/****** Object:  StoredProcedure [dbo].[m_eessSelecionarXcodigoRenaes]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[m_eessSelecionarXcodigoRenaes]
	@lcCodigoRenaes [varchar](50)
WITH EXECUTE AS CALLER
AS
SELECT     dbo.m_eess.pre_IdDisa AS DISA, dbo.m_eess.pre_IdCategoriaEESS AS CategoriaEESS, dbo.m_pinstalacion.pin_IdPPDD AS ptoDigitacion,
                      dbo.m_pinstalacion.pin_Nombre AS ptoDigitacionNombre, dbo.m_odsis.ods_IdOdsis AS codigoUDR,
                      dbo.m_odsis.ods_Descripcion AS codigoUDRnombre
FROM         dbo.m_eess LEFT OUTER JOIN
                      dbo.m_odsis ON dbo.m_eess.pre_IdDisa = dbo.m_odsis.ods_IdDisa LEFT OUTER JOIN
                      dbo.m_pinstalacion ON dbo.m_eess.pre_IdEESS = dbo.m_pinstalacion.pin_IdEESS
where dbo.m_eess.pre_CodigoRENAES=@lcCodigoRenaes
GO
/****** Object:  StoredProcedure [dbo].[m_eessXcodigoRenaes]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[m_eessXcodigoRenaes]
	@lcCodigoRenaes [varchar](50)
WITH EXECUTE AS CALLER
AS
select pre_IdEESS,pre_nombre from m_eess where pre_CodigoRENAES=@lcCodigoRenaes
GO
/****** Object:  StoredProcedure [dbo].[m_IIEE_GradoSeleccionarPorIdNivel]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_IIEE_GradoSeleccionarPorIdNivel]
	@IdNivel [varchar](1)
WITH EXECUTE AS CALLER
AS
SELECT IdGrado,Grado FROM m_IIEE_Grado
where IdNivel=@IdNivel

GO
/****** Object:  StoredProcedure [dbo].[m_IIEE_NivelSeleccionarTodo]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_IIEE_NivelSeleccionarTodo]
WITH EXECUTE AS CALLER
AS
SELECT IdNivel,Nivel FROM [m_IIEE_Nivel]
GO
/****** Object:  StoredProcedure [dbo].[m_IIEE_TurnoSeleccionarTodo]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_IIEE_TurnoSeleccionarTodo]
WITH EXECUTE AS CALLER
AS
SELECT IdTurno,Turno FROM [m_IIEE_Turno]

GO
/****** Object:  StoredProcedure [dbo].[m_IIEESeleccionarTodo]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_IIEESeleccionarTodo]
	@colegioCodigo [varchar](20),
	@colegio [varchar](100)
WITH EXECUTE AS CALLER
AS
SELECT IEQW_V_CODIGOCOLEGIO AS CODIGO,IEQW_V_NOMBREIE AS COLEGIO, IEQW_V_UBIGEOIE_NOMBRE AS UBIGEO, IEQW_V_DIRECCIONIE AS DIRECCION
FROM m_IIEE
WHERE IEQW_V_CODIGOCOLEGIO LIKE '%' + @colegioCodigo + '%'
AND IEQW_V_NOMBREIE LIKE '%' + @colegio + '%'
GO
/****** Object:  StoredProcedure [dbo].[m_insumosAgregar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_insumosAgregar]
	@ins_CodIns [varchar](5),
	@ins_Nombre [varchar](200),
	@ins_FormaFarmaceutica [varchar](15),
	@ins_Presen [varchar](80),
	@ins_Concen [varchar](50),
	@ins_Costo [money],
	@ins_Observacion [varchar](50),
	@ins_Petitorio [varchar](1),
	@ins_FecBaja [datetime],
	@ins_DocBaja [varchar](100),
	@ins_IdEstado [varchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into m_insumos (
ins_CodIns,ins_Nombre,ins_FormaFarmaceutica,ins_Presen,ins_Concen,ins_Costo,ins_Observacion,ins_Petitorio,ins_FecBaja,ins_DocBaja,ins_IdEstado) values (
@ins_CodIns,@ins_Nombre,@ins_FormaFarmaceutica,@ins_Presen,@ins_Concen,@ins_Costo,@ins_Observacion,@ins_Petitorio,@ins_FecBaja,@ins_DocBaja,@ins_IdEstado)
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@ins_CodIns,'m_insumos'
GO
/****** Object:  StoredProcedure [dbo].[m_insumosEliminar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_insumosEliminar]
	@ins_CodIns [varchar](5),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from m_insumos
where ins_CodIns = @ins_CodIns
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@ins_CodIns,'m_insumos'
GO
/****** Object:  StoredProcedure [dbo].[m_insumosModificar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_insumosModificar]
	@ins_CodIns [varchar](5),
	@ins_Nombre [varchar](200),
	@ins_FormaFarmaceutica [varchar](15),
	@ins_Presen [varchar](80),
	@ins_Concen [varchar](50),
	@ins_Costo [money],
	@ins_Observacion [varchar](50),
	@ins_Petitorio [varchar](1),
	@ins_FecBaja [datetime],
	@ins_DocBaja [varchar](100),
	@ins_IdEstado [varchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update m_insumos
set
ins_Nombre = @ins_Nombre,
ins_FormaFarmaceutica = @ins_FormaFarmaceutica,
ins_Presen = @ins_Presen,
ins_Concen = @ins_Concen,
ins_Costo = @ins_Costo,
ins_Observacion = @ins_Observacion,
ins_Petitorio = @ins_Petitorio,
ins_FecBaja = @ins_FecBaja,
ins_DocBaja = @ins_DocBaja,
ins_IdEstado = @ins_IdEstado
where ins_CodIns = @ins_CodIns
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@ins_CodIns,'m_insumos'
GO
/****** Object:  StoredProcedure [dbo].[m_insumosSeleccionarPorId]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_insumosSeleccionarPorId]
	@ins_CodIns [varchar](5)
WITH EXECUTE AS CALLER
AS
select * from m_insumos
where ins_CodIns = @ins_CodIns

GO
/****** Object:  StoredProcedure [dbo].[m_medicamentosAgregar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_medicamentosAgregar]
	@med_CodMed [varchar](13),
	@med_Nombre [varchar](100),
	@med_FormaFarmaceutica [varchar](15),
	@med_Presen [varchar](20),
	@med_Concen [varchar](50),
	@med_Costo [money],
	@med_Petitorio [varchar](1),
	@med_Petitorio2005 [varchar](6),
	@med_Petitorio2010 [varchar](6),
	@med_FecBaja [datetime],
	@med_FFDigemid [varchar](100),
	@med_IdEstado [varchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into m_medicamentos (
med_CodMed,med_Nombre,med_FormaFarmaceutica,med_Presen,med_Concen,med_Costo,med_Petitorio,med_Petitorio2005,med_Petitorio2010,med_FecBaja,med_FFDigemid,med_IdEstado) values (
@med_CodMed,@med_Nombre,@med_FormaFarmaceutica,@med_Presen,@med_Concen,@med_Costo,@med_Petitorio,@med_Petitorio2005,@med_Petitorio2010,@med_FecBaja,@med_FFDigemid,@med_IdEstado)
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@med_CodMed,'m_medicamentos'
GO
/****** Object:  StoredProcedure [dbo].[m_medicamentosEliminar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_medicamentosEliminar]
	@med_CodMed [varchar](13),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from m_medicamentos
where med_CodMed = @med_CodMed
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@med_CodMed,'m_medicamentos'
GO
/****** Object:  StoredProcedure [dbo].[m_medicamentosModificar]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_medicamentosModificar]
	@med_CodMed [varchar](13),
	@med_Nombre [varchar](100),
	@med_FormaFarmaceutica [varchar](15),
	@med_Presen [varchar](20),
	@med_Concen [varchar](50),
	@med_Costo [money],
	@med_Petitorio [varchar](1),
	@med_Petitorio2005 [varchar](6),
	@med_Petitorio2010 [varchar](6),
	@med_FecBaja [datetime],
	@med_FFDigemid [varchar](100),
	@med_IdEstado [varchar](1),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update m_medicamentos
set
med_Nombre = @med_Nombre,
med_FormaFarmaceutica = @med_FormaFarmaceutica,
med_Presen = @med_Presen,
med_Concen = @med_Concen,
med_Costo = @med_Costo,
med_Petitorio = @med_Petitorio,
med_Petitorio2005 = @med_Petitorio2005,
med_Petitorio2010 = @med_Petitorio2010,
med_FecBaja = @med_FecBaja,
med_FFDigemid = @med_FFDigemid,
med_IdEstado = @med_IdEstado
where med_CodMed = @med_CodMed
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@med_CodMed,'m_medicamentos'
GO
/****** Object:  StoredProcedure [dbo].[m_medicamentosSeleccionarPorId]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_medicamentosSeleccionarPorId]
	@med_CodMed [varchar](13)
WITH EXECUTE AS CALLER
AS
select * from m_medicamentos
where med_CodMed = @med_CodMed

GO
/****** Object:  StoredProcedure [dbo].[m_pinstalacionSeleccionarPorId]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[m_pinstalacionSeleccionarPorId]
	@pin_IdPPDD [int]
WITH EXECUTE AS CALLER
AS
select * from SIGH_SIS.dbo.m_pinstalacion where pin_IdPPDD=@pin_IdPPDD

GO
/****** Object:  StoredProcedure [dbo].[m_serviciosXcodigo]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[m_serviciosXcodigo]
	@lcIdServicio [varchar](3)
WITH EXECUTE AS CALLER
AS
select ser_Descripcion from m_servicios where ser_IdServicio=@lcIdServicio
GO
/****** Object:  StoredProcedure [dbo].[m_serviciosXcodSer]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[m_serviciosXcodSer]
	@codSer [varchar](3)
WITH EXECUTE AS CALLER
AS
select  *  from m_servicios where ser_codSer=@codSer
GO
/****** Object:  StoredProcedure [dbo].[ObtenerLoteTablaSiaSIS]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerLoteTablaSiaSIS]
	@IdComponente [varchar](1),
	@Lote [varchar](2)
WITH EXECUTE AS CALLER
AS
select * from  a_lotes
where lot_idcomponente=@IdComponente and lot_lote=@Lote
GO
/****** Object:  StoredProcedure [dbo].[Rc01SeleccionarCodigo]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc01SeleccionarCodigo]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT     rc.*, dbo.m_servicios.ser_Hosp AS Hosp, dbo.m_servicios.ser_Descripcion AS dServicio, dbo.a_sexo.sex_Descripcion AS tSexo,
                                  dbo.a_condicionmaterna.cdm_Descripcion AS tCondicion, dbo.a_componentes.com_Descripcion AS dComponente,
		       dbo.m_servicios.ser_IdTipoServicio
             FROM         dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC INNER JOIN
                                  dbo.a_rc01 rc ON dbo.a_serviciosconvenio.src_IdRegla = rc.rc01_IdRegla INNER JOIN
                                  dbo.m_servicios ON dbo.m_servicios.ser_IdServicio = rc.rc01_IdServicio INNER JOIN
                                  dbo.a_sexo ON rc.rc01_IdSexo = dbo.a_sexo.sex_IdSexo INNER JOIN
                                  dbo.a_condicionmaterna ON rc.rc01_IdCondicion = dbo.a_condicionmaterna.cdm_IdCondicion INNER JOIN
                                  dbo.a_componentes ON rc.rc01_IdComponente = dbo.a_componentes.com_IdComponente
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "001") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")  '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc01SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc01SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT     rc.*, dbo.m_servicios.ser_Hosp AS Hosp, dbo.m_servicios.ser_Descripcion AS dServicio, dbo.a_sexo.sex_Descripcion AS tSexo,
                                  dbo.a_condicionmaterna.cdm_Descripcion AS tCondicion, dbo.a_componentes.com_Descripcion AS dComponente
             FROM         dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC INNER JOIN
                                  dbo.a_rc01 rc ON dbo.a_serviciosconvenio.src_IdRegla = rc.rc01_IdRegla INNER JOIN
                                  dbo.m_servicios ON dbo.m_servicios.ser_IdServicio = rc.rc01_IdServicio INNER JOIN
                                  dbo.a_sexo ON rc.rc01_IdSexo = dbo.a_sexo.sex_IdSexo INNER JOIN
                                  dbo.a_condicionmaterna ON rc.rc01_IdCondicion = dbo.a_condicionmaterna.cdm_IdCondicion INNER JOIN
                                  dbo.a_componentes ON rc.rc01_IdComponente = dbo.a_componentes.com_IdComponente
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "001") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")  '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc03SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc03SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT     rc.*, dbo.m_servicios.ser_Descripcion AS dServicio, dbo.a_modalidadatencion.mod_Descripcion AS mod_descripcion,
                                  rc.rc03_IdModalidad AS mod_idModalidad
             FROM         dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC INNER JOIN
                                  dbo.a_rc03 rc ON dbo.a_serviciosconvenio.src_IdRegla = rc.rc03_IdRegla INNER JOIN
                                  dbo.m_servicios ON dbo.m_servicios.ser_IdServicio = rc.rc03_IdServicio INNER JOIN
                                  dbo.a_modalidadatencion ON rc.rc03_IdModalidad = dbo.a_modalidadatencion.mod_IdModalidad
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "003") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")  '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc04SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc04SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT     dbo.a_rc04.*, dbo.m_servicios.ser_Descripcion AS dServicio, dbo.a_destinoasegurado.des_Descripcion AS des_Descripcion,
                                  dbo.a_rc04.rc04_IdDestinoAsegurado AS des_IdDestinoAsegurado
             FROM         dbo.a_rc04 INNER JOIN
                                  dbo.m_servicios ON dbo.a_rc04.rc04_IdServicio = dbo.m_servicios.ser_IdServicio INNER JOIN
                                  dbo.a_destinoasegurado ON dbo.a_rc04.rc04_IdDestinoAsegurado = dbo.a_destinoasegurado.des_IdDestinoAsegurado INNER JOIN
                                  dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC ON
                                  dbo.a_rc04.rc04_IdRegla = dbo.a_serviciosconvenio.src_IdRegla
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "004") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")  '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc05SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc05SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT      dbo.a_rc05.*, dbo.m_servicios.ser_Descripcion AS dServicio, dbo.m_smi.smi_Descripcion AS dSmi
             FROM         dbo.m_servicios INNER JOIN
                                  dbo.a_rc05 ON dbo.m_servicios.ser_IdServicio = dbo.a_rc05.rc05_IdServicio INNER JOIN
                                  dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC ON
                                  dbo.a_rc05.rc05_IdRegla = dbo.a_serviciosconvenio.src_IdRegla INNER JOIN
                                  dbo.m_smi ON dbo.a_rc05.rc05_IdSmi = dbo.m_smi.smi_IdSmi
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "005") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")  '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc06SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc06SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT      dbo.a_rc06.*
             FROM         dbo.a_rc06 INNER JOIN
                                  dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC ON
                                  dbo.a_rc06.rc06_IdRegla = dbo.a_serviciosconvenio.src_IdRegla
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "006") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")  '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc09SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc09SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT      dbo.a_rc09.*
             FROM         dbo.a_rc09
             WHERE    '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc12SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc12SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT      dbo.a_rc12.*
             FROM         dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC INNER JOIN
                                  dbo.a_rc12 ON dbo.a_serviciosconvenio.src_IdRegla = dbo.a_rc12.rc12_IdRc12
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "012") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")    '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc13SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc13SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT     dbo.a_rc13.*, dbo.m_servicios.ser_Descripcion AS dServicio
             FROM         dbo.m_servicios INNER JOIN
                                  dbo.a_rc13 ON dbo.m_servicios.ser_IdServicio = dbo.a_rc13.rc13_IdServicio INNER JOIN
                                  dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC ON
                                  dbo.a_rc13.rc13_IdRegla = dbo.a_serviciosconvenio.src_IdRegla
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "013") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0") AND (dbo.a_rc13.rc13_Capita = "N")    '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc14SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc14SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT      dbo.a_rc14.*, dbo.m_servicios.ser_Descripcion AS dServicio, dbo.m_smi.smi_Descripcion AS dSmi
             FROM         dbo.m_servicios INNER JOIN
                                  dbo.a_rc14 ON dbo.m_servicios.ser_IdServicio = dbo.a_rc14.rc14_IdServicio INNER JOIN
                                  dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC ON
                                  dbo.a_rc14.rc14_IdRegla = dbo.a_serviciosconvenio.src_IdRegla INNER JOIN
                                  dbo.m_smi ON dbo.a_rc14.rc14_IdSmi = dbo.m_smi.smi_IdSmi
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "014") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")   '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc15SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc15SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT     dbo.a_rc15.*, dbo.m_servicios.ser_Descripcion AS dServicio
             FROM         dbo.m_servicios INNER JOIN
                                  dbo.a_rc15 ON dbo.m_servicios.ser_IdServicio = dbo.a_rc15.rc15_IdServicio INNER JOIN
                                  dbo.a_detallereglasconvenio INNER JOIN
                                  dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC ON
                                  dbo.a_rc15.rc15_IdRegla = dbo.a_serviciosconvenio.src_IdRegla
             WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "015") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")   '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[Rc16SeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[Rc16SeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
select @sql1='SELECT     dbo.a_rc16.*, dbo.a_tipoatencion.tat_Descripcion AS dTipoAtencion
             FROM         dbo.a_rc16 INNER JOIN
                       dbo.a_tipoatencion ON dbo.a_rc16.rc16_IdTipoAtencion = dbo.a_tipoatencion.tat_IdTipoAtencion   '+@lcFiltro
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[SisServiciosSeleccionarPorFiltro]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisServiciosSeleccionarPorFiltro]
	@lcFiltro [varchar](1000)
WITH EXECUTE AS CALLER
AS
declare @sql1 varchar(2000)
if @lcFiltro=''
    select @sql1='SELECT      dbo.m_servicios.ser_CodSer AS dServicioCodigo, dbo.m_servicios.ser_Descripcion AS dServicio,
		                    dbo.m_servicios.ser_Hosp AS Hosp, rc.rc01_IdSexo, rc.rc01_EdadMin, rc.rc01_EdadMax
		 FROM         dbo.a_detallereglasconvenio INNER JOIN
		                     dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC INNER JOIN
		                      dbo.a_rc01 rc ON dbo.a_serviciosconvenio.src_IdRegla = rc.rc01_IdRegla INNER JOIN
		                      dbo.m_servicios ON dbo.m_servicios.ser_IdServicio = rc.rc01_IdServicio
		 WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "001") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")
		 ORDER BY dbo.m_servicios.ser_CodSer'
else
    select @sql1='SELECT      dbo.m_servicios.ser_CodSer AS dServicioCodigo, dbo.m_servicios.ser_Descripcion AS dServicio,
		                    dbo.m_servicios.ser_Hosp AS Hosp, rc.rc01_IdSexo, rc.rc01_EdadMin, rc.rc01_EdadMax
		 FROM         dbo.a_detallereglasconvenio INNER JOIN
		                     dbo.a_serviciosconvenio ON dbo.a_serviciosconvenio.src_IdRCC = dbo.a_detallereglasconvenio.rcc_IdRCC INNER JOIN
		                      dbo.a_rc01 rc ON dbo.a_serviciosconvenio.src_IdRegla = rc.rc01_IdRegla INNER JOIN
		                      dbo.m_servicios ON dbo.m_servicios.ser_IdServicio = rc.rc01_IdServicio
		 WHERE     (dbo.a_detallereglasconvenio.rcc_IdRCC = "001") AND (dbo.a_detallereglasconvenio.rcc_IdConvenio = "0")
		             and '+@lcFiltro+'
		 ORDER BY dbo.m_servicios.ser_CodSer'
execute (@sql1)
GO
/****** Object:  StoredProcedure [dbo].[TipoFormatoSIS]    Script Date: 12/01/2026 02:59:16 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[TipoFormatoSIS]
WITH EXECUTE AS CALLER
AS
SELECT      dbo.a_componentes.com_Descripcion, dbo.a_tipoformato.tfrm_Descripcion, dbo.a_lotes.lot_IdTablaSiasis
FROM         dbo.a_tipoformato INNER JOIN
                      dbo.a_lotes ON dbo.a_tipoformato.tfrm_IdTipoFormato = dbo.a_lotes.lot_IdTipoFormato INNER JOIN
                      dbo.a_componentes ON dbo.a_lotes.lot_IdComponente = dbo.a_componentes.com_IdComponente
WHERE     (dbo.a_tipoformato.tfrm_IdEstado = '0') AND (dbo.a_tipoformato.tfrm_Atencion = 'S')
GROUP BY dbo.a_componentes.com_Descripcion, dbo.a_tipoformato.tfrm_Descripcion, dbo.a_lotes.lot_IdTablaSiasis
ORDER BY dbo.a_componentes.com_Descripcion, dbo.a_tipoformato.tfrm_Descripcion
GO
