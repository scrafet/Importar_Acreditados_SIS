USE [SIGH_EXTERNA]
GO
/****** Object:  Table [dbo].[atencionesCE]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atencionesCE](
	[idAtencion] [int] NULL,
	[NroHistoriaClinica] [int] NOT NULL,
	[CitaDniMedicoJamo] [varchar](8) NULL,
	[CitaFecha] [datetime] NULL,
	[CitaMedico] [varchar](100) NULL,
	[CitaServicioJamo] [varchar](100) NULL,
	[CitaIdServicio] [int] NULL,
	[CitaMotivo] [varchar](1000) NULL,
	[CitaExamenClinico] [varchar](1000) NULL,
	[CitaDiagMed] [varchar](1000) NULL,
	[CitaExClinicos] [varchar](3000) NULL,
	[CitaTratamiento] [varchar](1000) NULL,
	[CitaObservaciones] [varchar](1000) NULL,
	[CitaFechaAtencion] [datetime] NULL,
	[CitaIdUsuario] [int] NULL,
	[TriajeEdad] [varchar](6) NULL,
	[TriajePresion] [varchar](13) NULL,
	[TriajeTalla] [varchar](7) NULL,
	[TriajeTemperatura] [varchar](6) NULL,
	[TriajePeso] [varchar](7) NULL,
	[TriajeFecha] [datetime] NULL,
	[TriajeIdUsuario] [int] NULL,
	[TriajePulso] [int] NULL,
	[TriajeFrecRespiratoria] [int] NULL,
	[CitaAntecedente] [varchar](1000) NULL,
	[TriajePerimCefalico] [money] NULL,
	[TriajeFrecCardiaca] [int] NULL,
	[TriajeOrigen] [int] NULL,
	[TriajePerimAbdominal] [varchar](30) NULL,
	[TriajeSaturacionOxigeno] [varchar](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitasWebCupos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitasWebCupos](
	[idWeb] [int] NULL,
	[Fecha] [datetime] NULL,
	[idServicio] [int] NULL,
	[idMedico] [int] NULL,
	[HoraInicio] [varchar](5) NULL,
	[HoraFinal] [varchar](5) NULL,
	[idEstadoCitaWeb] [int] NULL,
	[idCitaBloqueada] [int] NULL,
	[DNI] [varchar](8) NULL,
	[ApellidoPaterno] [varchar](20) NULL,
	[ApellidoMaterno] [varchar](20) NULL,
	[PrimerNombre] [varchar](20) NULL,
	[SegundoNombre] [varchar](20) NULL,
	[idTipoSexo] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
	[Ubigeo] [int] NULL,
	[FechaConfirmacion] [datetime] NULL,
	[HoraConfirmacion] [varchar](5) NULL,
	[idFuenteFinanciamiento] [int] NULL,
	[idTurno] [int] NULL,
	[Email] [varchar](50) NULL,
	[Telefono] [varchar](10) NULL,
	[idPaciente] [int] NULL,
	[refIdEess] [int] NULL,
	[refNumero] [varchar](20) NULL,
	[refUPS] [varchar](7) NULL,
	[refidDiagnostico] [int] NULL,
	[refMedicoCOLEGIATURA] [varchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitasWebEstados]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitasWebEstados](
	[idEstadoCitaWeb] [int] NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_CitasWebEstados] PRIMARY KEY CLUSTERED
(
	[idEstadoCitaWeb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuaDefaultsCptFarmacia]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuaDefaultsCptFarmacia](
	[codigo] [varchar](20) NULL,
	[tipo] [char](10) NULL,
	[idPuntoCarga] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EsMedicamento] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterLabCabecera]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterLabCabecera](
	[identificador] [int] NOT NULL,
	[num_orden] [varchar](40) NULL,
	[Historia] [varchar](10) NOT NULL,
	[PacienteEmail] [varchar](50) NULL,
	[PacienteFiliacion] [varchar](1) NULL,
	[PacienteId] [int] NULL,
	[PacienteTipoDocumento] [int] NULL,
	[PacienteDocumento] [varchar](12) NULL,
	[paciente] [varchar](150) NOT NULL,
	[sexo] [varchar](1) NOT NULL,
	[fnacimiento] [datetime] NOT NULL,
	[cama] [varchar](20) NULL,
	[dxCodigo] [varchar](20) NULL,
	[dx] [varchar](300) NULL,
	[medicoDNI] [varchar](8) NULL,
	[medico] [varchar](150) NULL,
	[servicioCodigo] [varchar](6) NULL,
	[fechaHoraMuestra] [datetime] NOT NULL,
	[idEstado] [int] NOT NULL,
	[medicoColegiatura] [varchar](10) NULL,
 CONSTRAINT [PK_LabCabecera] PRIMARY KEY CLUSTERED
(
	[identificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterLabDetalle]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterLabDetalle](
	[identificador] [int] NOT NULL,
	[cptCodigo] [varchar](20) NOT NULL,
	[cpt] [varchar](250) NOT NULL,
	[DNI] [varchar](8) NULL,
	[FechaHoraResultado] [datetime] NULL,
	[Grupo] [varchar](100) NULL,
	[item] [varchar](100) NULL,
	[itemResultado] [varchar](500) NULL,
	[itemReferencia] [varchar](100) NULL,
	[itemMetodo] [varchar](50) NULL,
	[idEstado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InteroperaEquipos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteroperaEquipos](
	[Codigo] [varchar](2) NOT NULL,
	[Marca] [varchar](100) NOT NULL,
	[Modelo] [varchar](100) NOT NULL,
	[Tipo] [varchar](100) NOT NULL,
	[Ruta] [varchar](200) NOT NULL,
 CONSTRAINT [PK_InteroperaEquipos] PRIMARY KEY CLUSTERED
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InteroperaPacs]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteroperaPacs](
	[IdOrden] [int] NOT NULL,
	[cptCodigo] [varchar](20) NOT NULL,
	[cpt] [varchar](250) NOT NULL,
	[PacienteId] [int] NOT NULL,
	[PacienteNroHistoria] [int] NOT NULL,
	[PacienteIdTipoDocumento] [int] NULL,
	[PacienteDocumento] [varchar](12) NULL,
	[Paciente] [varchar](150) NOT NULL,
	[PacienteSexo] [varchar](1) NOT NULL,
	[PacienteFNacimiento] [datetime] NOT NULL,
	[medicoDNI] [varchar](8) NULL,
	[medico] [varchar](150) NULL,
	[fechaHoraMuestra] [datetime] NOT NULL,
	[EquipoCodigo] [varchar](2) NULL,
	[EquipoRuta] [varchar](200) NULL,
	[Resultado] [varchar](3000) NULL,
	[ResultadoFechaHora] [datetime] NULL,
	[ResultadoDNI] [varchar](8) NULL,
	[idEstado] [int] NOT NULL,
	[PuntoCarga] [varchar](20) NULL,
	[PacPaterno] [varchar](20) NULL,
	[PacMaterno] [varchar](20) NULL,
	[PacPrimerNombre] [varchar](20) NULL,
	[PacSegundoNombre] [varchar](20) NULL,
	[MedPaterno] [varchar](20) NULL,
	[MedMaterno] [varchar](20) NULL,
	[MedNombres] [varchar](40) NULL,
	[FteFinanciamiento] [varchar](20) NULL,
	[TipoServicio] [varchar](20) NULL,
	[PACS] [varchar](20) NULL,
	[LLAVE] [varchar](14) NULL,
 CONSTRAINT [PK_InteroperaPacs] PRIMARY KEY CLUSTERED
(
	[IdOrden] ASC,
	[cptCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisAfiliacionTipo]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisAfiliacionTipo](
	[IdAfiliacionTipoFormato] [int] IDENTITY(1,1) NOT NULL,
	[AfiliacionTipoFormato] [varchar](2) NOT NULL,
	[DescripcionAfiliacion] [varchar](200) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_SisAfiliacionTipo] PRIMARY KEY CLUSTERED
(
	[IdAfiliacionTipoFormato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFiliaciones]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFiliaciones](
	[idSiasis] [int] NOT NULL,
	[Codigo] [varchar](2) NOT NULL,
	[AfiliacionDisa] [varchar](3) NOT NULL,
	[AfiliacionTipoFormato] [varchar](2) NOT NULL,
	[AfiliacionNroFormato] [varchar](10) NOT NULL,
	[AfiliacionNroIntegrante] [varchar](2) NULL,
	[DocumentoTipo] [varchar](1) NULL,
	[CodigoEstablAdscripcion] [varchar](10) NULL,
	[AfiliacionFecha] [datetime] NULL,
	[Paterno] [varchar](40) NOT NULL,
	[Materno] [varchar](40) NOT NULL,
	[Pnombre] [varchar](70) NOT NULL,
	[Onombres] [varchar](70) NULL,
	[Genero] [varchar](1) NULL,
	[Fnacimiento] [datetime] NULL,
	[IdDistritoDomicilio] [varchar](6) NULL,
	[Estado] [varchar](1) NULL,
	[Fbaja] [varchar](10) NULL,
	[DocumentoNumero] [varchar](10) NULL,
	[MotivoBaja] [varchar](70) NULL,
	[FbajaOK] [datetime] NULL,
	[DescEESS] [varchar](100) NULL,
	[DescEESSUbigeo] [varchar](100) NULL,
	[Regimen] [varchar](4) NULL,
	[TipoSeguro] [varchar](4) NULL,
	[DescTipoSeguro] [varchar](70) NULL,
	[Contrato] [varchar](70) NULL,
	[IdUbigeo] [varchar](10) NULL,
	[Direccion] [varchar](100) NULL,
	[IdPlan] [varchar](4) NULL,
	[IdGrupoPoblacional] [varchar](4) NULL,
 CONSTRAINT [PK_SisFiliaciones] PRIMARY KEY CLUSTERED
(
	[idSiasis] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFua]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFua](
	[FuaDisa] [varchar](3) NULL,
	[FuaLote] [varchar](2) NULL,
	[FuaNumeroInicial] [varchar](16) NULL,
	[FuaNumeroFinal] [varchar](16) NULL,
	[FuaUltimoGenerado] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencion](
	[idCuentaAtencion] [int] NOT NULL,
	[FuaDisa] [varchar](3) NOT NULL,
	[FuaLote] [varchar](2) NOT NULL,
	[FuaNumero] [varchar](16) NOT NULL,
	[EstablecimientoCodigoRenaes] [varchar](10) NULL,
	[Reconsideracion] [varchar](1) NULL,
	[ReconsideracionCodigoDisa] [varchar](3) NULL,
	[ReconsideracionLote] [varchar](2) NULL,
	[ReconsideracionNroFormato] [varchar](8) NULL,
	[FuaComponente] [varchar](1) NULL,
	[Situacion] [varchar](1) NULL,
	[AfiliacionDisa] [varchar](3) NULL,
	[AfiliacionTipoFormato] [varchar](2) NULL,
	[AfiliacionNroFormato] [varchar](10) NULL,
	[CodigoTipoFormato] [varchar](2) NULL,
	[OrigenAseguradoInstitucion] [varchar](1) NULL,
	[OrigenAseguradoCodigo] [varchar](16) NULL,
	[Edad] [int] NULL,
	[GrupoEtareo] [varchar](2) NULL,
	[Genero] [varchar](1) NULL,
	[FuaAtencion] [int] NULL,
	[FuaCondicionMaterna] [varchar](1) NULL,
	[FuaNrohistoria] [varchar](20) NULL,
	[FuaConceptoPr] [int] NULL,
	[FuaConceptoPrAutoriz] [varchar](15) NULL,
	[FuaConceptoPrMonto] [money] NULL,
	[FuaAtencionFecha] [varchar](10) NULL,
	[FuaAtencionHora] [varchar](5) NULL,
	[FuaReferidoOrigenCodigoRenaes] [varchar](10) NULL,
	[FuaReferidoOrigenNreferencia] [varchar](20) NULL,
	[FuaCodigoPrestacion] [varchar](3) NULL,
	[FuaPersonalQatiende] [int] NULL,
	[FuaAtencionLugar] [varchar](1) NULL,
	[FuaDestino] [varchar](1) NULL,
	[FuaHospitalizadoFingreso] [varchar](10) NULL,
	[FuaHospitalizadoFalta] [varchar](10) NULL,
	[FuaReferidoDestinoCodigoRenaes] [varchar](10) NULL,
	[FuaReferidoDestinoNreferencia] [varchar](20) NULL,
	[FuaMedicoDNI] [varchar](9) NULL,
	[FuaMedico] [varchar](120) NULL,
	[FuaMedicoTipo] [varchar](2) NULL,
	[AfiliacionNroIntegrante] [varchar](2) NULL,
	[Codigo] [varchar](2) NULL,
	[idSiasis] [varchar](10) NULL,
	[FuaObservaciones] [varchar](200) NULL,
	[CabDniUsuarioRegistra] [varchar](10) NULL,
	[UltimaFechaAddMod] [varchar](10) NULL,
	[CabEstado] [varchar](1) NULL,
	[FuaFechaParto] [varchar](10) NULL,
	[EstablecimientoDistrito] [varchar](6) NULL,
	[Anio] [varchar](10) NULL,
	[Mes] [varchar](10) NULL,
	[CostoTotal] [money] NULL,
	[Apaterno] [varchar](40) NULL,
	[Amaterno] [varchar](40) NULL,
	[Pnombre] [varchar](35) NULL,
	[Onombre] [varchar](35) NULL,
	[fnacimiento] [varchar](10) NULL,
	[Autogenerado] [varchar](20) NULL,
	[DocumentoTipo] [varchar](1) NULL,
	[DocumentoNumero] [varchar](10) NULL,
	[EstablecimientoCategoria] [varchar](2) NULL,
	[CostoServicio] [money] NULL,
	[CostoMedicamento] [money] NULL,
	[CostoProcedimiento] [money] NULL,
	[CostoInsumo] [money] NULL,
	[MedicoDocumentoTipo] [varchar](2) NULL,
	[ate_grupoRiesgo] [varchar](2) NULL,
	[CabCodigoPuntoDigitacion] [int] NULL,
	[CabCodigoUDR] [varchar](3) NULL,
	[CabNroEnvioAlSIS] [varchar](2) NULL,
	[CabOrigenDelRegistro] [varchar](9) NULL,
	[CabVersionAplicativo] [varchar](9) NULL,
	[CabIdentificacionPaquete] [int] NULL,
	[IdentificacionArfsis] [int] NULL,
	[CabFechaFuaPrimeraVez] [varchar](10) NULL,
	[PeriodoOrigen] [varchar](6) NULL,
	[FuacolegioCodigo] [varchar](20) NULL,
	[FuacolegioNivel] [varchar](1) NULL,
	[FuacolegioGrado] [varchar](1) NULL,
	[FuacolegioSeccion] [varchar](5) NULL,
	[FuacolegioTurno] [varchar](1) NULL,
	[Fuaetnia] [varchar](2) NULL,
	[FuafechaFallecimiento] [datetime] NULL,
	[FuaUPS] [varchar](6) NULL,
	[FuaCodAutorizacion] [varchar](50) NULL,
	[FuaFechaCorteAdm] [datetime] NULL,
	[FuaVersionFormato] [varchar](2) NULL,
	[FuaTipoAnexo2015] [int] NULL,
	[FuaCodOferFlexible] [varchar](20) NULL,
 CONSTRAINT [PK_SisFuaAtencion] PRIMARY KEY CLUSTERED
(
	[idCuentaAtencion] ASC,
	[FuaDisa] ASC,
	[FuaLote] ASC,
	[FuaNumero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencionDIA]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencionDIA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[DxNumero] [int] NOT NULL,
	[DxTipoIE] [varchar](1) NOT NULL,
	[DxCodigo] [varchar](5) NOT NULL,
	[DxTipoDPR] [varchar](1) NOT NULL,
	[CabDniUsuarioRegistra] [varchar](10) NULL,
	[CabFechaFuaPrimeraVez] [varchar](10) NULL,
	[CabEstado] [char](1) NULL,
	[CabNroEnvioAlSIS] [varchar](2) NULL,
	[CabCodigoPuntoDigitacion] [int] NULL,
	[CabCodigoUDR] [varchar](3) NULL,
	[FuaDisa] [varchar](3) NULL,
	[FuaLote] [varchar](2) NULL,
	[FuaNumero] [varchar](16) NULL,
	[CabOrigenDelRegistro] [varchar](9) NULL,
	[CabVersionAplicativo] [varchar](9) NULL,
	[CabIdentificacionPaquete] [int] NULL,
 CONSTRAINT [PK_SisFuaAtencionDIA] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencionFUAS]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencionFUAS](
	[idCuentaAtencion] [int] NOT NULL,
	[FuaIdCuentaAtencion] [int] NOT NULL,
	[fechainicio] [datetime] NOT NULL,
	[fechafinal] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencionINS]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencionINS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTablaDx] [int] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[DxNumero] [int] NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[CantidadPrescrita] [int] NOT NULL,
	[CantidadEntregada] [int] NOT NULL,
	[PrecioUnitario] [money] NULL,
	[CabDniUsuarioRegistra] [varchar](10) NULL,
	[CabFechaFuaPrimeraVez] [varchar](10) NULL,
	[CabEstado] [char](1) NULL,
	[CabNroEnvioAlSIS] [varchar](2) NULL,
	[CabCodigoPuntoDigitacion] [int] NULL,
	[CabCodigoUDR] [varchar](3) NULL,
	[FuaDisa] [varchar](3) NULL,
	[FuaLote] [varchar](2) NULL,
	[FuaNumero] [varchar](16) NULL,
	[CabOrigenDelRegistro] [varchar](9) NULL,
	[CabVersionAplicativo] [varchar](9) NULL,
	[CabIdentificacionPaquete] [int] NULL,
 CONSTRAINT [PK_SisFuaAtencionINS] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencionMED]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencionMED](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTablaDx] [int] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[DxNumero] [int] NOT NULL,
	[CantidadPrescrita] [int] NOT NULL,
	[CantidadEntregada] [int] NOT NULL,
	[PrecioUnitario] [money] NULL,
	[CabDniUsuarioRegistra] [varchar](10) NULL,
	[CabFechaFuaPrimeraVez] [varchar](10) NULL,
	[CabEstado] [char](1) NULL,
	[CabNroEnvioAlSIS] [varchar](2) NULL,
	[CabCodigoPuntoDigitacion] [int] NULL,
	[CabCodigoUDR] [varchar](3) NULL,
	[FuaDisa] [varchar](3) NULL,
	[FuaLote] [varchar](2) NULL,
	[FuaNumero] [varchar](16) NULL,
	[CabOrigenDelRegistro] [varchar](9) NULL,
	[CabVersionAplicativo] [varchar](9) NULL,
	[CabIdentificacionPaquete] [int] NULL,
 CONSTRAINT [PK_SisFuaAtencionMED] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencionPREST]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencionPREST](
	[idCuentaAtencion] [int] NOT NULL,
	[FuaCodigoPrestacion] [varchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencionPRO]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencionPRO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTablaDx] [int] NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[Codigo] [varchar](15) NOT NULL,
	[DxNumero] [int] NOT NULL,
	[CantidadPrescrita] [int] NOT NULL,
	[CantidadEjecutada] [int] NOT NULL,
	[PrecioUnitario] [money] NULL,
	[CabDniUsuarioRegistra] [varchar](10) NULL,
	[CabFechaFuaPrimeraVez] [varchar](10) NULL,
	[CabEstado] [char](1) NULL,
	[Resultado] [varchar](15) NULL,
	[CabNroEnvioAlSIS] [varchar](2) NULL,
	[CabCodigoPuntoDigitacion] [int] NULL,
	[CabCodigoUDR] [varchar](3) NULL,
	[FuaDisa] [varchar](3) NULL,
	[FuaLote] [varchar](2) NULL,
	[FuaNumero] [varchar](16) NULL,
	[CabOrigenDelRegistro] [varchar](9) NULL,
	[CabVersionAplicativo] [varchar](9) NULL,
	[CabIdentificacionPaquete] [int] NULL,
 CONSTRAINT [PK_SisFuaAtencionPRO] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencionRN]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencionRN](
	[idCuentaAtencion] [int] NOT NULL,
	[FuaDocIdentidad] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaAtencionSMI]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaAtencionSMI](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCuentaAtencion] [int] NOT NULL,
	[IntervencionesPreventivas] [varchar](3) NOT NULL,
	[Valor] [varchar](8) NOT NULL,
	[CabDniUsuarioRegistra] [varchar](10) NULL,
	[CabFechaFuaPrimeraVez] [varchar](10) NULL,
	[CabEstado] [char](1) NULL,
	[CabNroEnvioAlSIS] [varchar](2) NULL,
	[CabCodigoPuntoDigitacion] [int] NULL,
	[CabCodigoUDR] [varchar](3) NULL,
	[FuaDisa] [varchar](3) NULL,
	[FuaLote] [varchar](2) NULL,
	[FuaNumero] [varchar](16) NULL,
	[CabOrigenDelRegistro] [varchar](9) NULL,
	[CabVersionAplicativo] [varchar](9) NULL,
	[CabIdentificacionPaquete] [int] NULL,
 CONSTRAINT [PK_SisFuaAtencionSMI] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaEstadosTrama]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaEstadosTrama](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tabla] [varchar](20) NOT NULL,
	[Campo] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[CampoCondicion] [varchar](50) NULL,
	[Valor] [varchar](20) NULL,
	[Obligatorio] [varchar](15) NULL,
	[Formato] [varchar](50) NULL,
	[Observaciones] [varchar](60) NULL,
	[Orden] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaResumen]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaResumen](
	[idResumen] [int] IDENTITY(1,1) NOT NULL,
	[Anio] [varchar](10) NOT NULL,
	[Mes] [varchar](10) NOT NULL,
	[NroEnvio] [varchar](2) NOT NULL,
	[NomPaquete] [varchar](18) NOT NULL,
	[VersionGTI] [varchar](10) NULL,
	[CantFilATE] [int] NULL,
	[CantFilSMI] [int] NULL,
	[CantFilDIA] [int] NULL,
	[CantFilMED] [int] NULL,
	[CantFilINS] [int] NULL,
	[CantFilPRO] [int] NULL,
	[CantFilUSU] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaUPServicios]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaUPServicios](
	[UPS] [varchar](6) NOT NULL,
	[descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SisFuaUsuario]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SisFuaUsuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[DNI] [varchar](8) NOT NULL,
	[TipoDoc] [varchar](2) NULL,
	[ApellidoPat] [varchar](20) NULL,
	[ApellidoMat] [varchar](20) NULL,
	[PrimerNombre] [varchar](20) NULL,
	[SegundoNombre] [varchar](20) NULL,
	[NroEnvio] [int] NULL,
	[Periodo] [varchar](4) NULL,
	[Mes] [varchar](2) NULL,
	[CodigoEstablecimiento] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TriajeExcepciones]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriajeExcepciones](
	[IdTriajeExcepciones] [int] IDENTITY(1,1) NOT NULL,
	[IdTriajeVariable] [int] NOT NULL,
	[EdadInicialEnDia] [int] NOT NULL,
	[EdadFinalEnDia] [int] NOT NULL,
	[EsDatoObligatorio] [bit] NOT NULL,
 CONSTRAINT [PK_TriajeExcepciones] PRIMARY KEY CLUSTERED
(
	[IdTriajeExcepciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TriajeValorNormal]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriajeValorNormal](
	[IdTriajeValorNormal] [int] IDENTITY(1,1) NOT NULL,
	[EdadInicialEnDia] [int] NOT NULL,
	[EdadFinalEnDia] [int] NULL,
	[ValorNormalMinimo] [money] NULL,
	[ValorNormalMaximo] [money] NULL,
	[ValorCoherenteMinimo] [money] NULL,
	[ValorCoherenteMaximo] [money] NULL,
	[IdTriajeVariable] [int] NOT NULL,
	[EstadoPaciente] [int] NULL,
	[SexoPaciente] [int] NOT NULL,
	[FechaVigencia] [datetime] NOT NULL,
 CONSTRAINT [PK_TriajeValorNormal] PRIMARY KEY CLUSTERED
(
	[IdTriajeValorNormal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TriajeVariable]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriajeVariable](
	[IdTriajeVariable] [int] IDENTITY(1,1) NOT NULL,
	[TriajeVariable] [varchar](50) NOT NULL,
	[EsAntropometrica] [bit] NOT NULL,
	[TieneLimiteMedicion] [bit] NOT NULL,
	[EdadDiaLimiteMinima] [int] NULL,
	[EdadDiaLimiteMaxima] [int] NULL,
	[EsDatoObligatorio] [bit] NOT NULL,
	[EsActivo] [bit] NOT NULL,
 CONSTRAINT [PK_VariablesAntropometricas] PRIMARY KEY CLUSTERED
(
	[IdTriajeVariable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[v_citasConsolidadas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[v_citasConsolidadas]
AS
SELECT        Fecha, idServicio, idMedico,
                             (SELECT        Nombre
                               FROM            SIGH.dbo.Servicios
                               WHERE        (IdServicio = dbo.CitasWebCupos.idServicio)) AS Consultorio,
                             (SELECT        LTRIM(SIGH.dbo.Empleados.ApellidoPaterno) + ' ' + LTRIM(SIGH.dbo.Empleados.ApellidoMaterno)
                                                         + ' ' + SIGH.dbo.Empleados.Nombres AS Medico
                               FROM            SIGH.dbo.Medicos INNER JOIN
                                                         SIGH.dbo.Empleados ON SIGH.dbo.Medicos.IdEmpleado = SIGH.dbo.Empleados.IdEmpleado
                               WHERE        (SIGH.dbo.Medicos.IdMedico = dbo.CitasWebCupos.idMedico)) AS Medico, COUNT(HoraInicio) AS CuposLibres
FROM            dbo.CitasWebCupos
WHERE        (idEstadoCitaWeb = 2)
GROUP BY Fecha, idServicio, idMedico
GO
/****** Object:  View [dbo].[v_citasDetalladas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_citasDetalladas]
AS
SELECT        Fecha, idServicio, idMedico, HoraInicio, HoraFinal
FROM            dbo.CitasWebCupos
WHERE        (idEstadoCitaWeb = 2)
GO
/****** Object:  View [dbo].[v_citasPorPaciente]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_citasPorPaciente]
AS
SELECT        TOP (100) PERCENT Fecha, idServicio, idMedico,
                             (SELECT        Nombre
                               FROM            SIGH.dbo.Servicios
                               WHERE        (IdServicio = dbo.CitasWebCupos.idServicio)) AS Consultorio,
                             (SELECT        LTRIM(SIGH.dbo.Empleados.ApellidoPaterno) + ' ' + LTRIM(SIGH.dbo.Empleados.ApellidoMaterno)
                                                         + ' ' + SIGH.dbo.Empleados.Nombres AS Medico
                               FROM            SIGH.dbo.Medicos INNER JOIN
                                                         SIGH.dbo.Empleados ON SIGH.dbo.Medicos.IdEmpleado = SIGH.dbo.Empleados.IdEmpleado
                               WHERE        (SIGH.dbo.Medicos.IdMedico = dbo.CitasWebCupos.idMedico)) AS Medico, HoraInicio, idPaciente
FROM            dbo.CitasWebCupos
ORDER BY Fecha
GO
/****** Object:  Index [IX_atencionesCE]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_atencionesCE] ON [dbo].[atencionesCE]
(
	[idAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_atencionesCE_1]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_atencionesCE_1] ON [dbo].[atencionesCE]
(
	[NroHistoriaClinica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CitasWebCuposIdWEB]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_CitasWebCuposIdWEB] ON [dbo].[CitasWebCupos]
(
	[idWeb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fecha]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Fecha] ON [dbo].[CitasWebCupos]
(
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Fecha1]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Fecha1] ON [dbo].[CitasWebCupos]
(
	[Fecha] ASC,
	[idServicio] ASC,
	[idMedico] ASC,
	[HoraInicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_idCitaBloqueada]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_idCitaBloqueada] ON [dbo].[CitasWebCupos]
(
	[idCitaBloqueada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Ix_idestado]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [Ix_idestado] ON [dbo].[InterLabDetalle]
(
	[idEstado] ASC,
	[identificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indAfiliacion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indAfiliacion] ON [dbo].[SisFiliaciones]
(
	[AfiliacionDisa] ASC,
	[AfiliacionTipoFormato] ASC,
	[AfiliacionNroFormato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indApellidos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indApellidos] ON [dbo].[SisFiliaciones]
(
	[Paterno] ASC,
	[Materno] ASC,
	[Pnombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indDcto]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indDcto] ON [dbo].[SisFiliaciones]
(
	[DocumentoNumero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [indIdSiasis]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indIdSiasis] ON [dbo].[SisFiliaciones]
(
	[idSiasis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [indNumeroFua]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indNumeroFua] ON [dbo].[SisFuaAtencion]
(
	[FuaDisa] ASC,
	[FuaLote] ASC,
	[FuaNumero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [indIdCuenta]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indIdCuenta] ON [dbo].[SisFuaAtencionDIA]
(
	[idCuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [indIdCuenta]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indIdCuenta] ON [dbo].[SisFuaAtencionINS]
(
	[idCuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [indIdCuenta]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indIdCuenta] ON [dbo].[SisFuaAtencionMED]
(
	[idCuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [indIdCuenta]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indIdCuenta] ON [dbo].[SisFuaAtencionPRO]
(
	[idCuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [indIdCuenta]    Script Date: 12/01/2026 02:56:18 p. m. ******/
CREATE NONCLUSTERED INDEX [indIdCuenta] ON [dbo].[SisFuaAtencionSMI]
(
	[idCuentaAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SisAfiliacionTipo] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[TriajeVariable] ADD  CONSTRAINT [DF_VariableTriaje_EsAntropometrica]  DEFAULT ((0)) FOR [EsAntropometrica]
GO
ALTER TABLE [dbo].[TriajeVariable] ADD  CONSTRAINT [DF_VariableTriaje_TieneLimiteMedicion]  DEFAULT ((0)) FOR [TieneLimiteMedicion]
GO
ALTER TABLE [dbo].[TriajeVariable] ADD  CONSTRAINT [DF_VariableTriaje_EsDatoObligatorio]  DEFAULT ((1)) FOR [EsDatoObligatorio]
GO
ALTER TABLE [dbo].[TriajeVariable] ADD  CONSTRAINT [DF_VariableTriaje_EsActivo]  DEFAULT ((1)) FOR [EsActivo]
GO
ALTER TABLE [dbo].[InterLabDetalle]  WITH NOCHECK ADD  CONSTRAINT [FK_InterLabDetalle_InterLabCabecera] FOREIGN KEY([identificador])
REFERENCES [dbo].[InterLabCabecera] ([identificador])
GO
ALTER TABLE [dbo].[InterLabDetalle] CHECK CONSTRAINT [FK_InterLabDetalle_InterLabCabecera]
GO
ALTER TABLE [dbo].[SisFuaAtencionDIA]  WITH NOCHECK ADD  CONSTRAINT [FK_SisFuaAtencionDIA_SisFuaAtencion] FOREIGN KEY([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
REFERENCES [dbo].[SisFuaAtencion] ([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
GO
ALTER TABLE [dbo].[SisFuaAtencionDIA] CHECK CONSTRAINT [FK_SisFuaAtencionDIA_SisFuaAtencion]
GO
ALTER TABLE [dbo].[SisFuaAtencionINS]  WITH NOCHECK ADD  CONSTRAINT [FK_SisFuaAtencionINS_SisFuaAtencion] FOREIGN KEY([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
REFERENCES [dbo].[SisFuaAtencion] ([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
GO
ALTER TABLE [dbo].[SisFuaAtencionINS] CHECK CONSTRAINT [FK_SisFuaAtencionINS_SisFuaAtencion]
GO
ALTER TABLE [dbo].[SisFuaAtencionMED]  WITH NOCHECK ADD  CONSTRAINT [FK_SisFuaAtencionMED_SisFuaAtencion] FOREIGN KEY([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
REFERENCES [dbo].[SisFuaAtencion] ([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
GO
ALTER TABLE [dbo].[SisFuaAtencionMED] CHECK CONSTRAINT [FK_SisFuaAtencionMED_SisFuaAtencion]
GO
ALTER TABLE [dbo].[SisFuaAtencionPRO]  WITH NOCHECK ADD  CONSTRAINT [FK_SisFuaAtencionPRO_SisFuaAtencion] FOREIGN KEY([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
REFERENCES [dbo].[SisFuaAtencion] ([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
GO
ALTER TABLE [dbo].[SisFuaAtencionPRO] CHECK CONSTRAINT [FK_SisFuaAtencionPRO_SisFuaAtencion]
GO
ALTER TABLE [dbo].[SisFuaAtencionSMI]  WITH NOCHECK ADD  CONSTRAINT [FK_SisFuaAtencionSMI_SisFuaAtencion] FOREIGN KEY([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
REFERENCES [dbo].[SisFuaAtencion] ([idCuentaAtencion], [FuaDisa], [FuaLote], [FuaNumero])
GO
ALTER TABLE [dbo].[SisFuaAtencionSMI] CHECK CONSTRAINT [FK_SisFuaAtencionSMI_SisFuaAtencion]
GO
ALTER TABLE [dbo].[TriajeExcepciones]  WITH NOCHECK ADD  CONSTRAINT [FK_TriajeExcepciones_TriajeVariable] FOREIGN KEY([IdTriajeVariable])
REFERENCES [dbo].[TriajeVariable] ([IdTriajeVariable])
GO
ALTER TABLE [dbo].[TriajeExcepciones] CHECK CONSTRAINT [FK_TriajeExcepciones_TriajeVariable]
GO
ALTER TABLE [dbo].[TriajeValorNormal]  WITH NOCHECK ADD  CONSTRAINT [FK_TriajeValorNormal_TriajeVariable] FOREIGN KEY([IdTriajeVariable])
REFERENCES [dbo].[TriajeVariable] ([IdTriajeVariable])
GO
ALTER TABLE [dbo].[TriajeValorNormal] CHECK CONSTRAINT [FK_TriajeValorNormal_TriajeVariable]
GO
/****** Object:  StoredProcedure [dbo].[ActualizaAtencionesCEXNroHistoriaClinica]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[ActualizaAtencionesCEXNroHistoriaClinica]
	@NroHistoriaNueva [int],
	@IdHistoriaClinica [int]
WITH EXECUTE AS CALLER
AS
update atencionesCE set nroHistoriaClinica=@NroHistoriaNueva where nroHistoriaClinica=@IdHistoriaClinica
GO
/****** Object:  StoredProcedure [dbo].[atencionesCEactualizaHistoria]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atencionesCEactualizaHistoria]
	@historia [int],
	@historiaNueva [int]
WITH EXECUTE AS CALLER
AS
update atencionesCE set nroHistoriaClinica=@historiaNueva
                 where nroHistoriaClinica=@historia
GO
/****** Object:  StoredProcedure [dbo].[AtencionesCEactualizaHistoriaDesdeSIGH]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AtencionesCEactualizaHistoriaDesdeSIGH]
WITH EXECUTE AS CALLER
AS
update atencionesCE set NroHistoriaClinica =(SELECT  sigh.dbo.Pacientes.NroHistoriaClinica
                       FROM         sigh.dbo.Atenciones LEFT OUTER JOIN
                       sigh.dbo.Pacientes ON sigh.dbo.Atenciones.IdPaciente = sigh.dbo.Pacientes.IdPaciente
                       WHERE      sigh.dbo.Atenciones.IdAtencion=atencionesCE.idAtencion)
where  nrohistoriaclinica<900000000
GO
/****** Object:  StoredProcedure [dbo].[atencionesCEAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atencionesCEAgregar]
	@idAtencion [int],
	@NroHistoriaClinica [int],
	@CitaDniMedicoJamo [varchar](8),
	@CitaFecha [datetime],
	@CitaMedico [varchar](100),
	@CitaServicioJamo [varchar](100),
	@CitaIdServicio [int],
	@CitaMotivo [varchar](1000),
	@CitaExamenClinico [varchar](1000),
	@CitaDiagMed [varchar](1000),
	@CitaExClinicos [varchar](3000),
	@CitaTratamiento [varchar](1000),
	@CitaObservaciones [varchar](1000),
	@CitaFechaAtencion [datetime],
	@CitaIdUsuario [int],
	@TriajeEdad [varchar](6),
	@TriajePresion [varchar](13),
	@TriajeTalla [varchar](7),
	@TriajeTemperatura [varchar](6),
	@TriajePeso [varchar](7),
	@TriajeFecha [datetime],
	@TriajeIdUsuario [int],
	@TriajePulso [int],
	@TriajeFrecRespiratoria [int],
	@CitaAntecedente [varchar](1000),
	@TriajePerimCefalico [money],
	@TriajeFrecCardiaca [int],
	@TriajeOrigen [int],
	@TriajePerimAbdominal [varchar](30),
	@TriajeSaturacionOxigeno [varchar](3),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into atencionesCE (idAtencion,NroHistoriaClinica,CitaDniMedicoJamo,
		CitaFecha,CitaMedico,CitaServicioJamo,CitaIdServicio,CitaMotivo,CitaExamenClinico,
		CitaDiagMed,CitaExClinicos,CitaTratamiento,CitaObservaciones,CitaFechaAtencion,
		CitaIdUsuario,TriajeEdad,TriajePresion,TriajeTalla,TriajeTemperatura,TriajePeso,
		TriajeFecha,TriajeIdUsuario,TriajePulso,TriajeFrecRespiratoria,CitaAntecedente,
		TriajePerimCefalico, TriajeFrecCardiaca, TriajeOrigen,TriajePerimAbdominal,
                TriajeSaturacionOxigeno)
	values (@idAtencion,@NroHistoriaClinica,@CitaDniMedicoJamo,@CitaFecha,@CitaMedico,
		@CitaServicioJamo,@CitaIdServicio,@CitaMotivo,@CitaExamenClinico,@CitaDiagMed,
		@CitaExClinicos,@CitaTratamiento,@CitaObservaciones,@CitaFechaAtencion,
		@CitaIdUsuario,@TriajeEdad,@TriajePresion,@TriajeTalla,@TriajeTemperatura,@TriajePeso,
		@TriajeFecha,@TriajeIdUsuario,@TriajePulso,@TriajeFrecRespiratoria,@CitaAntecedente,
		@TriajePerimCefalico, @TriajeFrecCardiaca, @TriajeOrigen,@TriajePerimAbdominal,
                @TriajeSaturacionOxigeno)
GO
/****** Object:  StoredProcedure [dbo].[atencionesCEEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atencionesCEEliminar]
	@idAtencion [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from atencionesCE
where idAtencion = @idAtencion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@idAtencion,'atencionesCE'
GO
/****** Object:  StoredProcedure [dbo].[AtencionesCEFiltrarPorPaciente]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[AtencionesCEFiltrarPorPaciente]
	@NroHistoriaClinica [int],
	@apellidoPaterno [varchar](40),
	@apellidoMaterno [varchar](40),
	@primerNombre [varchar](40),
	@dni [varchar](12),
	@idCuentaAtencion [int],
	@lcFechaTriaje [varchar](10),
	@ldFechaTriaje1 [datetime],
	@ldFechaTriaje2 [datetime]
WITH EXECUTE AS CALLER
AS
declare @filtroAP varchar(50)
declare @filtroAM varchar(50)
declare @filtroPN varchar(50)
declare @Fec1 varchar(50)
declare @Fec2 varchar(50)
select @filtroAP=@apellidoPaterno+'%'
select @filtroAM=@apellidoMaterno+'%'
select @filtroPN=@PrimerNombre+'%'
select @fec1=@lcFechaTriaje+' 00:00:01'
select @fec2=@lcFechaTriaje+' 23:59:59'
if @lcFechaTriaje<>''
	SELECT     dbo.atencionesCE.idAtencion, sigh.dbo.Atenciones.IdCuentaAtencion, sigh.dbo.Pacientes.NroHistoriaClinica, sigh.dbo.Pacientes.ApellidoPaterno,
	                      sigh.dbo.Pacientes.ApellidoMaterno, sigh.dbo.Pacientes.PrimerNombre, dbo.atencionesCE.TriajeFecha, sigh.dbo.Servicios.Nombre AS Consultorio,
	                      sigh.dbo.Atenciones.FechaIngreso AS FechaCita
	FROM         sigh.dbo.Atenciones LEFT OUTER JOIN
	                      sigh.dbo.Servicios ON sigh.dbo.Atenciones.IdServicioIngreso = sigh.dbo.Servicios.IdServicio LEFT OUTER JOIN
	                      sigh.dbo.Pacientes ON sigh.dbo.Atenciones.IdPaciente = sigh.dbo.Pacientes.IdPaciente RIGHT OUTER JOIN
	                      dbo.atencionesCE ON dbo.atencionesCE.idAtencion = sigh.dbo.Atenciones.IdAtencion
            WHERE      dbo.atencionesCE.idAtencion>0 and dbo.atencionesCE.TriajeFecha  between  @ldFechaTriaje1 AND @ldFechaTriaje2
             order by  dbo.atencionesCE.TriajeFecha DESC
else
   if @idCuentaAtencion>0
	SELECT     dbo.atencionesCE.idAtencion, sigh.dbo.Atenciones.IdCuentaAtencion, sigh.dbo.Pacientes.NroHistoriaClinica, sigh.dbo.Pacientes.ApellidoPaterno,
	                      sigh.dbo.Pacientes.ApellidoMaterno, sigh.dbo.Pacientes.PrimerNombre, dbo.atencionesCE.TriajeFecha, sigh.dbo.Servicios.Nombre AS Consultorio,
	                      sigh.dbo.Atenciones.FechaIngreso AS FechaCita
	FROM         sigh.dbo.Atenciones LEFT OUTER JOIN
	                      sigh.dbo.Servicios ON sigh.dbo.Atenciones.IdServicioIngreso = sigh.dbo.Servicios.IdServicio LEFT OUTER JOIN
	                      sigh.dbo.Pacientes ON sigh.dbo.Atenciones.IdPaciente = sigh.dbo.Pacientes.IdPaciente RIGHT OUTER JOIN
	                      dbo.atencionesCE ON dbo.atencionesCE.idAtencion = sigh.dbo.Atenciones.IdAtencion
            WHERE   dbo.atencionesCE.idAtencion>0 and sigh.dbo.Atenciones.IdCuentaAtencion=@idCuentaAtencion
             order by  dbo.atencionesCE.TriajeFecha DESC
else
   if @NroHistoriaClinica>0
	SELECT     dbo.atencionesCE.idAtencion, sigh.dbo.Atenciones.IdCuentaAtencion, sigh.dbo.Pacientes.NroHistoriaClinica, sigh.dbo.Pacientes.ApellidoPaterno,
	                      sigh.dbo.Pacientes.ApellidoMaterno, sigh.dbo.Pacientes.PrimerNombre, dbo.atencionesCE.TriajeFecha, sigh.dbo.Servicios.Nombre AS Consultorio,
	                      sigh.dbo.Atenciones.FechaIngreso AS FechaCita
	FROM         sigh.dbo.Atenciones LEFT OUTER JOIN
	                      sigh.dbo.Servicios ON sigh.dbo.Atenciones.IdServicioIngreso = sigh.dbo.Servicios.IdServicio LEFT OUTER JOIN
	                      sigh.dbo.Pacientes ON sigh.dbo.Atenciones.IdPaciente = sigh.dbo.Pacientes.IdPaciente RIGHT OUTER JOIN
	                      dbo.atencionesCE ON dbo.atencionesCE.idAtencion = sigh.dbo.Atenciones.IdAtencion
            WHERE    dbo.atencionesCE.idAtencion>0 and sigh.dbo.Pacientes.NroHistoriaClinica=@NroHistoriaClinica
             order by  dbo.atencionesCE.TriajeFecha DESC
else
     if @dni<>''
	SELECT     dbo.atencionesCE.idAtencion, sigh.dbo.Atenciones.IdCuentaAtencion, sigh.dbo.Pacientes.NroHistoriaClinica, sigh.dbo.Pacientes.ApellidoPaterno,
	                      sigh.dbo.Pacientes.ApellidoMaterno, sigh.dbo.Pacientes.PrimerNombre, dbo.atencionesCE.TriajeFecha, sigh.dbo.Servicios.Nombre AS Consultorio,
	                      sigh.dbo.Atenciones.FechaIngreso AS FechaCita
	FROM         sigh.dbo.Atenciones LEFT OUTER JOIN
	                      sigh.dbo.Servicios ON sigh.dbo.Atenciones.IdServicioIngreso = sigh.dbo.Servicios.IdServicio LEFT OUTER JOIN
	                      sigh.dbo.Pacientes ON sigh.dbo.Atenciones.IdPaciente = sigh.dbo.Pacientes.IdPaciente RIGHT OUTER JOIN
	                      dbo.atencionesCE ON dbo.atencionesCE.idAtencion = sigh.dbo.Atenciones.IdAtencion
            WHERE    dbo.atencionesCE.idAtencion>0 and sigh.dbo.Pacientes.NroDocumento=@dni and sigh.dbo.Pacientes.idDocIdentidad=1
             order by  dbo.atencionesCE.TriajeFecha DESC
else
       if  @apellidoPaterno<>'' and @apellidoMaterno<>''
	SELECT     dbo.atencionesCE.idAtencion, sigh.dbo.Atenciones.IdCuentaAtencion, sigh.dbo.Pacientes.NroHistoriaClinica, sigh.dbo.Pacientes.ApellidoPaterno,
	                      sigh.dbo.Pacientes.ApellidoMaterno, sigh.dbo.Pacientes.PrimerNombre, dbo.atencionesCE.TriajeFecha, sigh.dbo.Servicios.Nombre AS Consultorio,
	                      sigh.dbo.Atenciones.FechaIngreso AS FechaCita
	FROM         sigh.dbo.Atenciones LEFT OUTER JOIN
	                      sigh.dbo.Servicios ON sigh.dbo.Atenciones.IdServicioIngreso = sigh.dbo.Servicios.IdServicio LEFT OUTER JOIN
	                      sigh.dbo.Pacientes ON sigh.dbo.Atenciones.IdPaciente = sigh.dbo.Pacientes.IdPaciente RIGHT OUTER JOIN
	                      dbo.atencionesCE ON dbo.atencionesCE.idAtencion = sigh.dbo.Atenciones.IdAtencion
            WHERE        dbo.atencionesCE.idAtencion>0 and sigh.dbo.Pacientes.ApellidoPaterno like @filtroAP and  sigh.dbo.Pacientes.ApellidoMaterno like @filtroAM
             order by  dbo.atencionesCE.TriajeFecha DESC
else
       if  @apellidoPaterno<>'' and @apellidoMaterno=''
	SELECT     dbo.atencionesCE.idAtencion, sigh.dbo.Atenciones.IdCuentaAtencion, sigh.dbo.Pacientes.NroHistoriaClinica, sigh.dbo.Pacientes.ApellidoPaterno,
	                      sigh.dbo.Pacientes.ApellidoMaterno, sigh.dbo.Pacientes.PrimerNombre, dbo.atencionesCE.TriajeFecha, sigh.dbo.Servicios.Nombre AS Consultorio,
	                      sigh.dbo.Atenciones.FechaIngreso AS FechaCita
	FROM         sigh.dbo.Atenciones LEFT OUTER JOIN
	                      sigh.dbo.Servicios ON sigh.dbo.Atenciones.IdServicioIngreso = sigh.dbo.Servicios.IdServicio LEFT OUTER JOIN
	                      sigh.dbo.Pacientes ON sigh.dbo.Atenciones.IdPaciente = sigh.dbo.Pacientes.IdPaciente RIGHT OUTER JOIN
	                      dbo.atencionesCE ON dbo.atencionesCE.idAtencion = sigh.dbo.Atenciones.IdAtencion
            WHERE        dbo.atencionesCE.idAtencion>0 and sigh.dbo.Pacientes.ApellidoPaterno like @filtroAP
             order by  dbo.atencionesCE.TriajeFecha DESC
else
       if  @apellidoPaterno='' and @apellidoMaterno<>''
	SELECT     dbo.atencionesCE.idAtencion, sigh.dbo.Atenciones.IdCuentaAtencion, sigh.dbo.Pacientes.NroHistoriaClinica, sigh.dbo.Pacientes.ApellidoPaterno,
	                      sigh.dbo.Pacientes.ApellidoMaterno, sigh.dbo.Pacientes.PrimerNombre, dbo.atencionesCE.TriajeFecha, sigh.dbo.Servicios.Nombre AS Consultorio,
	                      sigh.dbo.Atenciones.FechaIngreso AS FechaCita
	FROM         sigh.dbo.Atenciones LEFT OUTER JOIN
	                      sigh.dbo.Servicios ON sigh.dbo.Atenciones.IdServicioIngreso = sigh.dbo.Servicios.IdServicio LEFT OUTER JOIN
	                      sigh.dbo.Pacientes ON sigh.dbo.Atenciones.IdPaciente = sigh.dbo.Pacientes.IdPaciente RIGHT OUTER JOIN
	                      dbo.atencionesCE ON dbo.atencionesCE.idAtencion = sigh.dbo.Atenciones.IdAtencion
            WHERE        dbo.atencionesCE.idAtencion>0 and sigh.dbo.Pacientes.ApellidoMaterno like @filtroAM
             order by  dbo.atencionesCE.TriajeFecha DESC
GO
/****** Object:  StoredProcedure [dbo].[AtencionesCeListaTriaje]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AtencionesCeListaTriaje]
	@IdAtencion [int],
	@NroHistoriaClinica [int]
WITH EXECUTE AS CALLER
AS
SELECT idAtencion, TriajeFecha, TriajeEdad, TriajeTalla, TriajePeso, TriajePerimCefalico
	FROM atencionesCe
	WHERE idAtencion < @IdAtencion AND NroHistoriaClinica = @NroHistoriaClinica  ORDER BY TriajeFecha;
GO
/****** Object:  StoredProcedure [dbo].[atencionesCEModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atencionesCEModificar]
	@idAtencion [int],
	@NroHistoriaClinica [int],
	@CitaDniMedicoJamo [varchar](8),
	@CitaFecha [datetime],
	@CitaMedico [varchar](100),
	@CitaServicioJamo [varchar](100),
	@CitaIdServicio [int],
	@CitaMotivo [varchar](1000),
	@CitaExamenClinico [varchar](1000),
	@CitaDiagMed [varchar](1000),
	@CitaExClinicos [varchar](3000),
	@CitaTratamiento [varchar](1000),
	@CitaObservaciones [varchar](1000),
	@CitaFechaAtencion [datetime],
	@CitaIdUsuario [int],
	@TriajeEdad [varchar](6),
	@TriajePresion [varchar](13),
	@TriajeTalla [varchar](7),
	@TriajeTemperatura [varchar](6),
	@TriajePeso [varchar](7),
	@TriajeFecha [datetime],
	@TriajeIdUsuario [int],
	@TriajePulso [int],
	@TriajeFrecRespiratoria [int],
	@CitaAntecedente [varchar](1000),
	@TriajePerimCefalico [money],
	@TriajeFrecCardiaca [int],
	@TriajeOrigen [int],
	@TriajePerimAbdominal [varchar](30),
	@TriajeSaturacionOxigeno [varchar](3),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update atencionesCE set
		NroHistoriaClinica = @NroHistoriaClinica,
		CitaDniMedicoJamo = @CitaDniMedicoJamo,
		CitaFecha = @CitaFecha,
		CitaMedico = @CitaMedico,
		CitaServicioJamo = @CitaServicioJamo,
		CitaIdServicio = @CitaIdServicio,
		CitaMotivo = @CitaMotivo,
		CitaExamenClinico = @CitaExamenClinico,
		CitaDiagMed = @CitaDiagMed,
		CitaExClinicos = @CitaExClinicos,
		CitaTratamiento = @CitaTratamiento,
		CitaObservaciones = @CitaObservaciones,
		CitaFechaAtencion = @CitaFechaAtencion,
		CitaIdUsuario = @CitaIdUsuario,
		TriajeEdad = @TriajeEdad,
		TriajePresion = @TriajePresion,
		TriajeTalla = @TriajeTalla,
		TriajeTemperatura = @TriajeTemperatura,
		TriajePeso = @TriajePeso,
		TriajeFecha = @TriajeFecha,
		TriajeIdUsuario = @TriajeIdUsuario,
		TriajePulso=@TriajePulso,
		TriajeFrecRespiratoria=@TriajeFrecRespiratoria,
		CitaAntecedente=@CitaAntecedente,
		TriajePerimCefalico = @TriajePerimCefalico,
		TriajeFrecCardiaca = @TriajeFrecCardiaca,
		TriajeOrigen = @TriajeOrigen,
		TriajePerimAbdominal =@TriajePerimAbdominal,
                TriajeSaturacionOxigeno=@TriajeSaturacionOxigeno
	where idAtencion = @idAtencion
GO
/****** Object:  StoredProcedure [dbo].[atencionesCESeleccionarPerimetroAbdominalPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atencionesCESeleccionarPerimetroAbdominalPorId]
	@idCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
SELECT T.TriajePerimAbdominal FROM SIGH_EXTERNA.dbo.atencionesCE T
INNER JOIN  sigh.dbo.Atenciones A
ON A.IdAtencion = T.idAtencion
WHERE A.IdCuentaAtencion = @idCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[atencionesCESeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atencionesCESeleccionarPorId]
	@idAtencion [int]
WITH EXECUTE AS CALLER
AS
select * from atencionesCE
where idAtencion = @idAtencion
GO
/****** Object:  StoredProcedure [dbo].[AtencionesCeXnrohistoria]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[AtencionesCeXnrohistoria]
	@ml_NroHistoriaClinica [int]
WITH EXECUTE AS CALLER
AS
select * from atencionesCe where nroHistoriaClinica=@ml_NroHistoriaClinica  order by citaFecha desc
GO
/****** Object:  StoredProcedure [dbo].[AtencionesCeXnrohistoriaTriaje]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AtencionesCeXnrohistoriaTriaje]
	@ml_NroHistoriaClinica [int]
WITH EXECUTE AS CALLER
AS
select top 1 * from atencionesCe where not (TriajeTalla is null) and nroHistoriaClinica=@ml_NroHistoriaClinica  order by TriajeFecha desc
GO
/****** Object:  StoredProcedure [dbo].[atencionesCExServicio]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[atencionesCExServicio]
	@lnIdServicioIngreso [int],
	@FechaIngreso [datetime]
WITH EXECUTE AS CALLER
AS
SELECT     sigh.dbo.Atenciones.IdCuentaAtencion, sigh.dbo.Atenciones.FechaIngreso,sigh.dbo.Atenciones.idServicioIngreso, dbo.atencionesCE.*
                  FROM         sigh.dbo.Atenciones RIGHT OUTER JOIN
                                       dbo.atencionesCE ON dbo.atencionesCE.idAtencion = sigh.dbo.Atenciones.IdAtencion
                  WHERE  sigh.dbo.Atenciones.FechaIngreso =CONVERT(DATETIME,@FechaIngreso,103)
                  and sigh.dbo.Atenciones.idServicioIngreso=@lnIdServicioIngreso
GO
/****** Object:  StoredProcedure [dbo].[atencionesSeleccionarSinTriaje]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[atencionesSeleccionarSinTriaje]
	@FechaIngreso1 [datetime],
	@FechaIngreso2 [datetime]
WITH EXECUTE AS CALLER
AS
SELECT    SIGH.dbo.Atenciones.HoraIngreso as HoraCita, SIGH.dbo.Pacientes.ApellidoPaterno, SIGH.dbo.Pacientes.ApellidoMaterno, SIGH.dbo.Pacientes.PrimerNombre,
                      SIGH.dbo.Pacientes.NroHistoriaClinica, SIGH.dbo.Servicios.Nombre  as Consultorio, SIGH.dbo.Pacientes.Telefono
FROM         SIGH.dbo.Atenciones LEFT OUTER JOIN
                      dbo.atencionesCE ON SIGH.dbo.Atenciones.IdAtencion = dbo.atencionesCE.idAtencion LEFT OUTER JOIN
                      SIGH.dbo.Servicios ON SIGH.dbo.Atenciones.IdServicioIngreso = SIGH.dbo.Servicios.IdServicio LEFT OUTER JOIN
                      SIGH.dbo.Pacientes ON SIGH.dbo.Atenciones.IdPaciente = SIGH.dbo.Pacientes.IdPaciente
WHERE     (dbo.atencionesCE.TriajeFecha IS NULL) AND (NOT (SIGH.dbo.Pacientes.Telefono IS NULL)) AND
          (SIGH.dbo.Atenciones.IdTipoServicio = 1) and SIGH.dbo.Atenciones.idEstadoAtencion<>0 and
          sigh.dbo.Atenciones.FechaIngreso Between  @FechaIngreso1 and @FechaIngreso2 and
          datediff(MINUTE ,
          convert(datetime,convert(varchar(10),sigh.dbo.Atenciones.fechaIngreso,103)+' '+SIGH.dbo.Atenciones.HoraIngreso),
          GETDATE()
          )
          >30
ORDER BY sigh.dbo.Atenciones.HoraIngreso
GO
/****** Object:  StoredProcedure [dbo].[CitasNOexistentes]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasNOexistentes]
WITH EXECUTE AS CALLER
AS
select *,(select top 1 idMedicoIngreso from Atenciones where IdAtencion =HistoriasSolicitadas.IdAtencion  ) as idMedico
                                  from HistoriasSolicitadas where  LEFT(HistoriasSolicitadas.Observacion,4) ='CITA' and
										 (select top 1 IdPaciente from Citas where
										  Fecha=HistoriasSolicitadas.FechaRequerida  and
										  HoraInicio=HistoriasSolicitadas.HoraRequerida  and
										  IdPaciente=HistoriasSolicitadas.IdPaciente  and
										  IdServicio=HistoriasSolicitadas.IdServicio
										   ) is null
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebCuposAgregar]
	@idWeb [int],
	@Fecha [datetime],
	@idServicio [int],
	@idMedico [int],
	@HoraInicio [varchar](5),
	@HoraFinal [varchar](5),
	@idEstadoCitaWeb [int],
	@idCitaBloqueada [int],
	@DNI [varchar](8),
	@ApellidoPaterno [varchar](40),
	@ApellidoMaterno [varchar](40),
	@PrimerNombre [varchar](40),
	@SegundoNombre [varchar](40),
	@idTipoSexo [int],
	@FechaNacimiento [datetime],
	@Ubigeo [int],
	@FechaConfirmacion [datetime],
	@HoraConfirmacion [varchar](5),
	@idFuenteFinanciamiento [int],
	@idTurno [int],
	@Email [varchar](50),
	@Telefono [varchar](10),
	@idPaciente [int],
	@refIdEess [int],
	@refNumero [varchar](20),
	@refUPS [varchar](7),
	@refidDiagnostico [int],
	@refMedicoCOLEGIATURA [varchar](6),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into CitasWebCupos (
idWeb,Fecha,idServicio,idMedico,HoraInicio,HoraFinal,idEstadoCitaWeb,idCitaBloqueada,DNI,ApellidoPaterno,ApellidoMaterno,
PrimerNombre,SegundoNombre,idTipoSexo,FechaNacimiento,Ubigeo,FechaConfirmacion,HoraConfirmacion,idFuenteFinanciamiento,
idTurno,Email,Telefono,idPaciente,    refIdEess,refNumero,refUPS,refidDiagnostico,refMedicoCOLEGIATURA) values (
@idWeb,@Fecha,@idServicio,@idMedico,@HoraInicio,@HoraFinal,@idEstadoCitaWeb,@idCitaBloqueada,@DNI,@ApellidoPaterno,
@ApellidoMaterno,@PrimerNombre,@SegundoNombre,@idTipoSexo,@FechaNacimiento,@Ubigeo,@FechaConfirmacion,@HoraConfirmacion,@idFuenteFinanciamiento,
@idTurno,@Email,@Telefono,@idPaciente,@refIdEess,@refNumero,@refUPS,@refidDiagnostico,@refMedicoCOLEGIATURA)
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposCrearCitaWeb]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebCuposCrearCitaWeb]
	@idFuenteFinanciamiento [int],
	@idPaciente [int],
	@idServicio [int],
	@idMedico [int],
	@Fecha [datetime],
	@horaInicio [varchar](5)
WITH EXECUTE AS CALLER
AS
declare @ApellidoPaterno varchar(40)
declare @ApellidoMaterno varchar(40)
declare @PrimerNombre varchar(40)
declare @SegundoNombre varchar(40)
declare @nroDocumento varchar(12)
declare @fechaNacimiento datetime
declare @idTipoSexo int

	DECLARE VarCursor_plan CURSOR FOR 	SELECT
	       sigh.dbo.Pacientes.ApellidoPaterno,sigh.dbo.Pacientes.ApellidoMaterno,
	       sigh.dbo.Pacientes.PrimerNombre,sigh.dbo.Pacientes.SegundoNombre,
		   sigh.dbo.Pacientes.NroDocumento,sigh.dbo.Pacientes.FechaNacimiento,
		   sigh.dbo.Pacientes.IdTipoSexo from sigh.dbo.Pacientes
		   where sigh.dbo.Pacientes.IdPaciente=@idPaciente
	OPEN VarCursor_plan;
	FETCH NEXT FROM VarCursor_plan INTO
	       @ApellidoPaterno, @ApellidoMaterno,
		   @PrimerNombre, @SegundoNombre,
		   @nroDocumento, @fechaNacimiento,
		   @idTipoSexo;
     CLOSE VarCursor_plan;
	 DEALLOCATE VarCursor_plan;

update CitasWebCupos set
	idFuenteFinanciamiento = @idFuenteFinanciamiento, idPaciente=@idPaciente, idEstadoCitaWeb=3 ,
	ApellidoPaterno =@ApellidoPaterno,ApellidoMaterno =@ApellidoMaterno,
	PrimerNombre =@PrimerNombre,FechaNacimiento =@FechaNacimiento ,
	dni=@nroDocumento ,idTipoSexo =@idTipoSexo
where idServicio = @idServicio and idMedico = @idMedico and HoraInicio = @HoraInicio
                        and   fecha=@Fecha
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebCuposEliminar]
	@idWeb [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from CitasWebCupos
where idWeb = @idWeb
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@idWeb,'CitasWebCupos'
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposEliminarPorFechas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebCuposEliminarPorFechas]
	@FechaInicial [datetime],
	@FechaFinal [datetime],
	@idServicio [int]
WITH EXECUTE AS CALLER
AS
if @idServicio=0
   delete from CitasWebCupos where  idEstadoCitaWeb<>4 and Fecha    Between  @FechaInicial and @FechaFinal
else
   delete from CitasWebCupos where  idEstadoCitaWeb<>4 and
           Fecha    Between  @FechaInicial and @FechaFinal and idServicio =@idServicio
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposEliminarPorIdCitaBloqueada]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebCuposEliminarPorIdCitaBloqueada]
	@IdCitaBloqueada [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from CitasWebCupos
where IdCitaBloqueada = @IdCitaBloqueada
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebCuposModificar]
	@idWeb [int],
	@Fecha [datetime],
	@idServicio [int],
	@idMedico [int],
	@HoraInicio [varchar](5),
	@HoraFinal [varchar](5),
	@idEstadoCitaWeb [int],
	@idCitaBloqueada [int],
	@DNI [varchar](8),
	@ApellidoPaterno [varchar](40),
	@ApellidoMaterno [varchar](40),
	@PrimerNombre [varchar](40),
	@SegundoNombre [varchar](40),
	@idTipoSexo [int],
	@FechaNacimiento [datetime],
	@Ubigeo [int],
	@FechaConfirmacion [datetime],
	@HoraConfirmacion [varchar](5),
	@idFuenteFinanciamiento [int],
	@idTurno [int],
	@Email [varchar](50),
	@Telefono [varchar](10),
	@idPaciente [int],
	@refIdEess [int],
	@refNumero [varchar](20),
	@refUPS [varchar](7),
	@refidDiagnostico [int],
	@refMedicoCOLEGIATURA [varchar](6),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update CitasWebCupos
set
Fecha = @Fecha,
idServicio = @idServicio,
idMedico = @idMedico,
HoraInicio = @HoraInicio,
HoraFinal = @HoraFinal,
idEstadoCitaWeb = @idEstadoCitaWeb,
idCitaBloqueada = @idCitaBloqueada,
DNI = @DNI,
ApellidoPaterno = @ApellidoPaterno,
ApellidoMaterno = @ApellidoMaterno,
PrimerNombre = @PrimerNombre,
SegundoNombre = @SegundoNombre,
idTipoSexo = @idTipoSexo,
FechaNacimiento = @FechaNacimiento,
Ubigeo = @Ubigeo,
FechaConfirmacion = @FechaConfirmacion,
HoraConfirmacion = @HoraConfirmacion,
idFuenteFinanciamiento = @idFuenteFinanciamiento,
idTurno = @idTurno,
Email = @Email,
Telefono = @Telefono,
idPaciente=@idPaciente,
refIdEess=@refIdEess,
refNumero=@refNumero,
refUPS=@refUPS,
refidDiagnostico=@refidDiagnostico,
refMedicoCOLEGIATURA=@refMedicoCOLEGIATURA ,
idWeb=@idWeb
where idCitaBloqueada=@idCitaBloqueada
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposModificarDcitas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebCuposModificarDcitas]
	@idWeb [int],
	@Fecha [datetime],
	@idServicio [int],
	@idMedico [int],
	@HoraInicio [varchar](5),
	@HoraFinal [varchar](5),
	@idEstadoCitaWeb [int],
	@idCitaBloqueada [int],
	@DNI [varchar](8),
	@ApellidoPaterno [varchar](40),
	@ApellidoMaterno [varchar](40),
	@PrimerNombre [varchar](40),
	@SegundoNombre [varchar](40),
	@idTipoSexo [int],
	@FechaNacimiento [datetime],
	@Ubigeo [int],
	@FechaConfirmacion [datetime],
	@HoraConfirmacion [varchar](5),
	@idFuenteFinanciamiento [int],
	@idTurno [int],
	@Email [varchar](50),
	@Telefono [varchar](10),
	@idPaciente [int],
	@refIdEess [int],
	@refNumero [varchar](20),
	@refUPS [varchar](7),
	@refidDiagnostico [int],
	@refMedicoCOLEGIATURA [varchar](6),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update CitasWebCupos
	set
	DNI = @DNI,
	ApellidoPaterno = @ApellidoPaterno,
	ApellidoMaterno = @ApellidoMaterno,
	PrimerNombre = @PrimerNombre,
	SegundoNombre = @SegundoNombre,
	idTipoSexo = @idTipoSexo,
	FechaNacimiento = @FechaNacimiento,
	Ubigeo = @Ubigeo,
	idFuenteFinanciamiento = @idFuenteFinanciamiento,
	Email = @Email,
	Telefono = @Telefono,
             idPaciente=@idPaciente,
refIdEess=@refIdEess,
refNumero=@refNumero,
refUPS=@refUPS,
refidDiagnostico=@refidDiagnostico,
refMedicoCOLEGIATURA=@refMedicoCOLEGIATURA
	where idServicio = @idServicio and idMedico = @idMedico and HoraInicio = @HoraInicio and idEstadoCitaWeb = @idEstadoCitaWeb
                        and                       (fecha  Between @Fecha and @Fecha)
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposSeleccionarPorFechas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[CitasWebCuposSeleccionarPorFechas]
	@FechaInicial [datetime],
	@FechaFinal [datetime]
WITH EXECUTE AS CALLER
AS
select * from CitasWebCupos where Fecha    Between (CONVERT(DATETIME,@FechaInicial, 103)) and (CONVERT(DATETIME,@FechaFinal , 103))
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebCuposSeleccionarPorId]
	@idWeb [int]
WITH EXECUTE AS CALLER
AS
select * from CitasWebCupos
where idWeb = @idWeb
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposSeleccionarPorIdCitaBloqueada]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[CitasWebCuposSeleccionarPorIdCitaBloqueada]
	@IdCitaBloqueada [int]
WITH EXECUTE AS CALLER
AS
select * from CitasWebCupos where IdCitaBloqueada=@IdCitaBloqueada
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposSeleccionarPorIdEstadoCita]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[CitasWebCuposSeleccionarPorIdEstadoCita]
	@idEstadoCitaWeb [int]
WITH EXECUTE AS CALLER
AS
select * from CitasWebCupos where idEstadoCitaWeb=@idEstadoCitaWeb
GO
/****** Object:  StoredProcedure [dbo].[CitasWebCuposSeleccionarTodas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[CitasWebCuposSeleccionarTodas]
WITH EXECUTE AS CALLER
AS
select * from CitasWebCupos
GO
/****** Object:  StoredProcedure [dbo].[CitasWebLista]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CitasWebLista]
	@idEstado [int]
WITH EXECUTE AS CALLER
AS
if @idEstado=3
	SELECT dbo.CitasWebCupos.Fecha, dbo.CitasWebCupos.HoraInicio,
	        dbo.CitasWebCupos.ApellidoPaterno+' '+ dbo.CitasWebCupos.ApellidoMaterno+' '+dbo.CitasWebCupos.PrimerNombre as Paciente,
	        dbo.CitasWebCupos.DNI,
						  sigh.dbo.Servicios.Nombre AS Consultorio, dbo.CitasWebCupos.idCitaBloqueada,
						  (select top 1 Nombre  from sigh.dbo.Establecimientos
						   where sigh.dbo.Establecimientos.IdEstablecimiento=dbo.CitasWebCupos.refIdEess  ) as EessReferencia
	FROM         dbo.CitasWebCupos LEFT OUTER JOIN
						  sigh.dbo.Servicios ON dbo.CitasWebCupos.idServicio = sigh.dbo.Servicios.IdServicio
	WHERE        (dbo.CitasWebCupos.idEstadoCitaWeb = @idEstado)
	ORDER BY dbo.CitasWebCupos.ApellidoPaterno, dbo.CitasWebCupos.ApellidoMaterno
else
	SELECT     dbo.CitasWebCupos.Fecha, dbo.CitasWebCupos.HoraInicio, dbo.CitasWebCupos.ApellidoPaterno,
						  dbo.CitasWebCupos.ApellidoMaterno, dbo.CitasWebCupos.PrimerNombre, dbo.CitasWebCupos.DNI, dbo.CitasWebCupos.idWeb AS NCuenta,
						  sigh.dbo.Servicios.Nombre AS Consultorio, dbo.CitasWebCupos.idCitaBloqueada,
						  (select top 1 Nombre  from sigh.dbo.Establecimientos
						   where sigh.dbo.Establecimientos.IdEstablecimiento=dbo.CitasWebCupos.refIdEess  ) as EessReferencia,
						'...' as Ver
	FROM         dbo.CitasWebCupos LEFT OUTER JOIN
						  sigh.dbo.Servicios ON dbo.CitasWebCupos.idServicio = sigh.dbo.Servicios.IdServicio
	WHERE        (dbo.CitasWebCupos.idEstadoCitaWeb = @idEstado)
ORDER BY dbo.CitasWebCupos.Fecha desc, dbo.CitasWebCupos.HoraInicio desc
GO
/****** Object:  StoredProcedure [dbo].[CompruebaDatos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[FarmMovimientoVentasFiltrarFechasAlmacIdTipoServ]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[FarmMovimientoVentasFiltrarFechasAlmacIdTipoServ]
	@FechaInicio [datetime],
	@FechaFin [datetime],
	@TipoServicioHosp [int],
	@IdAlmacen [int]
WITH EXECUTE AS CALLER
AS
SELECT dbo.farmMovimientoVentasDetalle.cantidad as nroHistoria,left(dbo.FactCatalogoBienesInsumos.nombre,85)+' ('+rtrim(dbo.FactCatalogoBienesInsumos.codigo) +') '  AS Paciente,
                       dbo.farmMovimientoVentas.idCuentaAtencion, dbo.farmMovimientoVentas.IdServicioPaciente as idPuntoCarga, dbo.Servicios.Nombre AS dPuntoCarga,
                                  dbo.farmMovimientoVentasDetalle.Total as consumo
             FROM         dbo.farmMovimiento INNER JOIN
                                  dbo.farmMovimientoVentas ON dbo.farmMovimiento.MovNumero = dbo.farmMovimientoVentas.movNumero AND
                                  dbo.farmMovimiento.MovTipo = dbo.farmMovimientoVentas.movTipo LEFT OUTER JOIN
                                  dbo.Servicios ON dbo.farmMovimientoVentas.IdServicioPaciente = dbo.Servicios.IdServicio RIGHT OUTER JOIN
                                  dbo.farmMovimientoVentasDetalle LEFT OUTER JOIN
                                  dbo.FactCatalogoBienesInsumos ON dbo.farmMovimientoVentasDetalle.idProducto = dbo.FactCatalogoBienesInsumos.IdProducto ON
                                  dbo.farmMovimientoVentas.movNumero = dbo.farmMovimientoVentasDetalle.MovNumero AND
                                  dbo.farmMovimientoVentas.MovTipo = dbo.farmMovimientoVentasDetalle.MovTipo
             Where (dbo.farmMovimiento.idEstadoMovimiento = 1) And (dbo.farmMovimientoVentas.IdServicioPaciente Is Not Null)
                     and dbo.Servicios.IdTipoServicio=@TipoServicioHosp
                      and dbo.farmMovimiento.fechaCreacion Between CONVERT(DATETIME,  @FechaInicio  ,103)
                    and CONVERT(DATETIME,   @FechaFin,103)
                    and dbo.farmMovimiento.idAlmacenOrigen= @IdAlmacen
             order by dbo.FactCatalogoBienesInsumos.nombre
GO
/****** Object:  StoredProcedure [dbo].[FUA_CambioDeAnio]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FUA_CambioDeAnio]
WITH EXECUTE AS CALLER
AS
DECLARE @fuaLote varchar(2);
DECLARE @FuaNumeroInicial varchar(16);
DECLARE @FuaUltimoGenerado varchar(16);
declare @anio varchar(2);
declare @anioNuevo1 varchar(6);
declare @anioNuevo varchar(2);
declare @primerFuaDelAnio varchar(16);
declare @primerFuaDelAnio1 int;
	DECLARE VarCursorDesarrollo CURSOR FOR
		    SELECT     fuaLote,FuaNumeroInicial, FuaUltimoGenerado
		    FROM       SisFua;
	OPEN VarCursorDesarrollo;
	FETCH NEXT FROM VarCursorDesarrollo INTO @fuaLote,@FuaNumeroInicial,@FuaUltimoGenerado;
    CLOSE VarCursorDesarrollo;
	DEALLOCATE VarCursorDesarrollo;
	select @anioNuevo1=CONVERT(VARCHAR(6),GETDATE(),112);  --yymmdd
	select @anioNuevo=substring(@anioNuevo1,3,2);
	if @anioNuevo>@fualote
	begin
	   select @primerFuaDelAnio1 =cast(@FuaNumeroInicial as int )-1;
	   select @primerFuaDelAnio =convert(varchar(16),@primerFuaDelAnio1,103);
	   update SisFua set FuaLote = @anioNuevo,FuaUltimoGenerado=@primerFuaDelAnio;
	end


GO
/****** Object:  StoredProcedure [dbo].[FuaConsumoDeItemsPorCuenta]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FuaConsumoDeItemsPorCuenta]
	@cuenta [int]
WITH EXECUTE AS CALLER
AS
begin
	set nocount on
    create table #myTempTable1(puntoCarga varchar(20),codigo varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS,descripcion varchar(255) null,
                               cantidad int,precio money null,idProducto int null)

    insert into #myTempTable1(puntoCarga,codigo,cantidad)
	SELECT  'FARMACIA',dbo.SisFuaAtencionINS.Codigo,dbo.SisFuaAtencionINS.CantidadEntregada
	from dbo.SisFuaAtencionINS where dbo.SisFuaAtencionINS.idCuentaAtencion =@cuenta

    insert into #myTempTable1(puntoCarga,codigo,cantidad)
	SELECT  'FARMACIA',dbo.SisFuaAtencionMED.Codigo,dbo.SisFuaAtencionMED.CantidadEntregada
	from dbo.SisFuaAtencionMED where dbo.SisFuaAtencionMED.idCuentaAtencion =@cuenta

	update #myTempTable1 set #myTempTable1.idProducto=(
	       select sigh.dbo.FactCatalogoBienesInsumos.IdProducto   from sigh.dbo.FactCatalogoBienesInsumos
		    where sigh.dbo.FactCatalogoBienesInsumos.Codigo  =#myTempTable1.codigo collate Modern_Spanish_CI_AS
	       )
	where #myTempTable1.puntoCarga ='FARMACIA'

	update #myTempTable1 set #myTempTable1.descripcion =(
	       select sigh.dbo.FactCatalogoBienesInsumos.Nombre    from sigh.dbo.FactCatalogoBienesInsumos
		    where sigh.dbo.FactCatalogoBienesInsumos.IdProducto   =#myTempTable1.idProducto
	       )
	where #myTempTable1.puntoCarga ='FARMACIA'

	update #myTempTable1 set #myTempTable1.precio =(
			SELECT        top 1 sigh.dbo.farmMovimientoVentasDetalle.precio
			FROM            sigh.dbo.farmMovimientoVentas INNER JOIN
                         sigh.dbo.farmMovimientoVentasDetalle ON
                         sigh.dbo.farmMovimientoVentas.movNumero = sigh.dbo.farmMovimientoVentasDetalle.MovNumero AND
                         sigh.dbo.farmMovimientoVentas.movTipo = sigh.dbo.farmMovimientoVentasDetalle.MovTipo
			WHERE sigh.dbo.farmMovimientoVentas.idCuentaAtencion=@cuenta and
			      sigh.dbo.farmMovimientoVentasDetalle.idProducto = #myTempTable1.idProducto
			)
			where #myTempTable1.puntoCarga ='FARMACIA'


    insert into #myTempTable1(puntoCarga,codigo,cantidad)
	SELECT  'PROCEDIMIENTOS',dbo.SisFuaAtencionPRO.Codigo,dbo.SisFuaAtencionPRO.CantidadEjecutada
	from dbo.SisFuaAtencionPRO where dbo.SisFuaAtencionPRO.idCuentaAtencion =@cuenta

	update #myTempTable1 set #myTempTable1.idProducto=(
	       select sigh.dbo.FactCatalogoServicios.IdProducto   from sigh.dbo.FactCatalogoServicios
		    where sigh.dbo.FactCatalogoServicios.Codigo  =#myTempTable1.codigo collate Modern_Spanish_CI_AS
	       )
	where #myTempTable1.puntoCarga ='PROCEDIMIENTOS'

	update #myTempTable1 set #myTempTable1.descripcion =(
	       select sigh.dbo.FactCatalogoServicios.Nombre    from sigh.dbo.FactCatalogoServicios
		    where sigh.dbo.FactCatalogoServicios.IdProducto   =#myTempTable1.idProducto
	       )
	where #myTempTable1.puntoCarga ='PROCEDIMIENTOS'


	update #myTempTable1 set #myTempTable1.precio =(
			SELECT  top 1      sigh.dbo.FacturacionServicioFinanciamientos.PrecioFinanciado
			FROM            sigh.dbo.FacturacionServicioFinanciamientos INNER JOIN
								 sigh.dbo.FactOrdenServicio ON
								 sigh.dbo.FacturacionServicioFinanciamientos.idOrden = sigh.dbo.FactOrdenServicio.IdOrden
			where sigh.dbo.FactOrdenServicio.IdCuentaAtencion=@cuenta and
			      sigh.dbo.FacturacionServicioFinanciamientos.idProducto =#myTempTable1.idProducto and
				  sigh.dbo.FacturacionServicioFinanciamientos.IdTipoFinanciamiento =2 and
				  sigh.dbo.FacturacionServicioFinanciamientos.idEstadoFacturacion <>9
			    )
			where #myTempTable1.puntoCarga ='PROCEDIMIENTOS'

	select * from #myTempTable1	order by puntoCarga,descripcion
    drop table  #myTempTable1
end



drop index interlabdetalle.Ix_idestado
GO
/****** Object:  StoredProcedure [dbo].[FuaDefaultsCptFarmaciaSeleccionarTodos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[FuaDefaultsCptFarmaciaSeleccionarTodos]
WITH EXECUTE AS CALLER
AS
select * from FuaDefaultsCptFarmacia
GO
/****** Object:  StoredProcedure [dbo].[HistoriasSolicitadasNOexistentes]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HistoriasSolicitadasNOexistentes]
WITH EXECUTE AS CALLER
AS
SELECT *
  FROM [sigh].[dbo].[Citas] where (select top 1 sigh.dbo.HistoriasSolicitadas.IdPaciente from sigh.dbo.HistoriasSolicitadas  where
								    sigh.dbo.HistoriasSolicitadas.FechaRequerida=sigh.dbo.Citas.Fecha  and
								    sigh.dbo.HistoriasSolicitadas.HoraRequerida=sigh.dbo.Citas.HoraInicio  and
								    sigh.dbo.HistoriasSolicitadas.IdServicio=sigh.dbo.Citas.IdServicio) is null
GO
/****** Object:  StoredProcedure [dbo].[InterLabCabeceraAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabCabeceraAgregar]
	@identificador [int],
	@num_orden [varchar](40),
	@Historia [varchar](10),
	@PacienteEmail [varchar](50),
	@PacienteFiliacion [varchar](1),
	@PacienteId [int],
	@PacienteTipoDocumento [int],
	@PacienteDocumento [varchar](12),
	@paciente [varchar](150),
	@sexo [varchar](1),
	@fnacimiento [datetime],
	@cama [varchar](20),
	@dxCodigo [varchar](20),
	@dx [varchar](300),
	@medicoDNI [varchar](8),
	@medico [varchar](150),
	@servicioCodigo [varchar](6),
	@fechaHoraMuestra [datetime],
	@idEstado [int],
	@medicoColegiatura [varchar](10),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into InterLabCabecera (
identificador,num_orden,Historia,PacienteEmail,PacienteFiliacion,PacienteId,PacienteTipoDocumento,PacienteDocumento,paciente,sexo,fnacimiento,cama,dxCodigo,dx,medicoDNI,medico,servicioCodigo,fechaHoraMuestra,idEstado,medicoColegiatura) values (
@identificador,@num_orden,@Historia,@PacienteEmail,@PacienteFiliacion,@PacienteId,@PacienteTipoDocumento,@PacienteDocumento,@paciente,@sexo,@fnacimiento,@cama,@dxCodigo,@dx,@medicoDNI,@medico,
@servicioCodigo,@fechaHoraMuestra,@idEstado,@medicoColegiatura)
GO
/****** Object:  StoredProcedure [dbo].[InterLabCabeceraEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabCabeceraEliminar]
	@identificador [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from InterLabCabecera
where identificador = @identificador
GO
/****** Object:  StoredProcedure [dbo].[InterLabCabeceraModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabCabeceraModificar]
	@identificador [int],
	@num_orden [varchar](40),
	@Historia [varchar](10),
	@PacienteEmail [varchar](50),
	@PacienteFiliacion [varchar](1),
	@PacienteId [int],
	@PacienteTipoDocumento [int],
	@PacienteDocumento [varchar](12),
	@paciente [varchar](150),
	@sexo [varchar](1),
	@fnacimiento [datetime],
	@cama [varchar](20),
	@dxCodigo [varchar](20),
	@dx [varchar](300),
	@medicoDNI [varchar](8),
	@medico [varchar](150),
	@servicioCodigo [varchar](6),
	@fechaHoraMuestra [datetime],
	@idEstado [int],
	@medicoColegiatura [varchar](10),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update InterLabCabecera
set
num_orden = @num_orden,
Historia = @Historia,
PacienteEmail = @PacienteEmail,
PacienteFiliacion = @PacienteFiliacion,
PacienteId = @PacienteId,
PacienteTipoDocumento = @PacienteTipoDocumento,
PacienteDocumento = @PacienteDocumento,
paciente = @paciente,
sexo = @sexo,
fnacimiento = @fnacimiento,
cama = @cama,
dxCodigo = @dxCodigo,
dx = @dx,
medicoDNI = @medicoDNI,
medico = @medico,
servicioCodigo = @servicioCodigo,

fechaHoraMuestra = @fechaHoraMuestra,medicoColegiatura=@medicoColegiatura,
idEstado = @idEstado
  where identificador = @identificador
GO
/****** Object:  StoredProcedure [dbo].[InterLabCabeceraSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabCabeceraSeleccionarPorId]
	@identificador [int]
WITH EXECUTE AS CALLER
AS
select * from InterLabCabecera
where identificador = @identificador
GO
/****** Object:  StoredProcedure [dbo].[InterLabDetalleActualizar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabDetalleActualizar]
	@identificador [int],
	@CptCodigo [varchar](20),
	@idEstado [int]
WITH EXECUTE AS CALLER
AS
update InterLabDetalle
set
idEstado = @idEstado
where identificador = @identificador and cptCodigo = @cptCodigo

GO
/****** Object:  StoredProcedure [dbo].[InterLabDetalleAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabDetalleAgregar]
	@identificador [int],
	@cptCodigo [varchar](20),
	@cpt [varchar](250),
	@DNI [varchar](8),
	@FechaHoraResultado [datetime],
	@Grupo [varchar](100),
	@item [varchar](100),
	@itemResultado [varchar](500),
	@itemReferencia [varchar](100),
	@itemMetodo [varchar](50),
	@idEstado [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into InterLabDetalle (
identificador,cptCodigo,cpt,DNI,FechaHoraResultado,Grupo,item,itemResultado,itemReferencia,itemMetodo,idEstado) values (
@identificador,@cptCodigo,@cpt,@DNI,@FechaHoraResultado,@Grupo,@item,@itemResultado,@itemReferencia,@itemMetodo,@idEstado)

GO
/****** Object:  StoredProcedure [dbo].[InterLabDetalleEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabDetalleEliminar]
	@identificador [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from InterLabDetalle
where identificador = @identificador
GO
/****** Object:  StoredProcedure [dbo].[InterLabDetalleModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabDetalleModificar]
	@identificador [int],
	@cptCodigo [varchar](20),
	@cpt [varchar](250),
	@DNI [varchar](8),
	@FechaHoraResultado [datetime],
	@Grupo [varchar](100),
	@item [varchar](100),
	@itemResultado [varchar](500),
	@itemReferencia [varchar](100),
	@itemMetodo [varchar](50),
	@idEstado [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update InterLabDetalle
set
cptCodigo = @cptCodigo,
cpt = @cpt,
DNI = @DNI,
FechaHoraResultado = @FechaHoraResultado,
Grupo = @Grupo,
item = @item,
itemResultado = @itemResultado,
itemReferencia = @itemReferencia,
itemMetodo = @itemMetodo,
idEstado = @idEstado
where identificador = @identificador
GO
/****** Object:  StoredProcedure [dbo].[InterLabDetalleSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InterLabDetalleSeleccionarPorId]
	@identificador [int]
WITH EXECUTE AS CALLER
AS
select * from InterLabDetalle
where identificador = @identificador
GO
/****** Object:  StoredProcedure [dbo].[InteroperaEquiposAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaEquiposAgregar]
	@Codigo [varchar](2),
	@Marca [varchar](100),
	@Modelo [varchar](100),
	@Tipo [varchar](100),
	@Ruta [varchar](200),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into InteroperaEquipos (
Codigo,Marca,Modelo,Tipo,Ruta) values (
@Codigo,@Marca,@Modelo,@Tipo,@Ruta)
GO
/****** Object:  StoredProcedure [dbo].[InteroperaEquiposEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaEquiposEliminar]
	@Codigo [varchar](2),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from InteroperaEquipos
where Codigo = @Codigo
GO
/****** Object:  StoredProcedure [dbo].[InteroperaEquiposModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaEquiposModificar]
	@Codigo [varchar](2),
	@Marca [varchar](100),
	@Modelo [varchar](100),
	@Tipo [varchar](100),
	@Ruta [varchar](200),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update InteroperaEquipos
set
Marca = @Marca,
Modelo = @Modelo,
Tipo = @Tipo,
Ruta = @Ruta
where Codigo = @Codigo
GO
/****** Object:  StoredProcedure [dbo].[InteroperaEquiposSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaEquiposSeleccionarPorId]
	@Codigo [varchar](2)
WITH EXECUTE AS CALLER
AS
select * from InteroperaEquipos
where Codigo = @Codigo
GO
/****** Object:  StoredProcedure [dbo].[InteroperaEquiposSeleccionarTodos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaEquiposSeleccionarTodos]
WITH EXECUTE AS CALLER
AS
select *, codigo+' <'+marca+'><'+modelo+'><'+tipo+'><'+ruta+'>' as Equipo from InteroperaEquipos order by marca,modelo,tipo

GO
/****** Object:  StoredProcedure [dbo].[InteroperaPacsActualizaEstado]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaPacsActualizaEstado]
	@IdOrden [int],
	@cptCodigo [varchar](20),
	@idEstado [int]
WITH EXECUTE AS CALLER
AS
update InteroperaPacs set idEstado = @idEstado
where IdOrden = @IdOrden and cptCodigo=@cptCodigo
GO
/****** Object:  StoredProcedure [dbo].[InteroperaPacsAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaPacsAgregar]
	@IdOrden [int],
	@cptCodigo [varchar](20),
	@cpt [varchar](250),
	@PacienteId [int],
	@PacienteNroHistoria [int],
	@PacienteIdTipoDocumento [int],
	@PacienteDocumento [varchar](12),
	@Paciente [varchar](150),
	@PacienteSexo [varchar](1),
	@PacienteFNacimiento [datetime],
	@medicoDNI [varchar](8),
	@medico [varchar](150),
	@fechaHoraMuestra [datetime],
	@EquipoCodigo [varchar](2),
	@EquipoRuta [varchar](200),
	@Resultado [varchar](3000),
	@ResultadoFechaHora [datetime],
	@ResultadoDNI [varchar](8),
	@idEstado [int],
	@PuntoCarga [varchar](20),
	@PacPaterno [varchar](20),
	@PacMaterno [varchar](20),
	@PacPrimerNombre [varchar](20),
	@PacSegundoNombre [varchar](20),
	@MedPaterno [varchar](20),
	@MedMaterno [varchar](20),
	@MedNombres [varchar](40),
	@FteFinanciamiento [varchar](20),
	@TipoServicio [varchar](20),
	@PACS [varchar](20),
	@LLAVE [varchar](14),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into InteroperaPacs (
IdOrden,cptCodigo,cpt,PacienteId,PacienteNroHistoria,PacienteIdTipoDocumento,PacienteDocumento,Paciente,PacienteSexo,PacienteFNacimiento,medicoDNI,medico,fechaHoraMuestra,EquipoCodigo,EquipoRuta,Resultado,
ResultadoFechaHora,ResultadoDNI,idEstado,PuntoCarga,PacPaterno,PacMaterno,PacPrimerNombre,PacSegundoNombre,
MedPaterno,MedMaterno,MedNombres,FteFinanciamiento,TipoServicio,PACS,LLAVE) values (
@IdOrden,@cptCodigo,@cpt,@PacienteId,@PacienteNroHistoria,@PacienteIdTipoDocumento,@PacienteDocumento,@Paciente,@PacienteSexo,@PacienteFNacimiento,@medicoDNI,@medico,@fechaHoraMuestra,@EquipoCodigo,@EquipoRuta,@Resultado,
@ResultadoFechaHora,@ResultadoDNI,@idEstado,@PuntoCarga,@PacPaterno,@PacMaterno,@PacPrimerNombre,@PacSegundoNombre,
@MedPaterno,@MedMaterno,@MedNombres,@FteFinanciamiento,@TipoServicio,@PACS,@LLAVE)
GO
/****** Object:  StoredProcedure [dbo].[InteroperaPacsEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaPacsEliminar]
	@IdOrden [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from InteroperaPacs
where IdOrden = @IdOrden
GO
/****** Object:  StoredProcedure [dbo].[InteroperaPacsModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaPacsModificar]
	@IdOrden [int],
	@cptCodigo [varchar](20),
	@cpt [varchar](250),
	@PacienteId [int],
	@PacienteNroHistoria [int],
	@PacienteIdTipoDocumento [int],
	@PacienteDocumento [varchar](12),
	@Paciente [varchar](150),
	@PacienteSexo [varchar](1),
	@PacienteFNacimiento [datetime],
	@medicoDNI [varchar](8),
	@medico [varchar](150),
	@fechaHoraMuestra [datetime],
	@EquipoCodigo [varchar](2),
	@EquipoRuta [varchar](200),
	@Resultado [varchar](3000),
	@ResultadoFechaHora [datetime],
	@ResultadoDNI [varchar](8),
	@idEstado [int],
	@PuntoCarga [varchar](20),
	@PacPaterno [varchar](20),
	@PacMaterno [varchar](20),
	@PacPrimerNombre [varchar](20),
	@PacSegundoNombre [varchar](20),
	@MedPaterno [varchar](20),
	@MedMaterno [varchar](20),
	@MedNombres [varchar](40),
	@FteFinanciamiento [varchar](20),
	@TipoServicio [varchar](20),
	@PACS [varchar](20),
	@LLAVE [varchar](14),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update InteroperaPacs
set
cptCodigo = @cptCodigo,
cpt = @cpt,
PacienteId = @PacienteId,
PacienteNroHistoria = @PacienteNroHistoria,
PacienteIdTipoDocumento = @PacienteIdTipoDocumento,
PacienteDocumento = @PacienteDocumento,
Paciente = @Paciente,
PacienteSexo = @PacienteSexo,
PacienteFNacimiento = @PacienteFNacimiento,
medicoDNI = @medicoDNI,
medico = @medico,
fechaHoraMuestra = @fechaHoraMuestra,
EquipoCodigo = @EquipoCodigo,
EquipoRuta = @EquipoRuta,
Resultado = @Resultado,
ResultadoFechaHora = @ResultadoFechaHora,
ResultadoDNI = @ResultadoDNI,
idEstado = @idEstado,
PuntoCarga=@PuntoCarga ,
PacPaterno=@PacPaterno ,
PacMaterno =@PacMaterno ,
PacPrimerNombre=@PacPrimerNombre ,
PacSegundoNombre=@PacSegundoNombre ,
MedPaterno=@MedPaterno,
MedMaterno=@MedMaterno,
MedNombres=@MedNombres,
FteFinanciamiento=@FteFinanciamiento,
TipoServicio=@TipoServicio,
PACS=@PACS,
LLAVE=@LLAVE
where IdOrden = @IdOrden and cptCodigo=@cptCodigo
GO
/****** Object:  StoredProcedure [dbo].[InteroperaPacsSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InteroperaPacsSeleccionarPorId]
	@IdOrden [int]
WITH EXECUTE AS CALLER
AS
select * from InteroperaPacs
where IdOrden = @IdOrden
GO
/****** Object:  StoredProcedure [dbo].[MovimientosHistoriaClinicaNoLlegaAlArchivoClinico]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[MovimientosHistoriaClinicaNoLlegaAlArchivoClinico]
	@FechaInicio [datetime],
	@FechaFin [datetime]
WITH EXECUTE AS CALLER
AS
SELECT     dbo.Pacientes.NroHistoriaClinica, dbo.Pacientes.ApellidoPaterno, dbo.Pacientes.ApellidoMaterno, dbo.Pacientes.PrimerNombre,
                     ISNULL(dbo.Pacientes.SegundoNombre,'') as SegundoNombre, ISNULL(dbo.Servicios.Nombre,'') AS ServicioSalida, dbo.MovimientosHistoriaClinica.FechaMovimiento,
                     dbo.MovimientosHistoriaClinica.IdMovimiento , dbo.MovimientosHistoriaClinica.IdServicioDestino
FROM         dbo.MovimientosHistoriaClinica LEFT OUTER JOIN
                     dbo.Pacientes ON dbo.MovimientosHistoriaClinica.IdPaciente = dbo.Pacientes.IdPaciente LEFT OUTER JOIN
                     dbo.Servicios ON dbo.MovimientosHistoriaClinica.IdServicioDestino = dbo.Servicios.IdServicio
WHERE     dbo.MovimientosHistoriaClinica.FechaMovimiento Between @FechaInicio and  @FechaFin
ORDER BY dbo.Pacientes.NroHistoriaClinica, dbo.MovimientosHistoriaClinica.FechaMovimiento
GO
/****** Object:  StoredProcedure [dbo].[RecetaDetalleModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecetaDetalleModificar]
	@idReceta [int],
	@idItem [int],
	@CantidadPedida [int],
	@Precio [money],
	@Total [money],
	@SaldoEnRegistroReceta [int],
	@SaldoEnDespachoReceta [int],
	@CantidadDespachada [int],
	@idDosisRecetada [int],
	@idEstadoDetalle [int],
	@MotivoAnulacionMedico [varchar](300),
	@observaciones [varchar](300),
	@IdViaAdministracion [int],
	@IdUsuarioAuditoria [int],
	@WhereIdRecetaItem [int]
WITH EXECUTE AS CALLER
AS
if @WhereIdRecetaItem=1
	update RecetaDetalle
	set
	CantidadPedida = @CantidadPedida,
	Precio = @Precio,
	Total = @Total,
	SaldoEnRegistroReceta = @SaldoEnRegistroReceta,
	SaldoEnDespachoReceta = @SaldoEnDespachoReceta,
	CantidadDespachada = @CantidadDespachada,
	idDosisRecetada=@idDosisRecetada,
	idEstadoDetalle=@idEstadoDetalle,
	MotivoAnulacionMedico=@MotivoAnulacionMedico,
	IdViaAdministracion=@IdViaAdministracion,
	observaciones=@observaciones
	where idReceta = @idReceta and idItem=@idItem
else
	update RecetaDetalle
	set
	CantidadPedida = @CantidadPedida,
	Precio = @Precio,
	Total = @Total,
	SaldoEnRegistroReceta = @SaldoEnRegistroReceta,
	SaldoEnDespachoReceta = @SaldoEnDespachoReceta,
	CantidadDespachada = @CantidadDespachada,
	idDosisRecetada=@idDosisRecetada,
	idEstadoDetalle=@idEstadoDetalle,
	MotivoAnulacionMedico=@MotivoAnulacionMedico,
	IdViaAdministracion=@IdViaAdministracion,
	observaciones=@observaciones
	where idReceta = @idReceta
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@idReceta,'RecetaDetalle'
GO
/****** Object:  StoredProcedure [dbo].[RecetaDetalleServicioPorIdReceta]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecetaDetalleServicioPorIdReceta]
	@idReceta [int]
WITH EXECUTE AS CALLER
AS
SELECT        dbo.RecetaCabecera.idReceta, dbo.RecetaCabecera.IdPuntoCarga, dbo.RecetaCabecera.idCuentaAtencion, dbo.RecetaCabecera.idEstado,
		                          (SELECT     TOP 1 dbo.RecetaDetalleItem.DocumentoDespacho
		                            FROM          dbo.RecetaDetalleItem
		                            WHERE      dbo.RecetaDetalleItem.idReceta = dbo.RecetaCabecera.idReceta) AS DocumentoDespacho,
                                                dbo.RecetaDetalle.idItem AS idProducto, dbo.RecetaDetalle.CantidadPedida,
	                                   dbo.FactCatalogoServicios.Codigo, dbo.FactCatalogoServicios.Nombre + ' ('+  rtrim(dbo.RecetaDetalle.observaciones)+ ')' as nombre,
	                                   dbo.RecetaDetalle.Precio
	                 FROM        dbo.RecetaCabecera INNER JOIN
	                                   dbo.RecetaDetalle ON dbo.RecetaCabecera.idReceta = dbo.RecetaDetalle.idReceta LEFT OUTER JOIN
	                                   dbo.FactCatalogoServicios ON dbo.RecetaDetalle.idItem = dbo.FactCatalogoServicios.IdProducto
	             Where          dbo.RecetaCabecera.idreceta = @idReceta
GO
/****** Object:  StoredProcedure [dbo].[RecetasConCabeceraYdetalleSoloCpt]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[RecetasConCabeceraYdetalleSoloCpt]
	@IdReceta [int]
WITH EXECUTE AS CALLER
AS
SELECT       dbo.RecetaCabecera.idReceta, dbo.RecetaCabecera.IdPuntoCarga, dbo.RecetaCabecera.idCuentaAtencion, dbo.RecetaCabecera.idEstado,
                                      dbo.RecetaDetalle.idItem, dbo.RecetaDetalle.CantidadPedida, dbo.FactCatalogoServicios.Codigo, dbo.FactCatalogoServicios.Nombre,
                                      dbo.RecetaDetalle.Precio , dbo.RecetaDetalle.Total,dbo.RecetaCabecera.idComprobantePago,
	                          (SELECT     TOP 1 dbo.RecetaDetalleItem.DocumentoDespacho
	                            FROM          dbo.RecetaDetalleItem
	                            WHERE      dbo.RecetaDetalleItem.idReceta = dbo.RecetaCabecera.idReceta) AS DocumentoDespacho,dbo.RecetaDetalle.observaciones

                 FROM           dbo.FactCatalogoServicios RIGHT OUTER JOIN
                                      dbo.RecetaDetalle ON dbo.FactCatalogoServicios.IdProducto = dbo.RecetaDetalle.idItem LEFT OUTER JOIN
                                      dbo.RecetaCabecera ON dbo.RecetaDetalle.idReceta = dbo.RecetaCabecera.idReceta
                 WHERE       dbo.RecetaCabecera.idReceta=@IdReceta
GO
/****** Object:  StoredProcedure [dbo].[SisafilicianesObtenerNombreApellidosPorNroDocumentoYtipo]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisafilicianesObtenerNombreApellidosPorNroDocumentoYtipo]
	@DocumentoNumero [varchar](10),
	@DocumentoTipo [char](1)
WITH EXECUTE AS CALLER
AS
select * from sisfiliaciones
where DocumentoNumero=@DocumentoNumero and DocumentoTipo=@DocumentoTipo
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFiliacionesAgregar]
	@idSiasis [int],
	@Codigo [varchar](2),
	@AfiliacionDisa [varchar](3),
	@AfiliacionTipoFormato [varchar](2),
	@AfiliacionNroFormato [varchar](10),
	@AfiliacionNroIntegrante [varchar](2),
	@DocumentoTipo [varchar](1),
	@CodigoEstablAdscripcion [varchar](10),
	@AfiliacionFecha [datetime],
	@Paterno [varchar](40),
	@Materno [varchar](40),
	@Pnombre [varchar](70),
	@Onombres [varchar](70),
	@Genero [varchar](1),
	@Fnacimiento [datetime],
	@IdDistritoDomicilio [varchar](6),
	@Estado [varchar](1),
	@Fbaja [varchar](10),
	@DocumentoNumero [varchar](10),
	@MotivoBaja [varchar](70),
	@DescEESS [varchar](100),
	@DescEESSUbigeo [varchar](100),
	@Regimen [varchar](4),
	@TipoSeguro [varchar](4),
	@DescTipoSeguro [varchar](70),
	@Contrato [varchar](70),
	@IdUbigeo [varchar](10),
	@Direccion [varchar](100),
	@IdPlan [varchar](4),
	@IdGrupoPoblacional [varchar](4),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO SisFiliaciones
        (
            idSiasis, Codigo, AfiliacionDisa, AfiliacionTipoFormato, AfiliacionNroFormato,
            AfiliacionNroIntegrante, DocumentoTipo, CodigoEstablAdscripcion, AfiliacionFecha,
            Paterno, Materno, Pnombre, Onombres, Genero, Fnacimiento, IdDistritoDomicilio,
            Estado, Fbaja, DocumentoNumero, MotivoBaja, DescEESS, DescEESSUbigeo, Regimen,
            TipoSeguro, DescTipoSeguro, Contrato, IdUbigeo, Direccion, IdPlan, IdGrupoPoblacional
        )
        VALUES
        (
            @idSiasis, @Codigo, @AfiliacionDisa, @AfiliacionTipoFormato, @AfiliacionNroFormato,
            @AfiliacionNroIntegrante, @DocumentoTipo, @CodigoEstablAdscripcion, @AfiliacionFecha,
            @Paterno, @Materno, @Pnombre, @Onombres, @Genero, @Fnacimiento, @IdDistritoDomicilio,
            @Estado, @Fbaja, @DocumentoNumero, @MotivoBaja, @DescEESS, @DescEESSUbigeo, @Regimen,
            @TipoSeguro, @DescTipoSeguro, @Contrato, @IdUbigeo, @Direccion, @IdPlan, @IdGrupoPoblacional
        );

        -- Auditoría opcional
        -- EXEC AuditoriaAgregar @IdUsuarioAuditoria, 'A', @idSiasis, 'SisFiliaciones';

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        -- Devolver error al sistema
        THROW;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesDevuelveKEY]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFiliacionesDevuelveKEY]
	@Paterno [varchar](40),
	@Materno [varchar](40),
	@Pnombre [varchar](70),
	@Fnacimiento [datetime]
WITH EXECUTE AS CALLER
AS
select * from SisFiliaciones where paterno=@Paterno  and materno=@Materno
                                    and pnombre=@PNombre
                                    and fnacimiento=CONVERT(DATETIME,@fNacimiento,103)
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFiliacionesEliminar]
	@idSiasis [int],
	@Codigo [varchar](2),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFiliaciones
where idSiasis = @idSiasis and Codigo=@Codigo
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@idSiasis,'SisFiliaciones'
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesFiltrarPorAfiliacion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFiliacionesFiltrarPorAfiliacion]
	@AfTipo [varchar](2),
	@AfNumero [varchar](10)
WITH EXECUTE AS CALLER
AS
if @AfTipo <> '' AND @AfNumero <> ''
select * from SisFiliaciones where AfiliacionTipoFormato =@AfTipo and AfiliacionNroFormato=@AfNumero
else
select * from SisFiliaciones where AfiliacionTipoFormato ='--' and AfiliacionNroFormato='--'
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesFiltrarPorAfiliacionTipoFormato]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFiliacionesFiltrarPorAfiliacionTipoFormato]
	@AfTipoFormato [varchar](2)
WITH EXECUTE AS CALLER
AS
select * from SisAfiliacionTipo where AfiliacionTipoFormato =@AfTipoFormato
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesImportaAcreditados]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFiliacionesImportaAcreditados]
WITH EXECUTE AS CALLER
AS
begin
      declare @sql as varchar(100)
      DECLARE   @lnIdSiaSis int,
                          @lcCodigo varchar(2),
		@AfiliacionDisa varchar(3),
		@AfiliacionTipoFormato varchar(2),
		@AfiliacionNroFormato varchar(10),
		@AfiliacionNroIntegrante varchar(2),
		@DocumentoTipo varchar(1),
		@CodigoEstablAdscripcion varchar(10),
		@AfiliacionFecha datetime,
		@Paterno varchar(40),
		@Materno varchar(40),
		@Pnombre varchar(70),
		@Onombres varchar(70),
		@Genero varchar(1),
		@Fnacimiento datetime,
		@IdDistritoDomicilio varchar(6),
		@Estado varchar(1),
		@Fbaja datetime,
		@DocumentoNumero varchar(10),
		@MotivoBaja varchar(70),
                           @idTabla int
      create table #myTempTable
                        (
                           idSiasis int,
		Codigo varchar(2),
		AfiliacionDisa varchar(3),
		AfiliacionTipoFormato varchar(2),
		AfiliacionNroFormato varchar(10),
		AfiliacionNroIntegrante varchar(2),
		DocumentoTipo varchar(1),
		CodigoEstablAdscripcion varchar(10),
		AfiliacionFecha datetime,
		Paterno varchar(40),
		Materno varchar(40),
		Pnombre varchar(70),
		Onombres varchar(70),
		Genero varchar(1),
		Fnacimiento datetime,
		IdDistritoDomicilio varchar(6),
		Estado varchar(1),
		Fbaja datetime,
		DocumentoNumero varchar(10),
		MotivoBaja varchar(70)
                        )


--     select @sql= 'BULK INSERT #myTempTable FROM  ' +@archivoTXT+ '   WITH ( DATAFILETYPE = "char", FIELDTERMINATOR = "," )   '
--      execute @sql
    BULK INSERT #myTempTable FROM 'c:\debbSis\filiacionesSIS.txt'  WITH ( DATAFILETYPE = 'char', FIELDTERMINATOR = ',' )


/*
--proceso1
     DECLARE CursorTmp CURSOR FOR 	SELECT
                           #myTempTable.idSiasis,
                           #myTempTable.Codigo,
		#myTempTable.AfiliacionDisa ,
		#myTempTable.AfiliacionTipoFormato ,
		#myTempTable.AfiliacionNroFormato ,
		#myTempTable.AfiliacionNroIntegrante,
		#myTempTable.DocumentoTipo ,
		#myTempTable.CodigoEstablAdscripcion ,
		#myTempTable.AfiliacionFecha ,
		#myTempTable.Paterno ,
		#myTempTable.Materno ,
		#myTempTable.Pnombre ,
		#myTempTable.Onombres ,
		#myTempTable.Genero ,
		#myTempTable.Fnacimiento ,
		#myTempTable.IdDistritoDomicilio ,
		#myTempTable.Estado ,
		#myTempTable.Fbaja ,
		#myTempTable.DocumentoNumero ,
		#myTempTable.MotivoBaja
	FROM         #myTempTable
      OPEN CursorTmp
      FETCH NEXT FROM CursorTmp into
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja
      WHILE @@FETCH_STATUS = 0
      BEGIN
                          print 'Filiacion N°'
                           insert into sisFiliaciones (
                           idSiasis,
                           Codigo,
		AfiliacionDisa ,
		AfiliacionTipoFormato ,
		AfiliacionNroFormato ,
		AfiliacionNroIntegrante,
		DocumentoTipo ,
		CodigoEstablAdscripcion ,
		AfiliacionFecha ,
		Paterno ,
		Materno ,
		Pnombre ,
		Onombres ,
		Genero ,
		Fnacimiento ,
		IdDistritoDomicilio ,
		Estado ,
		Fbaja ,
		DocumentoNumero ,
		MotivoBaja)
                           values (
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja )
                  if @@ERROR>0
                           update sisFiliaciones set
		AfiliacionDisa=@AfiliacionDisa ,
		AfiliacionTipoFormato=@AfiliacionTipoFormato ,
		AfiliacionNroFormato=@AfiliacionNroFormato ,
		AfiliacionNroIntegrante=@AfiliacionNroIntegrante,
		DocumentoTipo=@DocumentoTipo ,
		CodigoEstablAdscripcion=@CodigoEstablAdscripcion ,
		AfiliacionFecha=@AfiliacionFecha ,
		Paterno=@Paterno ,
		Materno=@Materno ,
		Pnombre=@Pnombre ,
		Onombres=@Onombres ,
		Genero=@Genero ,
		Fnacimiento=@Fnacimiento ,
		IdDistritoDomicilio=@IdDistritoDomicilio ,
		Estado=@Estado ,
		Fbaja=@Fbaja ,
		DocumentoNumero=@DocumentoNumero ,
		MotivoBaja=@MotivoBaja
                           where  idSiaSis=@lnIdSiaSis and codigo=@lcCodigo
                   --
                   FETCH NEXT FROM CursorTmp into
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja
     END
     CLOSE CursorTmp
     DEALLOCATE CursorTmp
     drop table #myTempTable
*/

      --proceso1
     DECLARE CursorTmp CURSOR FOR 	SELECT
                           #myTempTable.idSiasis,
                           #myTempTable.Codigo,
		#myTempTable.AfiliacionDisa ,
		#myTempTable.AfiliacionTipoFormato ,
		#myTempTable.AfiliacionNroFormato ,
		#myTempTable.AfiliacionNroIntegrante,
		#myTempTable.DocumentoTipo ,
		#myTempTable.CodigoEstablAdscripcion ,
		#myTempTable.AfiliacionFecha ,
		#myTempTable.Paterno ,
		#myTempTable.Materno ,
		#myTempTable.Pnombre ,
		#myTempTable.Onombres ,
		#myTempTable.Genero ,
		#myTempTable.Fnacimiento ,
		#myTempTable.IdDistritoDomicilio ,
		#myTempTable.Estado ,
		#myTempTable.Fbaja ,
		#myTempTable.DocumentoNumero ,
		#myTempTable.MotivoBaja,
                           dbo.SisFiliaciones.idSiasis
	FROM         #myTempTable LEFT OUTER JOIN
	                      dbo.SisFiliaciones ON #myTempTable.idSiasis = dbo.SisFiliaciones.idSiasis and #myTempTable.codigo = dbo.SisFiliaciones.codigo



      OPEN CursorTmp
      FETCH NEXT FROM CursorTmp into
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja,
                           @idTabla
      WHILE @@FETCH_STATUS = 0
      BEGIN
                   if  @idTabla >0

                           update sisFiliaciones set
		AfiliacionDisa=@AfiliacionDisa ,
		AfiliacionTipoFormato=@AfiliacionTipoFormato ,
		AfiliacionNroFormato=@AfiliacionNroFormato ,
		AfiliacionNroIntegrante=@AfiliacionNroIntegrante,
		DocumentoTipo=@DocumentoTipo ,
		CodigoEstablAdscripcion=@CodigoEstablAdscripcion ,
		AfiliacionFecha=@AfiliacionFecha ,
		Paterno=@Paterno ,
		Materno=@Materno ,
		Pnombre=@Pnombre ,
		Onombres=@Onombres ,
		Genero=@Genero ,
		Fnacimiento=@Fnacimiento ,
		IdDistritoDomicilio=@IdDistritoDomicilio ,
		Estado=@Estado ,
		Fbaja=@Fbaja ,
		DocumentoNumero=@DocumentoNumero ,
		MotivoBaja=@MotivoBaja
                           where  idSiaSis=@lnIdSiaSis and codigo=@lcCodigo


                  else
                           insert into sisFiliaciones (
                           idSiasis,
                           Codigo,
		AfiliacionDisa ,
		AfiliacionTipoFormato ,
		AfiliacionNroFormato ,
		AfiliacionNroIntegrante,
		DocumentoTipo ,
		CodigoEstablAdscripcion ,
		AfiliacionFecha ,
		Paterno ,
		Materno ,
		Pnombre ,
		Onombres ,
		Genero ,
		Fnacimiento ,
		IdDistritoDomicilio ,
		Estado ,
		Fbaja ,
		DocumentoNumero ,
		MotivoBaja)
                           values (
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja )

                   --
                   FETCH NEXT FROM CursorTmp into
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja,
                           @idTabla
     END
     CLOSE CursorTmp
     DEALLOCATE CursorTmp
     drop table #myTempTable




/*
      --proceso3
      DECLARE CursorTmp CURSOR FOR SELECT
                           idSiasis,
                           Codigo,
		AfiliacionDisa ,
		AfiliacionTipoFormato ,
		AfiliacionNroFormato ,
		AfiliacionNroIntegrante,
		DocumentoTipo ,
		CodigoEstablAdscripcion ,
		AfiliacionFecha ,
		Paterno ,
		Materno ,
		Pnombre ,
		Onombres ,
		Genero ,
		Fnacimiento ,
		IdDistritoDomicilio ,
		Estado ,
		Fbaja ,
		DocumentoNumero ,
		MotivoBaja
                          FROM #myTempTable

      OPEN CursorTmp
      FETCH NEXT FROM CursorTmp into
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja
      WHILE @@FETCH_STATUS = 0
      BEGIN
                   DECLARE CursorTmp1 CURSOR FOR SELECT  idSiasis from SisFiliaciones where idSiaSis=@lnIdSiaSis and codigo=@lcCodigo
                   OPEN CursorTmp1
                   FETCH NEXT FROM CursorTmp1
                   if @@FETCH_STATUS = 0
                           update sisFiliaciones set
		AfiliacionDisa=@AfiliacionDisa ,
		AfiliacionTipoFormato=@AfiliacionTipoFormato ,
		AfiliacionNroFormato=@AfiliacionNroFormato ,
		AfiliacionNroIntegrante=@AfiliacionNroIntegrante,
		DocumentoTipo=@DocumentoTipo ,
		CodigoEstablAdscripcion=@CodigoEstablAdscripcion ,
		AfiliacionFecha=@AfiliacionFecha ,
		Paterno=@Paterno ,
		Materno=@Materno ,
		Pnombre=@Pnombre ,
		Onombres=@Onombres ,
		Genero=@Genero ,
		Fnacimiento=@Fnacimiento ,
		IdDistritoDomicilio=@IdDistritoDomicilio ,
		Estado=@Estado ,
		Fbaja=@Fbaja ,
		DocumentoNumero=@DocumentoNumero ,
		MotivoBaja=@MotivoBaja
                           where  idSiaSis=@lnIdSiaSis and codigo=@lcCodigo
                   else
                           insert into sisFiliaciones (
                           idSiasis,
                           Codigo,
		AfiliacionDisa ,
		AfiliacionTipoFormato ,
		AfiliacionNroFormato ,
		AfiliacionNroIntegrante,
		DocumentoTipo ,
		CodigoEstablAdscripcion ,
		AfiliacionFecha ,
		Paterno ,
		Materno ,
		Pnombre ,
		Onombres ,
		Genero ,
		Fnacimiento ,
		IdDistritoDomicilio ,
		Estado ,
		Fbaja ,
		DocumentoNumero ,
		MotivoBaja)
                           values (
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja )
                   CLOSE CursorTmp1
                   DEALLOCATE CursorTmp1
                   --
                   FETCH NEXT FROM CursorTmp into
                          @lnIdSiaSis,
                          @lcCodigo,
		@AfiliacionDisa ,
		@AfiliacionTipoFormato ,
		@AfiliacionNroFormato ,
		@AfiliacionNroIntegrante,
		@DocumentoTipo ,
		@CodigoEstablAdscripcion ,
		@AfiliacionFecha ,
		@Paterno ,
		@Materno ,
		@Pnombre ,
		@Onombres ,
		@Genero ,
		@Fnacimiento ,
		@IdDistritoDomicilio ,
		@Estado ,
		@Fbaja ,
		@DocumentoNumero ,
		@MotivoBaja
     END
     CLOSE CursorTmp
     DEALLOCATE CursorTmp
     drop table #myTempTable
*/


end
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFiliacionesModificar]
	@idSiasis [int],
	@Codigo [varchar](2),
	@AfiliacionDisa [varchar](3),
	@AfiliacionTipoFormato [varchar](2),
	@AfiliacionNroFormato [varchar](10),
	@AfiliacionNroIntegrante [varchar](2),
	@DocumentoTipo [varchar](1),
	@CodigoEstablAdscripcion [varchar](10),
	@AfiliacionFecha [datetime],
	@Paterno [varchar](40),
	@Materno [varchar](40),
	@Pnombre [varchar](70),
	@Onombres [varchar](70),
	@Genero [varchar](1),
	@Fnacimiento [datetime],
	@IdDistritoDomicilio [varchar](6),
	@Estado [varchar](1),
	@Fbaja [varchar](10),
	@DocumentoNumero [varchar](10),
	@MotivoBaja [varchar](70),
	@DescEESS [varchar](100),
	@DescEESSUbigeo [varchar](100),
	@Regimen [varchar](4),
	@TipoSeguro [varchar](4),
	@DescTipoSeguro [varchar](70),
	@Contrato [varchar](70),
	@IdUbigeo [varchar](10),
	@Direccion [varchar](100),
	@IdPlan [varchar](4),
	@IdGrupoPoblacional [varchar](4),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
BEGIN TRY
    BEGIN TRANSACTION;

    UPDATE SisFiliaciones
    SET
        Codigo = @Codigo,
        AfiliacionDisa = @AfiliacionDisa,
        AfiliacionTipoFormato = @AfiliacionTipoFormato,
        AfiliacionNroFormato = @AfiliacionNroFormato,
        AfiliacionNroIntegrante = @AfiliacionNroIntegrante,
        DocumentoTipo = @DocumentoTipo,
        CodigoEstablAdscripcion = @CodigoEstablAdscripcion,
        AfiliacionFecha = @AfiliacionFecha,
        Paterno = @Paterno,
        Materno = @Materno,
        Pnombre = @Pnombre,
        Onombres = @Onombres,
        Genero = @Genero,
        Fnacimiento = @Fnacimiento,
        IdDistritoDomicilio = @IdDistritoDomicilio,
        Estado = @Estado,
        Fbaja = @Fbaja,
        DocumentoNumero = @DocumentoNumero,
        MotivoBaja = @MotivoBaja,
        DescEESS = @DescEESS,
        DescEESSUbigeo = @DescEESSUbigeo,
        Regimen = @Regimen,
        TipoSeguro = @TipoSeguro,
        DescTipoSeguro = @DescTipoSeguro,
        Contrato = @Contrato,
        IdUbigeo = @IdUbigeo,
        Direccion = @Direccion,
        IdPlan = @IdPlan,
        IdGrupoPoblacional = @IdGrupoPoblacional
    WHERE idSiasis = @idSiasis
      AND Codigo = @Codigo;

    --exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@idSiasis,'SisFiliaciones'

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;

    -- Propagar el error real
    THROW;
END CATCH;
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFiliacionesSeleccionarPorId]
	@idSiasis [int],
	@Codigo [varchar](2)
WITH EXECUTE AS CALLER
AS
select * from SisFiliaciones
where idSiasis = @idSiasis and Codigo=@Codigo
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesSeleccionarPorIdSiaSis]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFiliacionesSeleccionarPorIdSiaSis]
	@idSiasis [int],
	@codigo [varchar](2)
WITH EXECUTE AS CALLER
AS
select * from SisFiliaciones where idSiasis =@idSiasis    and     Codigo=@codigo
GO
/****** Object:  StoredProcedure [dbo].[SisFiliacionesXdni]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFiliacionesXdni]
	@DNI [varchar](10)
WITH EXECUTE AS CALLER
AS
select * from SisFiliaciones
where documentoNumero = @dni and documentoTipo='1'
GO
/****** Object:  StoredProcedure [dbo].[SisFiltraPacientesAfiliados]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFiltraPacientesAfiliados]
	@filtro [varchar](2000)
WITH EXECUTE AS CALLER
AS
BEGIN
    DECLARE @SQL AS VARCHAR(4000)

    -- Agregar condición adicional
    --SET @filtro = RTRIM(@filtro) + ' AND Estado = ''0'''

	SET @filtro = RTRIM(@filtro)

    -- Construir el SQL dinámico
    SET @SQL = '
        SELECT
            paterno AS ApPaterno,
            materno AS ApMaterno,
            pnombre AS PNombre,
            onombres AS SNombre,
            Fnacimiento,
            AfiliacionDisa + '' '' + AfiliacionTipoFormato + '' '' + AfiliacionNroFormato AS cAfiliacion,
            estado AS estadoSis,
            fbaja AS fBajaOK,
            DocumentoNumero AS DNI,
            MotivoBaja,
            genero AS Sexo,
            IdDistritoDomicilio AS distritoDomicilio,
            AfiliacionNroIntegrante,
            codigo,
            idSiaSis,
            AfiliacionDisa AS cDisa,
            AfiliacionTipoFormato AS cFormato,
            AfiliacionNroFormato AS cNumero,
            CodigoEstablAdscripcion,
            AfiliacionFecha,
            DocumentoTipo,
			Contrato,
			TipoSeguro
        FROM SisFiliaciones
        ' + @filtro + '
        ORDER BY AfiliacionFecha DESC'

    -- Ejecutar la consulta dinámica
    EXECUTE (@SQL)
END
GO
/****** Object:  StoredProcedure [dbo].[SisFiltraPacientesAtendidos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFiltraPacientesAtendidos]
	@filtro [varchar](1000)
WITH EXECUTE AS CALLER
AS
DECLARE @SQL AS VARCHAR(1500)
SET @SQL = 'select FuaDisa+" "+FuaLote+" "+FuaNumero as FormatoFua,FuaNroHistoria as NroHIstoria,
                      ltrim(Apaterno)+" "+ltrim(Amaterno)+" "+pNombre as Paciente,FuaAtencionFecha,
                      idCuentaAtencion,FuaVersionFormato, FuaTipoAnexo2015
                 from SisFuaAtencion  '+ @Filtro
EXECUTE (@SQL)
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAgregar]
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumeroInicial [varchar](16),
	@FuaNumeroFinal [varchar](16),
	@FuaUltimoGenerado [varchar](16),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFua (
FuaDisa,FuaLote,FuaNumeroInicial,FuaNumeroFinal,FuaUltimoGenerado) values (
@FuaDisa,@FuaLote,@FuaNumeroInicial,@FuaNumeroFinal,@FuaUltimoGenerado)
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@FuaDisa,'SisFua'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionAgregar]
	@idCuentaAtencion [int],
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@EstablecimientoCodigoRenaes [varchar](10),
	@Reconsideracion [varchar](1),
	@ReconsideracionCodigoDisa [varchar](3),
	@ReconsideracionLote [varchar](2),
	@ReconsideracionNroFormato [varchar](8),
	@FuaComponente [varchar](1),
	@Situacion [varchar](1),
	@AfiliacionDisa [varchar](3),
	@AfiliacionTipoFormato [varchar](2),
	@AfiliacionNroFormato [varchar](10),
	@CodigoTipoFormato [varchar](2),
	@OrigenAseguradoInstitucion [varchar](1),
	@OrigenAseguradoCodigo [varchar](16),
	@Edad [int],
	@GrupoEtareo [varchar](2),
	@Genero [varchar](1),
	@FuaAtencion [int],
	@FuaCondicionMaterna [varchar](1),
	@FuaNrohistoria [varchar](20),
	@FuaConceptoPr [int],
	@FuaConceptoPrAutoriz [varchar](15),
	@FuaConceptoPrMonto [money],
	@FuaAtencionFecha [varchar](10),
	@FuaAtencionHora [varchar](5),
	@FuaReferidoOrigenCodigoRenaes [varchar](10),
	@FuaReferidoOrigenNreferencia [varchar](20),
	@FuaCodigoPrestacion [varchar](3),
	@FuaPersonalQatiende [int],
	@FuaAtencionLugar [varchar](1),
	@FuaDestino [varchar](1),
	@FuaHospitalizadoFingreso [varchar](10),
	@FuaHospitalizadoFalta [varchar](10),
	@FuaReferidoDestinoCodigoRenaes [varchar](10),
	@FuaReferidoDestinoNreferencia [varchar](20),
	@FuaMedicoDNI [varchar](9),
	@FuaMedico [varchar](120),
	@FuaMedicoTipo [varchar](2),
	@AfiliacionNroIntegrante [varchar](2),
	@Codigo [varchar](2),
	@idSiasis [varchar](10),
	@FuaObservaciones [varchar](200),
	@CabDniUsuarioRegistra [varchar](10),
	@UltimaFechaAddMod [varchar](10),
	@CabEstado [varchar](1),
	@FuaFechaParto [varchar](10),
	@EstablecimientoDistrito [varchar](6),
	@Anio [varchar](10),
	@Mes [varchar](10),
	@CostoTotal [money],
	@Apaterno [varchar](40),
	@Amaterno [varchar](40),
	@Pnombre [varchar](35),
	@Onombre [varchar](35),
	@fnacimiento [varchar](10),
	@Autogenerado [varchar](20),
	@DocumentoTipo [varchar](1),
	@DocumentoNumero [varchar](10),
	@EstablecimientoCategoria [varchar](2),
	@CostoServicio [money],
	@CostoMedicamento [money],
	@CostoProcedimiento [money],
	@CostoInsumo [money],
	@MedicoDocumentoTipo [varchar](2),
	@ate_grupoRiesgo [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@CabNroEnvioAlSIS [varchar](2),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdentificacionArfsis [int],
	@CabFechaFuaPrimeraVez [varchar](10),
	@PeriodoOrigen [varchar](6),
	@FuacolegioCodigo [varchar](20),
	@FuacolegioNivel [varchar](1),
	@FuacolegioGrado [varchar](1),
	@FuacolegioSeccion [varchar](5),
	@FuacolegioTurno [varchar](1),
	@Fuaetnia [varchar](2),
	@FuafechaFallecimiento [datetime],
	@FuaUPS [varchar](6),
	@FuaCodAutorizacion [varchar](50),
	@FuaFechaCorteAdm [datetime],
	@FuaVersionFormato [varchar](2),
	@FuaTipoAnexo2015 [int],
	@FuaCodOferFlexible [varchar](20),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaAtencion (
idCuentaAtencion,FuaDisa,FuaLote,FuaNumero,EstablecimientoCodigoRenaes,Reconsideracion,ReconsideracionCodigoDisa,ReconsideracionLote,ReconsideracionNroFormato,FuaComponente,Situacion,AfiliacionDisa,AfiliacionTipoFormato,AfiliacionNroFormato,CodigoTipoFormato,OrigenAseguradoInstitucion,OrigenAseguradoCodigo,Edad,GrupoEtareo,Genero,FuaAtencion,FuaCondicionMaterna,FuaNrohistoria,FuaConceptoPr,FuaConceptoPrAutoriz,FuaConceptoPrMonto,FuaAtencionFecha,FuaAtencionHora,FuaReferidoOrigenCodigoRenaes,FuaReferidoOrigenNreferencia,FuaCodigoPrestacion,FuaPersonalQatiende,FuaAtencionLugar,FuaDestino,FuaHospitalizadoFingreso,FuaHospitalizadoFalta,FuaReferidoDestinoCodigoRenaes,FuaReferidoDestinoNreferencia,FuaMedicoDNI,FuaMedico,FuaMedicoTipo,AfiliacionNroIntegrante,Codigo,idSiasis,FuaObservaciones,CabDniUsuarioRegistra,UltimaFechaAddMod,CabEstado,FuaFechaParto,EstablecimientoDistrito,Anio,Mes,CostoTotal,Apaterno,Amaterno,Pnombre,Onombre,fnacimiento,Autogenerado,DocumentoTipo,DocumentoNumero,EstablecimientoCategoria,CostoServicio,CostoMedicamento,CostoProcedimiento,CostoInsumo,MedicoDocumentoTipo,ate_grupoRiesgo,CabCodigoPuntoDigitacion,CabCodigoUDR,CabNroEnvioAlSIS,CabOrigenDelRegistro,CabVersionAplicativo,CabIdentificacionPaquete,IdentificacionArfsis,CabFechaFuaPrimeraVez,PeriodoOrigen,FuacolegioCodigo,FuacolegioNivel,FuacolegioGrado,FuacolegioSeccion,FuacolegioTurno,Fuaetnia,FuafechaFallecimiento,FuaUPS,FuaCodAutorizacion,FuaFechaCorteAdm,FuaVersionFormato,FuaTipoAnexo2015,FuaCodOferFlexible) values (
@idCuentaAtencion,@FuaDisa,@FuaLote,@FuaNumero,@EstablecimientoCodigoRenaes,@Reconsideracion,@ReconsideracionCodigoDisa,@ReconsideracionLote,@ReconsideracionNroFormato,@FuaComponente,@Situacion,@AfiliacionDisa,@AfiliacionTipoFormato,@AfiliacionNroFormato,@CodigoTipoFormato,@OrigenAseguradoInstitucion,@OrigenAseguradoCodigo,@Edad,@GrupoEtareo,@Genero,@FuaAtencion,@FuaCondicionMaterna,@FuaNrohistoria,@FuaConceptoPr,@FuaConceptoPrAutoriz,@FuaConceptoPrMonto,@FuaAtencionFecha,@FuaAtencionHora,@FuaReferidoOrigenCodigoRenaes,@FuaReferidoOrigenNreferencia,@FuaCodigoPrestacion,@FuaPersonalQatiende,@FuaAtencionLugar,@FuaDestino,@FuaHospitalizadoFingreso,@FuaHospitalizadoFalta,@FuaReferidoDestinoCodigoRenaes,@FuaReferidoDestinoNreferencia,@FuaMedicoDNI,@FuaMedico,@FuaMedicoTipo,@AfiliacionNroIntegrante,@Codigo,@idSiasis,@FuaObservaciones,@CabDniUsuarioRegistra,@UltimaFechaAddMod,@CabEstado,@FuaFechaParto,@EstablecimientoDistrito,@Anio,@Mes,@CostoTotal,@Apaterno,@Amaterno,@Pnombre,@Onombre,@fnacimiento,@Autogenerado,@DocumentoTipo,@DocumentoNumero,@EstablecimientoCategoria,@CostoServicio,@CostoMedicamento,@CostoProcedimiento,@CostoInsumo,@MedicoDocumentoTipo,@ate_grupoRiesgo,@CabCodigoPuntoDigitacion,@CabCodigoUDR,@CabNroEnvioAlSIS,@CabOrigenDelRegistro,@CabVersionAplicativo,@CabIdentificacionPaquete,@IdentificacionArfsis,@CabFechaFuaPrimeraVez,@PeriodoOrigen,@FuacolegioCodigo,@FuacolegioNivel,@FuacolegioGrado,@FuacolegioSeccion,@FuacolegioTurno,@Fuaetnia,@FuafechaFallecimiento,@FuaUPS,@FuaCodAutorizacion,@FuaFechaCorteAdm,@FuaVersionFormato,@FuaTipoAnexo2015,@FuaCodOferFlexible)
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@idCuentaAtencion,'SisFuaAtencion'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionConsultarUltimoNumero]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionConsultarUltimoNumero]
	@NumeroInicio [varchar](8),
	@NumeroFinal [varchar](8)
WITH EXECUTE AS CALLER
AS
--select top 1 FuaNumero from SisFuaAtencion
--where cast(FuaNumero as bigint) between cast(@NumeroInicio as bigint) and cast(@NumeroFinal as bigint)
--order by cast(FuaNumero as bigint) desc
select  top 1 fuanumero from sisFuaAtencion where FuaDisa=(select top 1 SisFua.fuadisa from SisFua ) and
                            FuaLote=(select top 1 SisFua.FuaLote  from SisFua )   order by fuanumero desc
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionDIAAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionDIAAgregar]
	@id [int] OUTPUT,
	@idCuentaAtencion [int],
	@DxNumero [int],
	@DxTipoIE [varchar](1),
	@DxCodigo [varchar](5),
	@DxTipoDPR [varchar](1),
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaAtencionDIA (
idCuentaAtencion,DxNumero,DxTipoIE,DxCodigo,DxTipoDPR,CabDniUsuarioRegistra,CabFechaFuaPrimeraVez,CabEstado,CabNroEnvioAlSIS,CabCodigoPuntoDigitacion,CabCodigoUDR,FuaDisa,FuaLote,FuaNumero,CabOrigenDelRegistro,CabVersionAplicativo,CabIdentificacionPaquete) values (
@idCuentaAtencion,@DxNumero,@DxTipoIE,@DxCodigo,@DxTipoDPR,@CabDniUsuarioRegistra,@CabFechaFuaPrimeraVez,@CabEstado,@CabNroEnvioAlSIS,@CabCodigoPuntoDigitacion,@CabCodigoUDR,@FuaDisa,@FuaLote,@FuaNumero,@CabOrigenDelRegistro,@CabVersionAplicativo,@CabIdentificacionPaquete)
set @id = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@id,'SisFuaAtencionDIA'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionDIAEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionDIAEliminar]
	@id [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionDIA
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionDIA'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionDIAEliminarIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionDIAEliminarIdCuentaAtencion]
	@idCuentaAtencion [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionDIA
where idCuentaAtencion = @idCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionDIAModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionDIAModificar]
	@id [int],
	@idCuentaAtencion [int],
	@DxNumero [int],
	@DxTipoIE [varchar](1),
	@DxCodigo [varchar](5),
	@DxTipoDPR [varchar](1),
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaAtencionDIA
set
idCuentaAtencion = @idCuentaAtencion,
DxNumero = @DxNumero,
DxTipoIE = @DxTipoIE,
DxCodigo = @DxCodigo,
DxTipoDPR = @DxTipoDPR,
CabDniUsuarioRegistra = @CabDniUsuarioRegistra,
CabFechaFuaPrimeraVez = @CabFechaFuaPrimeraVez,
CabEstado = @CabEstado,
CabNroEnvioAlSIS = @CabNroEnvioAlSIS,
CabCodigoPuntoDigitacion = @CabCodigoPuntoDigitacion,
CabCodigoUDR = @CabCodigoUDR,
FuaDisa = @FuaDisa,
FuaLote = @FuaLote,
FuaNumero = @FuaNumero,
CabOrigenDelRegistro = @CabOrigenDelRegistro,
CabVersionAplicativo = @CabVersionAplicativo,
CabIdentificacionPaquete = @CabIdentificacionPaquete
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@id,'SisFuaAtencionDIA'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionDIASeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionDIASeleccionarPorId]
	@id [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionDIA
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionDIAxIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionDIAxIdCuentaAtencion]
	@idCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionDIA where idCuentaAtencion=@idCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[sisFuaAtencionDIAxRangoDeCuentas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sisFuaAtencionDIAxRangoDeCuentas]
	@lnIdCuentaInicial [int],
	@lnIdCuentaFinal [int]
WITH EXECUTE AS CALLER
AS
select * from sisFuaAtencionDIA where idCuentaAtencion>= @lnIdCuentaInicial  and idCuentaAtencion<= @lnIdCuentaFinal
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionEliminar]
	@idCuentaAtencion [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencion
where idCuentaAtencion = @idCuentaAtencion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@idCuentaAtencion,'SisFuaAtencion'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionFuasPorCuenta]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionFuasPorCuenta]
	@idCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionFuas where idCuentaAtencion=@idCuentaAtencion order by FuaIdCuentaAtencion desc


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SisFuaUPServiciosSeleccionarTodos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SisFuaUPServiciosSeleccionarTodos]
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionINS_MED_limpiaCantidadEntregada]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionINS_MED_limpiaCantidadEntregada]
	@IdCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
update sisFuaAtencionINS set cantidadEntregada=0 where idCuentaAtencion=@IdCuentaAtencion
update sisFuaAtencionMED set cantidadEntregada=0 where idCuentaAtencion=@IdCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionINSAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionINSAgregar]
	@id [int] OUTPUT,
	@idTablaDx [int],
	@idCuentaAtencion [int],
	@DxNumero [int],
	@Codigo [varchar](5),
	@CantidadPrescrita [int],
	@CantidadEntregada [int],
	@PrecioUnitario [money],
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaAtencionINS (
idTablaDx,idCuentaAtencion,DxNumero,Codigo,CantidadPrescrita,CantidadEntregada,PrecioUnitario,CabDniUsuarioRegistra,CabFechaFuaPrimeraVez,CabEstado,CabNroEnvioAlSIS,CabCodigoPuntoDigitacion,CabCodigoUDR,FuaDisa,FuaLote,FuaNumero,CabOrigenDelRegistro,CabVersionAplicativo,CabIdentificacionPaquete) values (
@idTablaDx,@idCuentaAtencion,@DxNumero,@Codigo,@CantidadPrescrita,@CantidadEntregada,@PrecioUnitario,@CabDniUsuarioRegistra,@CabFechaFuaPrimeraVez,@CabEstado,@CabNroEnvioAlSIS,@CabCodigoPuntoDigitacion,@CabCodigoUDR,@FuaDisa,@FuaLote,@FuaNumero,@CabOrigenDelRegistro,@CabVersionAplicativo,@CabIdentificacionPaquete)
set @id = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@id,'SisFuaAtencionINS'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionINSEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionINSEliminar]
	@id [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionINS
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionINS'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionINSEliminarIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionINSEliminarIdCuentaAtencion]
	@IdCuentaAtencion [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionINS
where IdCuentaAtencion = @IdCuentaAtencion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionINS'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionINSModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionINSModificar]
	@id [int],
	@idTablaDx [int],
	@idCuentaAtencion [int],
	@DxNumero [int],
	@Codigo [varchar](5),
	@CantidadPrescrita [int],
	@CantidadEntregada [int],
	@PrecioUnitario [money],
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaAtencionINS
set
idTablaDx = @idTablaDx,
idCuentaAtencion = @idCuentaAtencion,
DxNumero = @DxNumero,
Codigo = @Codigo,
CantidadPrescrita = @CantidadPrescrita,
CantidadEntregada = @CantidadEntregada,
PrecioUnitario = @PrecioUnitario,
CabDniUsuarioRegistra = @CabDniUsuarioRegistra,
CabFechaFuaPrimeraVez = @CabFechaFuaPrimeraVez,
CabEstado = @CabEstado,
CabNroEnvioAlSIS = @CabNroEnvioAlSIS,
CabCodigoPuntoDigitacion = @CabCodigoPuntoDigitacion,
CabCodigoUDR = @CabCodigoUDR,
FuaDisa = @FuaDisa,
FuaLote = @FuaLote,
FuaNumero = @FuaNumero,
CabOrigenDelRegistro = @CabOrigenDelRegistro,
CabVersionAplicativo = @CabVersionAplicativo,
CabIdentificacionPaquete = @CabIdentificacionPaquete
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@id,'SisFuaAtencionINS'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionINSSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionINSSeleccionarPorId]
	@id [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionINS
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionINSxIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionINSxIdCuentaAtencion]
	@idCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionINS where idCuentaAtencion=@idCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[sisFuaAtencionINSxRangoDeCuentas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sisFuaAtencionINSxRangoDeCuentas]
	@lnIdCuentaInicial [int],
	@lnIdCuentaFinal [int]
WITH EXECUTE AS CALLER
AS
select * from sisFuaAtencionINS where idCuentaAtencion>= @lnIdCuentaInicial  and idCuentaAtencion<= @lnIdCuentaFinal
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionMEDAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionMEDAgregar]
	@id [int] OUTPUT,
	@idTablaDx [int],
	@idCuentaAtencion [int],
	@Codigo [varchar](5),
	@DxNumero [int],
	@CantidadPrescrita [int],
	@CantidadEntregada [int],
	@PrecioUnitario [money],
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaAtencionMED (
idTablaDx,idCuentaAtencion,Codigo,DxNumero,CantidadPrescrita,CantidadEntregada,PrecioUnitario,CabDniUsuarioRegistra,CabFechaFuaPrimeraVez,CabEstado,CabNroEnvioAlSIS,CabCodigoPuntoDigitacion,CabCodigoUDR,FuaDisa,FuaLote,FuaNumero,CabOrigenDelRegistro,CabVersionAplicativo,CabIdentificacionPaquete) values (
@idTablaDx,@idCuentaAtencion,@Codigo,@DxNumero,@CantidadPrescrita,@CantidadEntregada,@PrecioUnitario,@CabDniUsuarioRegistra,@CabFechaFuaPrimeraVez,@CabEstado,@CabNroEnvioAlSIS,@CabCodigoPuntoDigitacion,@CabCodigoUDR,@FuaDisa,@FuaLote,@FuaNumero,@CabOrigenDelRegistro,@CabVersionAplicativo,@CabIdentificacionPaquete)
set @id = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@id,'SisFuaAtencionMED'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionMEDEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionMEDEliminar]
	@id [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionMED
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionMED'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionMEDEliminarIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionMEDEliminarIdCuentaAtencion]
	@idCuentaAtencion [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionMED
where idCuentaAtencion = @idCuentaAtencion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionMED'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionMEDModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionMEDModificar]
	@id [int],
	@idTablaDx [int],
	@idCuentaAtencion [int],
	@Codigo [varchar](5),
	@DxNumero [int],
	@CantidadPrescrita [int],
	@CantidadEntregada [int],
	@PrecioUnitario [money],
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaAtencionMED
set
idTablaDx = @idTablaDx,
idCuentaAtencion = @idCuentaAtencion,
Codigo = @Codigo,
DxNumero = @DxNumero,
CantidadPrescrita = @CantidadPrescrita,
CantidadEntregada = @CantidadEntregada,
PrecioUnitario = @PrecioUnitario,
CabDniUsuarioRegistra = @CabDniUsuarioRegistra,
CabFechaFuaPrimeraVez = @CabFechaFuaPrimeraVez,
CabEstado = @CabEstado,
CabNroEnvioAlSIS = @CabNroEnvioAlSIS,
CabCodigoPuntoDigitacion = @CabCodigoPuntoDigitacion,
CabCodigoUDR = @CabCodigoUDR,
FuaDisa = @FuaDisa,
FuaLote = @FuaLote,
FuaNumero = @FuaNumero,
CabOrigenDelRegistro = @CabOrigenDelRegistro,
CabVersionAplicativo = @CabVersionAplicativo,
CabIdentificacionPaquete = @CabIdentificacionPaquete
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@id,'SisFuaAtencionMED'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionMEDSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionMEDSeleccionarPorId]
	@id [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionMED
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionMEDxIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionMEDxIdCuentaAtencion]
	@idCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionMED where idCuentaAtencion=@idCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[sisFuaAtencionMEDxRangoDeCuentas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sisFuaAtencionMEDxRangoDeCuentas]
	@lnIdCuentaInicial [int],
	@lnIdCuentaFinal [int]
WITH EXECUTE AS CALLER
AS
select * from sisFuaAtencionMED where idCuentaAtencion>= @lnIdCuentaInicial  and idCuentaAtencion<= @lnIdCuentaFinal
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionModificar]
	@idCuentaAtencion [int],
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@EstablecimientoCodigoRenaes [varchar](10),
	@Reconsideracion [varchar](1),
	@ReconsideracionCodigoDisa [varchar](3),
	@ReconsideracionLote [varchar](2),
	@ReconsideracionNroFormato [varchar](8),
	@FuaComponente [varchar](1),
	@Situacion [varchar](1),
	@AfiliacionDisa [varchar](3),
	@AfiliacionTipoFormato [varchar](2),
	@AfiliacionNroFormato [varchar](10),
	@CodigoTipoFormato [varchar](2),
	@OrigenAseguradoInstitucion [varchar](1),
	@OrigenAseguradoCodigo [varchar](16),
	@Edad [int],
	@GrupoEtareo [varchar](2),
	@Genero [varchar](1),
	@FuaAtencion [int],
	@FuaCondicionMaterna [varchar](1),
	@FuaNrohistoria [varchar](20),
	@FuaConceptoPr [int],
	@FuaConceptoPrAutoriz [varchar](15),
	@FuaConceptoPrMonto [money],
	@FuaAtencionFecha [varchar](10),
	@FuaAtencionHora [varchar](5),
	@FuaReferidoOrigenCodigoRenaes [varchar](10),
	@FuaReferidoOrigenNreferencia [varchar](20),
	@FuaCodigoPrestacion [varchar](3),
	@FuaPersonalQatiende [int],
	@FuaAtencionLugar [varchar](1),
	@FuaDestino [varchar](1),
	@FuaHospitalizadoFingreso [varchar](10),
	@FuaHospitalizadoFalta [varchar](10),
	@FuaReferidoDestinoCodigoRenaes [varchar](10),
	@FuaReferidoDestinoNreferencia [varchar](20),
	@FuaMedicoDNI [varchar](9),
	@FuaMedico [varchar](120),
	@FuaMedicoTipo [varchar](2),
	@AfiliacionNroIntegrante [varchar](2),
	@Codigo [varchar](2),
	@idSiasis [varchar](10),
	@FuaObservaciones [varchar](200),
	@CabDniUsuarioRegistra [varchar](10),
	@UltimaFechaAddMod [varchar](10),
	@CabEstado [varchar](1),
	@FuaFechaParto [varchar](10),
	@EstablecimientoDistrito [varchar](6),
	@Anio [varchar](10),
	@Mes [varchar](10),
	@CostoTotal [money],
	@Apaterno [varchar](40),
	@Amaterno [varchar](40),
	@Pnombre [varchar](35),
	@Onombre [varchar](35),
	@fnacimiento [varchar](10),
	@Autogenerado [varchar](20),
	@DocumentoTipo [varchar](1),
	@DocumentoNumero [varchar](10),
	@EstablecimientoCategoria [varchar](2),
	@CostoServicio [money],
	@CostoMedicamento [money],
	@CostoProcedimiento [money],
	@CostoInsumo [money],
	@MedicoDocumentoTipo [varchar](2),
	@ate_grupoRiesgo [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@CabNroEnvioAlSIS [varchar](2),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdentificacionArfsis [int],
	@CabFechaFuaPrimeraVez [varchar](10),
	@PeriodoOrigen [varchar](6),
	@FuacolegioCodigo [varchar](20),
	@FuacolegioNivel [varchar](20),
	@FuacolegioGrado [varchar](1),
	@FuacolegioSeccion [varchar](5),
	@FuacolegioTurno [varchar](10),
	@Fuaetnia [varchar](2),
	@FuafechaFallecimiento [datetime],
	@FuaUPS [varchar](6),
	@FuaCodAutorizacion [varchar](50),
	@FuaFechaCorteAdm [datetime],
	@FuaVersionFormato [varchar](2),
	@FuaTipoAnexo2015 [int],
	@FuaCodOferFlexible [varchar](20),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaAtencion
set
FuaDisa = @FuaDisa,
FuaLote = @FuaLote,
FuaNumero = @FuaNumero,
EstablecimientoCodigoRenaes = @EstablecimientoCodigoRenaes,
Reconsideracion = @Reconsideracion,
ReconsideracionCodigoDisa = @ReconsideracionCodigoDisa,
ReconsideracionLote = @ReconsideracionLote,
ReconsideracionNroFormato = @ReconsideracionNroFormato,
FuaComponente = @FuaComponente,
Situacion = @Situacion,
AfiliacionDisa = @AfiliacionDisa,
AfiliacionTipoFormato = @AfiliacionTipoFormato,
AfiliacionNroFormato = @AfiliacionNroFormato,
CodigoTipoFormato = @CodigoTipoFormato,
OrigenAseguradoInstitucion = @OrigenAseguradoInstitucion,
OrigenAseguradoCodigo = @OrigenAseguradoCodigo,
Edad = @Edad,
GrupoEtareo = @GrupoEtareo,
Genero = @Genero,
FuaAtencion = @FuaAtencion,
FuaCondicionMaterna = @FuaCondicionMaterna,
FuaNrohistoria = @FuaNrohistoria,
FuaConceptoPr = @FuaConceptoPr,
FuaConceptoPrAutoriz = @FuaConceptoPrAutoriz,
FuaConceptoPrMonto = @FuaConceptoPrMonto,
FuaAtencionFecha = @FuaAtencionFecha,
FuaAtencionHora = @FuaAtencionHora,
FuaReferidoOrigenCodigoRenaes = @FuaReferidoOrigenCodigoRenaes,
FuaReferidoOrigenNreferencia = @FuaReferidoOrigenNreferencia,
FuaCodigoPrestacion = @FuaCodigoPrestacion,
FuaPersonalQatiende = @FuaPersonalQatiende,
FuaAtencionLugar = @FuaAtencionLugar,
FuaDestino = @FuaDestino,
FuaHospitalizadoFingreso = @FuaHospitalizadoFingreso,
FuaHospitalizadoFalta = @FuaHospitalizadoFalta,
FuaReferidoDestinoCodigoRenaes = @FuaReferidoDestinoCodigoRenaes,
FuaReferidoDestinoNreferencia = @FuaReferidoDestinoNreferencia,
FuaMedicoDNI = @FuaMedicoDNI,
FuaMedico = @FuaMedico,
FuaMedicoTipo = @FuaMedicoTipo,
AfiliacionNroIntegrante = @AfiliacionNroIntegrante,
Codigo = @Codigo,
idSiasis = @idSiasis,
FuaObservaciones = @FuaObservaciones,
CabDniUsuarioRegistra = @CabDniUsuarioRegistra,
UltimaFechaAddMod = @UltimaFechaAddMod,
CabEstado = @CabEstado,
FuaFechaParto = @FuaFechaParto,
EstablecimientoDistrito = @EstablecimientoDistrito,
Anio = @Anio,
Mes = @Mes,
CostoTotal = @CostoTotal,
Apaterno = @Apaterno,
Amaterno = @Amaterno,
Pnombre = @Pnombre,
Onombre = @Onombre,
fnacimiento = @fnacimiento,
Autogenerado = @Autogenerado,
DocumentoTipo = @DocumentoTipo,
DocumentoNumero = @DocumentoNumero,
EstablecimientoCategoria = @EstablecimientoCategoria,
CostoServicio = @CostoServicio,
CostoMedicamento = @CostoMedicamento,
CostoProcedimiento = @CostoProcedimiento,
CostoInsumo = @CostoInsumo,
MedicoDocumentoTipo = @MedicoDocumentoTipo,
ate_grupoRiesgo = @ate_grupoRiesgo,
CabCodigoPuntoDigitacion = @CabCodigoPuntoDigitacion,
CabCodigoUDR = @CabCodigoUDR,
CabNroEnvioAlSIS = @CabNroEnvioAlSIS,
CabOrigenDelRegistro = @CabOrigenDelRegistro,
CabVersionAplicativo = @CabVersionAplicativo,
CabIdentificacionPaquete = @CabIdentificacionPaquete,
IdentificacionArfsis = @IdentificacionArfsis,
CabFechaFuaPrimeraVez = @CabFechaFuaPrimeraVez,
PeriodoOrigen = @PeriodoOrigen,
FuacolegioCodigo = @FuacolegioCodigo,
FuacolegioNivel=@FuacolegioNivel,
FuacolegioGrado = @FuacolegioGrado,
FuacolegioSeccion = @FuacolegioSeccion,
FuacolegioTurno = @FuacolegioTurno,
Fuaetnia = @Fuaetnia,
FuafechaFallecimiento = @FuafechaFallecimiento,
FuaUPS = @FuaUPS,
FuaCodAutorizacion = @FuaCodAutorizacion,
FuaFechaCorteAdm = @FuaFechaCorteAdm,
FuaVersionFormato = @FuaVersionFormato,
FuaTipoAnexo2015 = @FuaTipoAnexo2015,
FuaCodOferFlexible=@FuaCodOferFlexible
where idCuentaAtencion = @idCuentaAtencion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@idCuentaAtencion,'SisFuaAtencion'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionPRO_limpiaCantidadEjecutada]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionPRO_limpiaCantidadEjecutada]
	@IdCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
update SisFuaAtencionPRO set CantidadEjecutada = 0  where idCuentaAtencion=@IdCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionPROAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionPROAgregar]
	@id [int] OUTPUT,
	@idTablaDx [int],
	@idCuentaAtencion [int],
	@Codigo [varchar](15),
	@DxNumero [int],
	@CantidadPrescrita [int],
	@CantidadEjecutada [int],
	@PrecioUnitario [money],
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@Resultado [varchar](15),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaAtencionPRO (
idTablaDx,idCuentaAtencion,Codigo,DxNumero,CantidadPrescrita,CantidadEjecutada,PrecioUnitario,CabDniUsuarioRegistra,CabFechaFuaPrimeraVez,CabEstado,Resultado,CabNroEnvioAlSIS,CabCodigoPuntoDigitacion,CabCodigoUDR,FuaDisa,FuaLote,FuaNumero,CabOrigenDelRegistro,CabVersionAplicativo,CabIdentificacionPaquete) values (
@idTablaDx,@idCuentaAtencion,@Codigo,@DxNumero,@CantidadPrescrita,@CantidadEjecutada,@PrecioUnitario,@CabDniUsuarioRegistra,@CabFechaFuaPrimeraVez,@CabEstado,@Resultado,@CabNroEnvioAlSIS,@CabCodigoPuntoDigitacion,@CabCodigoUDR,@FuaDisa,@FuaLote,@FuaNumero,@CabOrigenDelRegistro,@CabVersionAplicativo,@CabIdentificacionPaquete)
set @id = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@id,'SisFuaAtencionPRO'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionPROEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionPROEliminar]
	@id [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionPRO
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionPRO'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionPROEliminarIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionPROEliminarIdCuentaAtencion]
	@IdCuentaAtencion [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionPRO
where IdCuentaAtencion = @IdCuentaAtencion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionPRO'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionPROModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionPROModificar]
	@id [int],
	@idTablaDx [int],
	@idCuentaAtencion [int],
	@Codigo [varchar](15),
	@DxNumero [int],
	@CantidadPrescrita [int],
	@CantidadEjecutada [int],
	@PrecioUnitario [money],
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@Resultado [varchar](15),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaAtencionPRO
set
idTablaDx = @idTablaDx,
idCuentaAtencion = @idCuentaAtencion,
Codigo = @Codigo,
DxNumero = @DxNumero,
CantidadPrescrita = @CantidadPrescrita,
CantidadEjecutada = @CantidadEjecutada,
PrecioUnitario = @PrecioUnitario,
CabDniUsuarioRegistra = @CabDniUsuarioRegistra,
CabFechaFuaPrimeraVez = @CabFechaFuaPrimeraVez,
CabEstado = @CabEstado,
Resultado = @Resultado,
CabNroEnvioAlSIS = @CabNroEnvioAlSIS,
CabCodigoPuntoDigitacion = @CabCodigoPuntoDigitacion,
CabCodigoUDR = @CabCodigoUDR,
FuaDisa = @FuaDisa,
FuaLote = @FuaLote,
FuaNumero = @FuaNumero,
CabOrigenDelRegistro = @CabOrigenDelRegistro,
CabVersionAplicativo = @CabVersionAplicativo,
CabIdentificacionPaquete = @CabIdentificacionPaquete
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@id,'SisFuaAtencionPRO'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionPROSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionPROSeleccionarPorId]
	@id [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionPRO
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionPROxIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionPROxIdCuentaAtencion]
	@idCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionPRO where idCuentaAtencion=@idCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[sisFuaAtencionPROxRangoDeCuentas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sisFuaAtencionPROxRangoDeCuentas]
	@lnIdCuentaInicial [int],
	@lnIdCuentaFinal [int]
WITH EXECUTE AS CALLER
AS
select * from sisFuaAtencionPRO where idCuentaAtencion>= @lnIdCuentaInicial  and idCuentaAtencion<= @lnIdCuentaFinal
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionSeleccionarPorId]
	@idCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
select * from SIGH_EXTERNA.dbo.SisFuaAtencion
where SIGH_EXTERNA.dbo.SisFuaAtencion.idCuentaAtencion = @idCuentaAtencion
update SIGH_EXTERNA.dbo.SisFuaAtencion set SIGH_EXTERNA.dbo.SisFuaAtencion.FuaAtencionHora = cast(sigh.dbo.Atenciones.HoraIngreso as varchar(5))
from  sigh.dbo.Atenciones
where SIGH_EXTERNA.dbo.SisFuaAtencion.idCuentaAtencion =  @idCuentaAtencion and sigh.dbo.Atenciones.IdCuentaAtencion= @idCuentaAtencion
select * from SIGH_EXTERNA.dbo.SisFuaAtencion
where SIGH_EXTERNA.dbo.SisFuaAtencion.idCuentaAtencion = @idCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionSMIAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionSMIAgregar]
	@id [int] OUTPUT,
	@idCuentaAtencion [int],
	@IntervencionesPreventivas [varchar](3),
	@Valor [varchar](8),
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaAtencionSMI (
idCuentaAtencion,IntervencionesPreventivas,Valor,CabDniUsuarioRegistra,CabFechaFuaPrimeraVez,CabEstado,CabNroEnvioAlSIS,CabCodigoPuntoDigitacion,CabCodigoUDR,FuaDisa,FuaLote,FuaNumero,CabOrigenDelRegistro,CabVersionAplicativo,CabIdentificacionPaquete) values (
@idCuentaAtencion,@IntervencionesPreventivas,@Valor,@CabDniUsuarioRegistra,@CabFechaFuaPrimeraVez,@CabEstado,@CabNroEnvioAlSIS,@CabCodigoPuntoDigitacion,@CabCodigoUDR,@FuaDisa,@FuaLote,@FuaNumero,@CabOrigenDelRegistro,@CabVersionAplicativo,@CabIdentificacionPaquete)
set @id = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@id,'SisFuaAtencionSMI'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionSMIEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionSMIEliminar]
	@id [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionSMI
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionSMI'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionSMIEliminarIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionSMIEliminarIdCuentaAtencion]
	@idCuentaAtencion [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaAtencionSMI
where idCuentaAtencion = @idCuentaAtencion
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@id,'SisFuaAtencionSMI'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionSMIModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionSMIModificar]
	@id [int],
	@idCuentaAtencion [int],
	@IntervencionesPreventivas [varchar](3),
	@Valor [varchar](8),
	@CabDniUsuarioRegistra [varchar](10),
	@CabFechaFuaPrimeraVez [varchar](10),
	@CabEstado [char](1),
	@CabNroEnvioAlSIS [varchar](2),
	@CabCodigoPuntoDigitacion [int],
	@CabCodigoUDR [varchar](3),
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumero [varchar](16),
	@CabOrigenDelRegistro [varchar](9),
	@CabVersionAplicativo [varchar](9),
	@CabIdentificacionPaquete [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaAtencionSMI
set
idCuentaAtencion = @idCuentaAtencion,
IntervencionesPreventivas = @IntervencionesPreventivas,
Valor = @Valor,
CabDniUsuarioRegistra = @CabDniUsuarioRegistra,
CabFechaFuaPrimeraVez = @CabFechaFuaPrimeraVez,
CabEstado = @CabEstado,
CabNroEnvioAlSIS = @CabNroEnvioAlSIS,
CabCodigoPuntoDigitacion = @CabCodigoPuntoDigitacion,
CabCodigoUDR = @CabCodigoUDR,
FuaDisa = @FuaDisa,
FuaLote = @FuaLote,
FuaNumero = @FuaNumero,
CabOrigenDelRegistro = @CabOrigenDelRegistro,
CabVersionAplicativo = @CabVersionAplicativo,
CabIdentificacionPaquete = @CabIdentificacionPaquete
where id = @id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@id,'SisFuaAtencionSMI'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionSMISeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionSMISeleccionarPorId]
	@id [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionSMI
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionSMIxIdCuentaAtencion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionSMIxIdCuentaAtencion]
	@idCuentaAtencion [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencionSMI where idCuentaAtencion=@idCuentaAtencion
GO
/****** Object:  StoredProcedure [dbo].[sisFuaAtencionSMIxRangoDeCuentas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sisFuaAtencionSMIxRangoDeCuentas]
	@lnIdCuentaInicial [int],
	@lnIdCuentaFinal [int]
WITH EXECUTE AS CALLER
AS
select * from sisFuaAtencionSMI where idCuentaAtencion>= @lnIdCuentaInicial  and idCuentaAtencion<= @lnIdCuentaFinal
GO
/****** Object:  StoredProcedure [dbo].[sisFuaAtencionUltimoCorrelativo]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sisFuaAtencionUltimoCorrelativo]
WITH EXECUTE AS CALLER
AS
select  top 1 fuanumero from sisFuaAtencion where FuaDisa=(select top 1 SisFua.fuadisa from SisFua ) and
                            FuaLote=(select top 1 SisFua.FuaLote  from SisFua )   order by fuanumero desc
GO
/****** Object:  StoredProcedure [dbo].[sisFuaAtencionUltimoCorrelativoAutomatico]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sisFuaAtencionUltimoCorrelativoAutomatico]
WITH EXECUTE AS CALLER
AS
select  top 1 fuanumero from sisFuaAtencion where len(fuaNumero)=16 order by fuanumero desc
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionXcuentaHistoriaPrestacion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionXcuentaHistoriaPrestacion]
	@IdCuentaAtencion [int],
	@FuaNroHistoria [varchar](20),
	@FuaCodigoPrestacion [varchar](3)
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencion where cabestado='0' and IdCuentaAtencion<@IdCuentaAtencion
              and FuaNroHistoria=@FuaNroHistoria and FuaCodigoPrestacion=@FuaCodigoPrestacion
GO
/****** Object:  StoredProcedure [dbo].[SisFuaAtencionXnroAfiliacion]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaAtencionXnroAfiliacion]
	@Disa [varchar](3),
	@lote [varchar](2),
	@numero [varchar](16)
WITH EXECUTE AS CALLER
AS
select * from sisFuaAtencion where FuaDisa=@Disa  and FuaLote=@Lote and FuaNumero=@Numero
GO
/****** Object:  StoredProcedure [dbo].[sisFuaAtencionXrangoDeCuentas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sisFuaAtencionXrangoDeCuentas]
	@lnIdCuentaInicial [int],
	@lnIdCuentaFinal [int]
WITH EXECUTE AS CALLER
AS
select * from sisFuaAtencion where idCuentaAtencion>= @lnIdCuentaInicial  and idCuentaAtencion<= @lnIdCuentaFinal
GO
/****** Object:  StoredProcedure [dbo].[SisFuaColegiosYaEstaEnUso]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaColegiosYaEstaEnUso]
	@colegioCodigo [varchar](20)
WITH EXECUTE AS CALLER
AS
select * from SisFuaAtencion
where FuacolegioCodigo=@colegioCodigo
GO
/****** Object:  StoredProcedure [dbo].[SisFuaEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaEliminar]
	@FuaDisa [varchar](3),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFua
where FuaDisa = @FuaDisa
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@FuaDisa,'SisFua'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaEstadosTramaAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaEstadosTramaAgregar]
	@Id [int] OUTPUT,
	@Tabla [varchar](20),
	@Campo [varchar](50),
	@Estado [bit],
	@CampoCondicion [varchar](50),
	@Valor [varchar](20),
	@Obligatorio [varchar](15),
	@Formato [varchar](50),
	@Observaciones [varchar](60),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaEstadosTrama (
Tabla,Campo,Estado,CampoCondicion,Valor,Obligatorio,Formato,Observaciones) values (
@Tabla,@Campo,@Estado,@CampoCondicion,@Valor,@Obligatorio,@Formato,@Observaciones)
set @Id = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@Id,'SisFuaEstadosTrama'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaEstadosTramaEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaEstadosTramaEliminar]
	@Id [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaEstadosTrama
where Id = @Id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@Id,'SisFuaEstadosTrama'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaEstadosTramaModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaEstadosTramaModificar]
	@Id [int],
	@Tabla [varchar](20),
	@Campo [varchar](50),
	@Estado [bit],
	@CampoCondicion [varchar](50),
	@Valor [varchar](20),
	@Obligatorio [varchar](15),
	@Formato [varchar](50),
	@Observaciones [varchar](60),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaEstadosTrama
set
Tabla = @Tabla,
Campo = @Campo,
Estado = @Estado,
CampoCondicion = @CampoCondicion,
Valor = @Valor,
Obligatorio = @Obligatorio,
Formato = @Formato,
Observaciones = @Observaciones
where Id = @Id
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@Id,'SisFuaEstadosTrama'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaEstadosTramaSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaEstadosTramaSeleccionarPorId]
	@Id [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaEstadosTrama
where Id = @Id
GO
/****** Object:  StoredProcedure [dbo].[SisFuaEstadosTramaSeleccionarPorTabla]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaEstadosTramaSeleccionarPorTabla]
	@Tabla [varchar](20)
WITH EXECUTE AS CALLER
AS
select * from SisFuaEstadosTrama
where tabla = @Tabla and orden <> 0
order by orden asc
GO
/****** Object:  StoredProcedure [dbo].[SisFuaModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaModificar]
	@FuaDisa [varchar](3),
	@FuaLote [varchar](2),
	@FuaNumeroInicial [varchar](16),
	@FuaNumeroFinal [varchar](16),
	@FuaUltimoGenerado [varchar](16),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFua
set
FuaLote = @FuaLote,
FuaNumeroInicial = @FuaNumeroInicial,
FuaNumeroFinal = @FuaNumeroFinal,
FuaUltimoGenerado = @FuaUltimoGenerado,
FuaDisa = @FuaDisa
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@FuaDisa,'SisFua'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaResumenAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaResumenAgregar]
	@idResumen [int] OUTPUT,
	@Anio [varchar](10),
	@Mes [varchar](10),
	@NroEnvio [varchar](2),
	@NomPaquete [varchar](18),
	@VersionGTI [varchar](10),
	@CantFilATE [int],
	@CantFilSMI [int],
	@CantFilDIA [int],
	@CantFilMED [int],
	@CantFilINS [int],
	@CantFilPRO [int],
	@CantFilUSU [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaResumen (
Anio,Mes,NroEnvio,NomPaquete,VersionGTI,CantFilATE,CantFilSMI,CantFilDIA,CantFilMED,CantFilINS,CantFilPRO,CantFilUSU) values (
@Anio,@Mes,@NroEnvio,@NomPaquete,@VersionGTI,@CantFilATE,@CantFilSMI,@CantFilDIA,@CantFilMED,@CantFilINS,@CantFilPRO,@CantFilUSU)
set @idResumen = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@idResumen,'SisFuaResumen'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaResumenEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaResumenEliminar]
	@idResumen [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaResumen
where idResumen = @idResumen
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@idResumen,'SisFuaResumen'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaResumenModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaResumenModificar]
	@idResumen [int],
	@Anio [varchar](10),
	@Mes [varchar](10),
	@NroEnvio [varchar](2),
	@NomPaquete [varchar](18),
	@VersionGTI [varchar](10),
	@CantFilATE [int],
	@CantFilSMI [int],
	@CantFilDIA [int],
	@CantFilMED [int],
	@CantFilINS [int],
	@CantFilPRO [int],
	@CantFilUSU [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaResumen
set
Anio = @Anio,
Mes = @Mes,
NroEnvio = @NroEnvio,
NomPaquete = @NomPaquete,
VersionGTI = @VersionGTI,
CantFilATE = @CantFilATE,
CantFilSMI = @CantFilSMI,
CantFilDIA = @CantFilDIA,
CantFilMED = @CantFilMED,
CantFilINS = @CantFilINS,
CantFilPRO = @CantFilPRO,
CantFilUSU = @CantFilUSU
where idResumen = @idResumen
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@idResumen,'SisFuaResumen'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaResumenSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaResumenSeleccionarPorId]
	@idResumen [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaResumen
where idResumen = @idResumen
GO
/****** Object:  StoredProcedure [dbo].[SisFuaSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaSeleccionarPorId]
	@FuaDisa [varchar](3)
WITH EXECUTE AS CALLER
AS
select * from SisFua
where FuaDisa = @FuaDisa
GO
/****** Object:  StoredProcedure [dbo].[SisFuaSeleccionarTodos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaSeleccionarTodos]
WITH EXECUTE AS CALLER
AS
select * from SisFua
GO
/****** Object:  StoredProcedure [dbo].[SisFuaUsuarioAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[SisFuaUsuarioAgregar]
	@idUsuario [int] OUTPUT,
	@DNI [varchar](8),
	@TipoDoc [varchar](2),
	@ApellidoPat [varchar](20),
	@ApellidoMat [varchar](20),
	@PrimerNombre [varchar](20),
	@SegundoNombre [varchar](20),
	@NroEnvio [int],
	@Periodo [varchar](4),
	@Mes [varchar](2),
	@CodigoEstablecimiento [varchar](10),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into SisFuaUsuario (
DNI,TipoDoc,ApellidoPat,ApellidoMat,PrimerNombre,SegundoNombre,NroEnvio,Periodo,Mes,CodigoEstablecimiento) values (
@DNI,@TipoDoc,@ApellidoPat,@ApellidoMat,@PrimerNombre,@SegundoNombre,@NroEnvio,@Periodo,@Mes,@CodigoEstablecimiento)
set @idUsuario = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@idUsuario,'SisFuaUsuario'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaUsuarioEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaUsuarioEliminar]
	@idUsuario [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from SisFuaUsuario
where idUsuario = @idUsuario
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@idUsuario,'SisFuaUsuario'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaUsuarioModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaUsuarioModificar]
	@idUsuario [int],
	@DNI [varchar](8),
	@TipoDoc [varchar](2),
	@ApellidoPat [varchar](20),
	@ApellidoMat [varchar](20),
	@PrimerNombre [varchar](20),
	@SegundoNombre [varchar](20),
	@NroEnvio [int],
	@Periodo [varchar](4),
	@Mes [varchar](2),
	@CodigoEstablecimiento [varchar](10),
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update SisFuaUsuario
set
DNI = @DNI,
TipoDoc = @TipoDoc,
ApellidoPat = @ApellidoPat,
ApellidoMat = @ApellidoMat,
PrimerNombre = @PrimerNombre,
SegundoNombre = @SegundoNombre,
NroEnvio = @NroEnvio,
Periodo = @Periodo,
Mes = @Mes,
CodigoEstablecimiento = @CodigoEstablecimiento
where idUsuario = @idUsuario
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@idUsuario,'SisFuaUsuario'
GO
/****** Object:  StoredProcedure [dbo].[SisFuaUsuarioSeleccionarPorDNI]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaUsuarioSeleccionarPorDNI]
	@dni [varchar](10)
WITH EXECUTE AS CALLER
AS
select * from SisFuaUsuario
where DNI = @dni
GO
/****** Object:  StoredProcedure [dbo].[SisFuaUsuarioSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SisFuaUsuarioSeleccionarPorId]
	@idUsuario [int]
WITH EXECUTE AS CALLER
AS
select * from SisFuaUsuario
where idUsuario = @idUsuario
GO
/****** Object:  StoredProcedure [dbo].[TriajeExcepcionesAgregar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TriajeExcepcionesAgregar]
	@IdTriajeExcepciones [int] OUTPUT,
	@IdTriajeVariable [int],
	@EdadInicialEnDia [int],
	@EdadFinalEnDia [int],
	@EsDatoObligatorio [bit],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
insert into TriajeExcepciones (
IdTriajeVariable,EdadInicialEnDia,EdadFinalEnDia,EsDatoObligatorio) values (
@IdTriajeVariable,@EdadInicialEnDia,@EdadFinalEnDia,@EsDatoObligatorio)
set @IdTriajeExcepciones = @@identity
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'A',@IdTriajeExcepciones,'TriajeExcepciones'
GO
/****** Object:  StoredProcedure [dbo].[TriajeExcepcionesEliminar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TriajeExcepcionesEliminar]
	@IdTriajeExcepciones [int],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
delete from TriajeExcepciones
where IdTriajeExcepciones = @IdTriajeExcepciones
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'E',@IdTriajeExcepciones,'TriajeExcepciones'
GO
/****** Object:  StoredProcedure [dbo].[TriajeExcepcionesModificar]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TriajeExcepcionesModificar]
	@IdTriajeExcepciones [int],
	@IdTriajeVariable [int],
	@EdadInicialEnDia [int],
	@EdadFinalEnDia [int],
	@EsDatoObligatorio [bit],
	@IdUsuarioAuditoria [int]
WITH EXECUTE AS CALLER
AS
update TriajeExcepciones
set
IdTriajeVariable = @IdTriajeVariable,
EdadInicialEnDia = @EdadInicialEnDia,
EdadFinalEnDia = @EdadFinalEnDia,
EsDatoObligatorio = @EsDatoObligatorio
where IdTriajeExcepciones = @IdTriajeExcepciones
--exec AuditoriaAgregar @IdUsuarioAuditoria ,'M',@IdTriajeExcepciones,'TriajeExcepciones'
GO
/****** Object:  StoredProcedure [dbo].[TriajeExcepcionesSeleccionarPorId]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TriajeExcepcionesSeleccionarPorId]
	@IdTriajeExcepciones [int]
WITH EXECUTE AS CALLER
AS
select * from TriajeExcepciones
where IdTriajeExcepciones = @IdTriajeExcepciones
GO
/****** Object:  StoredProcedure [dbo].[TriajeExcepcionesSeleccionarTodos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TriajeExcepcionesSeleccionarTodos]
WITH EXECUTE AS CALLER
AS
SELECT IdTriajeExcepciones, IdTriajeVariable, EdadInicialEnDia,
		EdadFinalEnDia, EsDatoObligatorio
	FROM dbo.TriajeExcepciones AS TE;
GO
/****** Object:  StoredProcedure [dbo].[TriajeListarVariableAntropometricas]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TriajeListarVariableAntropometricas]
WITH EXECUTE AS CALLER
AS
SELECT IdTriajeVariable, TriajeVariable, EsAntropometrica,
		TieneLimiteMedicion, EdadDiaLimiteMinima, EdadDiaLimiteMaxima,
		EsDatoObligatorio, EsActivo
	FROM TriajeVariable
	WHERE EsActivo = 1 AND EsAntropometrica = 1
	ORDER BY IdTriajeVariable
GO
/****** Object:  StoredProcedure [dbo].[TriajeListarVariableTodos]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TriajeListarVariableTodos]
WITH EXECUTE AS CALLER
AS
SELECT IdTriajeVariable, TriajeVariable, EsAntropometrica,
		TieneLimiteMedicion, EdadDiaLimiteMinima, EdadDiaLimiteMaxima,
		EsDatoObligatorio, EsActivo
	FROM TriajeVariable
	WHERE EsActivo = 1
	ORDER BY IdTriajeVariable
GO
/****** Object:  StoredProcedure [dbo].[TriajeValorNormalesSegunParamtros]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TriajeValorNormalesSegunParamtros]
	@EdadInicialEnDia [int],
	@SexoPaciente [int],
	@FechaVigencia [datetime],
	@EstadoPaciente [int]
WITH EXECUTE AS CALLER
AS
DECLARE @EdadDias300Anios int;
	-- 109500 edad equivalente a 300 aÃ±os

	SET @EdadDias300Anios = 300 * 365;

	SELECT IdTriajeValorNormal, EdadInicialEnDia, EdadFinalEnDia,
		ValorNormalMinimo, ValorNormalMaximo, ValorCoherenteMinimo,
		ValorCoherenteMaximo, IdTriajeVariable, EstadoPaciente, SexoPaciente,
		FechaVigencia
	FROM dbo.TriajeValorNormal AS TVN
	WHERE (@EdadInicialEnDia  >= EdadInicialEnDia AND @EdadInicialEnDia <= ISNULL(EdadFinalEnDia, @EdadDias300Anios))
		AND (SexoPaciente = @SexoPaciente OR SexoPaciente = 0)
		AND (EstadoPaciente = @EstadoPaciente OR @EstadoPaciente = 0);
GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_ACTUALIZAR_AFILIACION_SIS]    Script Date: 12/01/2026 02:56:18 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_UPD_ACTUALIZAR_AFILIACION_SIS]
	@V_TIPO_DOCUMENTO [varchar](1),
	@V_NUMERO_DOCUMENTO [varchar](10),
	@V_AP_PATERNO [varchar](40),
	@V_AP_MATERNO [varchar](40),
	@V_PRIMER_NOMBRE [varchar](70),
	@V_OTRO_NOMBRE [varchar](70),
	@D_FECHA_AFILIACION [datetime],
	@V_CODIGO_ESTABLECIMIENTO_ADSCRIPCION [varchar](10),
	@V_FECHA_BAJA [varchar](10),
	@V_ESTADO [varchar](1),
	@V_CODIGO [varchar](2),
	@I_ID_SIASIS [int],
	@V_GENERO [varchar](1),
	@V_FECHA_NACIMIENTO [datetime],
	@V_ID_DISTRITO_DOMICILIO [varchar](6),
	@V_AFILIACION_DISA [varchar](3),
	@V_AFILIACION_TIPO_FORMATO [varchar](2),
	@V_AFILIACION_NRO_FORMATO [varchar](10),
	@V_MOTIVO_BAJA [varchar](70),
	@V_AFILIACION_NRO_INTEGRANTE [varchar](2),
	@V_DESCRIPCION_EESS [varchar](100),
	@V_DESCRIPCION_EESS_UBIGEO [varchar](100),
	@V_REGIMEN [varchar](4),
	@V_TIPO_SEGURO [varchar](4),
	@V_DESCRIPCION_TIPO_SEGURO [varchar](70),
	@V_CONTRATO [varchar](70),
	@V_ID_UBIGEO [varchar](10),
	@V_DIRRECION [varchar](100),
	@V_ID_PLAN [varchar](4),
	@V_ID_GRUPO_POBLACIONAL [varchar](4)
WITH EXECUTE AS CALLER
AS
--SELECT * FROM SisFiliaciones WHERE idSiasis = @I_ID_SIASIS and Codigo=@V_CODIGO
--SELECT @I_ID_SIASIS,@V_CODIGO,@V_AFILIACION_DISA,@V_AFILIACION_TIPO_FORMATO,
--						@V_AFILIACION_NRO_FORMATO,@V_AFILIACION_NRO_INTEGRANTE,@V_TIPO_DOCUMENTO,@V_CODIGO_ESTABLECIMIENTO_ADSCRIPCION,
--						@D_FECHA_AFILIACION,@V_AP_PATERNO,@V_AP_MATERNO,@V_PRIMER_NOMBRE,@V_OTRO_NOMBRE,
--						@V_GENERO,@V_FECHA_NACIMIENTO,@V_ID_DISTRITO_DOMICILIO,@V_ESTADO,@V_FECHA_BAJA,@V_NUMERO_DOCUMENTO,@V_MOTIVO_BAJA,NULL

IF NOT EXISTS( SELECT 1 FROM SisFiliaciones WHERE idSiasis = @I_ID_SIASIS and Codigo=@V_CODIGO )
BEGIN
	DECLARE @V_STATUS VARCHAR(40)
	EXEC dbo.SisFiliacionesAgregar @I_ID_SIASIS,@V_CODIGO,@V_AFILIACION_DISA,@V_AFILIACION_TIPO_FORMATO,
						@V_AFILIACION_NRO_FORMATO,@V_AFILIACION_NRO_INTEGRANTE,@V_TIPO_DOCUMENTO,@V_CODIGO_ESTABLECIMIENTO_ADSCRIPCION,
						@D_FECHA_AFILIACION,@V_AP_PATERNO,@V_AP_MATERNO,@V_PRIMER_NOMBRE,@V_OTRO_NOMBRE,
						@V_GENERO,@V_FECHA_NACIMIENTO,@V_ID_DISTRITO_DOMICILIO,@V_ESTADO,@V_FECHA_BAJA,@V_NUMERO_DOCUMENTO,@V_MOTIVO_BAJA,
						@V_DESCRIPCION_EESS,@V_DESCRIPCION_EESS_UBIGEO,@V_REGIMEN,@V_TIPO_SEGURO,@V_DESCRIPCION_TIPO_SEGURO,@V_CONTRATO,
						@V_ID_UBIGEO,@V_DIRRECION,@V_ID_PLAN,@V_ID_GRUPO_POBLACIONAL,0

	SET @V_STATUS = 'Se insertó la filiación correctamente'
	SELECT [V_STATUS] = @V_STATUS
	print @V_STATUS
END
ELSE
BEGIN
	exec SisFiliacionesModificar @I_ID_SIASIS,@V_CODIGO,@V_AFILIACION_DISA,@V_AFILIACION_TIPO_FORMATO,
						@V_AFILIACION_NRO_FORMATO,@V_AFILIACION_NRO_INTEGRANTE,@V_TIPO_DOCUMENTO,@V_CODIGO_ESTABLECIMIENTO_ADSCRIPCION,
						@D_FECHA_AFILIACION,@V_AP_PATERNO,@V_AP_MATERNO,@V_PRIMER_NOMBRE,@V_OTRO_NOMBRE,
						@V_GENERO,@V_FECHA_NACIMIENTO,@V_ID_DISTRITO_DOMICILIO,@V_ESTADO,@V_FECHA_BAJA,@V_NUMERO_DOCUMENTO,@V_MOTIVO_BAJA,
						@V_DESCRIPCION_EESS,@V_DESCRIPCION_EESS_UBIGEO,@V_REGIMEN,@V_TIPO_SEGURO,@V_DESCRIPCION_TIPO_SEGURO,@V_CONTRATO,
						@V_ID_UBIGEO,@V_DIRRECION,@V_ID_PLAN,@V_ID_GRUPO_POBLACIONAL,0

	SET @V_STATUS = 'Se actualizó la filiación correctamente'
	SELECT [V_STATUS] = @V_STATUS
	print @V_STATUS
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 Triaje, 2 CE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'atencionesCE', @level2type=N'COLUMN',@level2name=N'TriajeOrigen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 Despierto, 2 Dormido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TriajeValorNormal', @level2type=N'COLUMN',@level2name=N'EstadoPaciente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 Ambos, 1 Masculino, 2 Femenino' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TriajeValorNormal', @level2type=N'COLUMN',@level2name=N'SexoPaciente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alamacena los rangos de valores considerados normales para las variables medidas en triaje' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TriajeValorNormal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 para aquellas variables que son antropometricas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TriajeVariable', @level2type=N'COLUMN',@level2name=N'EsAntropometrica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica si una variable tiene limites de edad para ser registrada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TriajeVariable', @level2type=N'COLUMN',@level2name=N'TieneLimiteMedicion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica si se debe exigir el ingreso de dato en triaje' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TriajeVariable', @level2type=N'COLUMN',@level2name=N'EsDatoObligatorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Variables que se miden para el control de crecimiento' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TriajeVariable'
GO
