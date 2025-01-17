/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     5/14/2019 9:02:42 PM                         */
/*==============================================================*/
--drop database QUANLIHOCSINH
create database QUANLIHOCSINH
go

use QUANLIHOCSINH
go
create FUNCTION AUTO_IDHOCSinh()
RETURNS VARchar(10)
AS
BEGIN
	DECLARE @ID VARchar(10)
	IF (SELECT COUNT(MaHs) FROM HOCSINH) = 0
		SET @ID = 'HS00000000'
	ELSE
	BEGIN
		SELECT @ID = MAX(RIGHT(Mahs, 8)) FROM dbo.HOCSINH
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'HS0000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 and @ID < 99 THEN 'HS000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99 and @ID < 999 THEN 'HS00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999 and @ID < 9999  THEN 'HS0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999 and @ID < 99999 THEN 'HS000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99999 and @ID < 999999 THEN 'HS00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999999 and @ID < 9999999 THEN 'HS0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999999 THEN 'HS' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	END
	RETURN @ID
END
GO

CREATE FUNCTION AUTO_IDPHuHuynh()
RETURNS VARchar(10)
AS
BEGIN
	DECLARE @ID VARchar(10)
	IF (SELECT COUNT(Maph) FROM PHUHUYNH) = 0
		SET @ID = 'PH00000000'
	ELSE
	BEGIN
		SELECT @ID = MAX(RIGHT(MAPH, 8)) FROM dbo.PHUHUYNH
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'PH0000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 and @ID < 99 THEN 'PH000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99 and @ID < 999 THEN 'PH00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999 and @ID < 9999  THEN 'PH0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999 and @ID < 99999 THEN 'PH000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99999 and @ID < 999999 THEN 'PH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999999 and @ID < 9999999 THEN 'PH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999999 THEN 'PH' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	END
	RETURN @ID
END
GO

CREATE FUNCTION AUTO_IDGiaoVien()
RETURNS VARchar(10)
AS
BEGIN
	DECLARE @ID VARchar(10)
	IF (SELECT COUNT(MaGV) FROM GIAOVIEN) = 0
		SET @ID = 'GV00000000'
	ELSE
	BEGIN
		SELECT @ID = MAX(RIGHT(magv, 8)) FROM dbo.GIAOVIEN
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'GV0000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 and @ID < 99 THEN 'GV000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99 and @ID < 999 THEN 'GV00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999 and @ID < 9999  THEN 'GV0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999 and @ID < 99999 THEN 'GV000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99999 and @ID < 999999 THEN 'GV00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999999 and @ID < 9999999 THEN 'GV0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999999 THEN 'GV' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	END
	RETURN @ID
END
GO

CREATE FUNCTION AUTO_IDLopHoc()
RETURNS VARchar(10)
AS
BEGIN
	DECLARE @ID VARchar(10)
	IF (SELECT COUNT(Malop) FROM Lop) = 0
		SET @ID = 'LH00000000'
	ELSE
	BEGIN
		SELECT @ID = MAX(RIGHT(MALOP, 8)) FROM dbo.LOP
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'LH0000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 and @ID < 99 THEN 'LH000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99 and @ID < 999 THEN 'LH00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999 and @ID < 9999  THEN 'LH0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999 and @ID < 99999 THEN 'LH000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99999 and @ID < 999999 THEN 'LH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999999 and @ID < 9999999 THEN 'LH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999999 THEN 'LH' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	END
	RETURN @ID
END
GO

CREATE FUNCTION AUTO_IDMONHOC()
RETURNS VARchar(10)
AS
BEGIN
	DECLARE @ID VARchar(10)
	IF (SELECT COUNT(MaMH) FROM MONHOC) = 0
		SET @ID = 'MH00000000'
	ELSE
	BEGIN
		SELECT @ID = MAX(RIGHT(mamh, 8)) FROM dbo.MONHOC
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'MH0000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 and @ID < 99 THEN 'MH000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99 and @ID < 999 THEN 'MH00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999 and @ID < 9999  THEN 'MH0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999 and @ID < 99999 THEN 'MH000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99999 and @ID < 999999 THEN 'MH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999999 and @ID < 9999999 THEN 'MH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999999 THEN 'MH' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	END
	RETURN @ID
END
GO

CREATE FUNCTION AUTO_IDLOAIKT()
RETURNS VARchar(10)
AS
BEGIN
	DECLARE @ID VARchar(10)
	IF (SELECT COUNT(MaLoaiKT) FROM KIEMTRA) = 0
		SET @ID = 'KT00000000'
	ELSE
	BEGIN
		SELECT @ID = MAX(RIGHT(maloaikt, 8)) FROM dbo.KIEMTRA
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'KT0000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 and @ID < 99 THEN 'KT000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99 and @ID < 999 THEN 'KT00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999 and @ID < 9999  THEN 'KT0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999 and @ID < 99999 THEN 'KT000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99999 and @ID < 999999 THEN 'KT00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999999 and @ID < 9999999 THEN 'KT0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999999 THEN 'KT' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	END
	RETURN @ID
END
GO

CREATE FUNCTION AUTO_IDLOAIHOCLUC()
RETURNS VARchar(10)
AS
BEGIN
	DECLARE @ID VARchar(10)
	IF (SELECT COUNT(MaLoaiHL) FROM HOCLUC) = 0
		SET @ID = 'KL00000000'
	ELSE
	BEGIN
		SELECT @ID = MAX(RIGHT(maloaihl, 8)) FROM dbo.HOCLUC
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'HL0000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 and @ID < 99 THEN 'HL000000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99 and @ID < 999 THEN 'HL00000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999 and @ID < 9999  THEN 'HL0000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999 and @ID < 99999 THEN 'HL000' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 99999 and @ID < 999999 THEN 'HL00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 999999 and @ID < 9999999 THEN 'HL0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9999999 THEN 'HL' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	END
	RETURN @ID
END
GO

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHUNHIEM') and o.name = 'FK_CHUNHIEM_CHUNHIEM_GIAOVIEN')
alter table CHUNHIEM
   drop constraint FK_CHUNHIEM_CHUNHIEM_GIAOVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHUNHIEM') and o.name = 'FK_CHUNHIEM_CHUNHIEM2_LOP')
alter table CHUNHIEM
   drop constraint FK_CHUNHIEM_CHUNHIEM2_LOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHUNHIEM') and o.name = 'FK_CHUNHIEM_CHUNHIEM3_HOCKY_NA')
alter table CHUNHIEM
   drop constraint FK_CHUNHIEM_CHUNHIEM3_HOCKY_NA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO') and o.name = 'FK_CO_CO_HOCSINH')
alter table CO
   drop constraint FK_CO_CO_HOCSINH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO') and o.name = 'FK_CO_CO2_PHUHUYNH')
alter table CO
   drop constraint FK_CO_CO2_PHUHUYNH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIANGDAY') and o.name = 'FK_GIANGDAY_ASSOCIATI_LOP')
alter table GIANGDAY
   drop constraint FK_GIANGDAY_ASSOCIATI_LOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIANGDAY') and o.name = 'FK_GIANGDAY_ASSOCIATI_HOCKY_NA')
alter table GIANGDAY
   drop constraint FK_GIANGDAY_ASSOCIATI_HOCKY_NA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIANGDAY') and o.name = 'FK_GIANGDAY_ASSOCIATI_GIAOVIEN')
alter table GIANGDAY
   drop constraint FK_GIANGDAY_ASSOCIATI_GIAOVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIANGDAY') and o.name = 'FK_GIANGDAY_ASSOCIATI_MONHOC')
alter table GIANGDAY
   drop constraint FK_GIANGDAY_ASSOCIATI_MONHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC_LOP')
alter table HOC
   drop constraint FK_HOC_HOC_LOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC2_HOCSINH')
alter table HOC
   drop constraint FK_HOC_HOC2_HOCSINH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOC') and o.name = 'FK_HOC_HOC3_HOCKY_NA')
alter table HOC
   drop constraint FK_HOC_HOC3_HOCKY_NA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KQ') and o.name = 'FK_KQ_KQ_HOCSINH')
alter table KQ
   drop constraint FK_KQ_KQ_HOCSINH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KQ') and o.name = 'FK_KQ_KQ2_HOCLUC')
alter table KQ
   drop constraint FK_KQ_KQ2_HOCLUC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KQ') and o.name = 'FK_KQ_KQ3_HANHKIEM')
alter table KQ
   drop constraint FK_KQ_KQ3_HANHKIEM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KQ') and o.name = 'FK_KQ_KQ4_HOCKY_NA')
alter table KQ
   drop constraint FK_KQ_KQ4_HOCKY_NA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KT') and o.name = 'FK_KT_KT_HOCSINH')
alter table KT
   drop constraint FK_KT_KT_HOCSINH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('KT') and o.name = 'FK_KT_KT2_GIANGDAY')
alter table KT
   drop constraint FK_KT_KT2_GIANGDAY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHUNHIEM')
            and   name  = 'CHUNHIEM3_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHUNHIEM.CHUNHIEM3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHUNHIEM')
            and   name  = 'CHUNHIEM2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHUNHIEM.CHUNHIEM2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHUNHIEM')
            and   name  = 'CHUNHIEM_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHUNHIEM.CHUNHIEM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUNHIEM')
            and   type = 'U')
   drop table CHUNHIEM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO')
            and   name  = 'CO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO.CO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO')
            and   name  = 'CO_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO.CO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CO')
            and   type = 'U')
   drop table CO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIANGDAY')
            and   name  = 'ASSOCIATION_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIANGDAY.ASSOCIATION_11_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIANGDAY')
            and   name  = 'ASSOCIATION_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIANGDAY.ASSOCIATION_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIANGDAY')
            and   name  = 'ASSOCIATION_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIANGDAY.ASSOCIATION_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIANGDAY')
            and   name  = 'ASSOCIATION_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIANGDAY.ASSOCIATION_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIANGDAY')
            and   type = 'U')
   drop table GIANGDAY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIAOVIEN')
            and   type = 'U')
   drop table GIAOVIEN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HANHKIEM')
            and   type = 'U')
   drop table HANHKIEM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOC')
            and   name  = 'HOC3_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOC.HOC3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOC')
            and   name  = 'HOC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOC.HOC2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOC')
            and   name  = 'HOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOC.HOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOC')
            and   type = 'U')
   drop table HOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOCKY_NAMHOC')
            and   type = 'U')
   drop table HOCKY_NAMHOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOCLUC')
            and   type = 'U')
   drop table HOCLUC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOCSINH')
            and   type = 'U')
   drop table HOCSINH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KQ')
            and   name  = 'KQ4_FK'
            and   indid > 0
            and   indid < 255)
   drop index KQ.KQ4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KQ')
            and   name  = 'KQ3_FK'
            and   indid > 0
            and   indid < 255)
   drop index KQ.KQ3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KQ')
            and   name  = 'KQ2_FK'
            and   indid > 0
            and   indid < 255)
   drop index KQ.KQ2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KQ')
            and   name  = 'KQ_FK'
            and   indid > 0
            and   indid < 255)
   drop index KQ.KQ_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KQ')
            and   type = 'U')
   drop table KQ
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KT')
            and   name  = 'KT2_FK'
            and   indid > 0
            and   indid < 255)
   drop index KT.KT2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('KT')
            and   name  = 'KT_FK'
            and   indid > 0
            and   indid < 255)
   drop index KT.KT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KT')
            and   type = 'U')
   drop table KT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOP')
            and   type = 'U')
   drop table LOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MONHOC')
            and   type = 'U')
   drop table MONHOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHUHUYNH')
            and   type = 'U')
   drop table PHUHUYNH
go

/*==============================================================*/
/* Table: CHUNHIEM                                              */
/*==============================================================*/
create table CHUNHIEM (
   MAGV                 char(10)             not null,
   MALOP                char(10)             not null,
   NAM                  int                  not null,
   HOCKY                int                  not null,
   constraint PK_CHUNHIEM primary key (MAGV, MALOP, NAM, HOCKY)
)
go

/*==============================================================*/
/* Index: CHUNHIEM_FK                                           */
/*==============================================================*/
create index CHUNHIEM_FK on CHUNHIEM (
MAGV ASC
)
go

/*==============================================================*/
/* Index: CHUNHIEM2_FK                                          */
/*==============================================================*/
create index CHUNHIEM2_FK on CHUNHIEM (
MALOP ASC
)
go

/*==============================================================*/
/* Index: CHUNHIEM3_FK                                          */
/*==============================================================*/
create index CHUNHIEM3_FK on CHUNHIEM (
NAM ASC,
HOCKY ASC
)
go

/*==============================================================*/
/* Table: CO                                                    */
/*==============================================================*/
create table CO (
   MAHS                 varchar(10)          not null,
   MAPH                 char(10)             not null,
   loai nvarchar(50),
   constraint PK_CO primary key (MAHS, MAPH)
)
go

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/
create index CO_FK on CO (
MAHS ASC
)
go

/*==============================================================*/
/* Index: CO2_FK                                                */
/*==============================================================*/
create index CO2_FK on CO (
MAPH ASC
)
go

/*==============================================================*/
/* Table: GIANGDAY                                              */
/*==============================================================*/
create table GIANGDAY (
   MAGV                 char(10)             not null,
   MAMH                 char(10)             not null,
   MALOP                char(10)             not null,
   NAM                  int                  not null,
   HOCKY                int                  not null,
   constraint PK_GIANGDAY primary key (MAGV, MAMH, MALOP, NAM, HOCKY)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_8_FK                                      */
/*==============================================================*/
create index ASSOCIATION_8_FK on GIANGDAY (
MAGV ASC
)
go

/*==============================================================*/
/* Index: ASSOCIATION_9_FK                                      */
/*==============================================================*/
create index ASSOCIATION_9_FK on GIANGDAY (
MAMH ASC
)
go

/*==============================================================*/
/* Index: ASSOCIATION_10_FK                                     */
/*==============================================================*/
create index ASSOCIATION_10_FK on GIANGDAY (
MALOP ASC
)
go

/*==============================================================*/
/* Index: ASSOCIATION_11_FK                                     */
/*==============================================================*/
create index ASSOCIATION_11_FK on GIANGDAY (
NAM ASC,
HOCKY ASC
)
go

/*==============================================================*/
/* Table: GIAOVIEN                                              */
/*==============================================================*/
create table GIAOVIEN (
   MAGV                 char(10)             not null,
   TENGV                nvarchar(50)          null,
   NGAYSINH             datetime             null,
   GIOITINH             nvarchar(50)          null,
   DIACHI               nvarchar(100)         null,
   constraint PK_GIAOVIEN primary key nonclustered (MAGV)
)
go

/*==============================================================*/
/* Table: HANHKIEM                                              */
/*==============================================================*/
create table HANHKIEM (
   MALOAIHK             varchar(20)          not null,
   TENHK                text                 null,
   constraint PK_HANHKIEM primary key nonclustered (MALOAIHK)
)
go

/*==============================================================*/
/* Table: HOC                                                   */
/*==============================================================*/
create table HOC (
   MALOP                char(10)             not null,
   MAHS                 varchar(10)          not null,
   NAM                  int                  not null,
   HOCKY                int                  not null,
   constraint PK_HOC primary key (MALOP, MAHS, NAM, HOCKY)
)
go

/*==============================================================*/
/* Index: HOC_FK                                                */
/*==============================================================*/
create index HOC_FK on HOC (
MALOP ASC
)
go

/*==============================================================*/
/* Index: HOC2_FK                                               */
/*==============================================================*/
create index HOC2_FK on HOC (
MAHS ASC
)
go

/*==============================================================*/
/* Index: HOC3_FK                                               */
/*==============================================================*/
create index HOC3_FK on HOC (
NAM ASC,
HOCKY ASC
)
go

/*==============================================================*/
/* Table: HOCKY_NAMHOC                                          */
/*==============================================================*/
create table HOCKY_NAMHOC (
   NAM                  int                  not null,
   HOCKY                int                  not null,
   constraint PK_HOCKY_NAMHOC primary key nonclustered (NAM, HOCKY)
)
go

/*==============================================================*/
/* Table: HOCLUC                                                */
/*==============================================================*/
create table HOCLUC (
   MALOAIHL             char(10)             not null,
   LOAIHOCLUC           nvarchar(50)          null,
   constraint PK_HOCLUC primary key nonclustered (MALOAIHL)
)
go

/*==============================================================*/
/* Table: HOCSINH                                               */
/*==============================================================*/
create table HOCSINH (
   MAHS                 varchar(10)          not null,
   TENHS                nvarchar(50)          null,
   GIOITINH             nvarchar(50)          null,
   NGAYSINH             datetime             null,
   DANTOC               nvarchar(50)          null,
   TONGIAO              nvarchar(50)          null,
   DIACHI               nvarchar(100)         null,
   constraint PK_HOCSINH primary key nonclustered (MAHS)
)
go

/*==============================================================*/
/* Table: KQ                                                    */
/*==============================================================*/
create table KQ (
   MAHS                 varchar(10)          not null,
   MALOAIHL             char(10)             not null,
   MALOAIHK             varchar(20)          not null,
   NAM                  int                  not null,
   HOCKY                int                  not null,
   DTB                  float(2)             null,
   constraint PK_KQ primary key (MAHS, MALOAIHL, MALOAIHK, NAM, HOCKY)
)
go

/*==============================================================*/
/* Index: KQ_FK                                                 */
/*==============================================================*/
create index KQ_FK on KQ (
MAHS ASC
)
go

/*==============================================================*/
/* Index: KQ2_FK                                                */
/*==============================================================*/
create index KQ2_FK on KQ (
MALOAIHL ASC
)
go

/*==============================================================*/
/* Index: KQ3_FK                                                */
/*==============================================================*/
create index KQ3_FK on KQ (
MALOAIHK ASC
)
go

/*==============================================================*/
/* Index: KQ4_FK                                                */
/*==============================================================*/
create index KQ4_FK on KQ (
NAM ASC,
HOCKY ASC
)
go

/*==============================================================*/
/* Table: KT                                                    */
/*==============================================================*/
create table KT (
   MAGV                 char(10)             not null,
   MAMH                 char(10)             not null,
   MALOP                char(10)             not null,
   NAM                  int                  not null,
   HOCKY                int                  not null,
   MAHS                 varchar(10)          not null,
   DIEM                 real                 null,
   LOAIKT               nvarchar(200)        not null,
   HESO                 real                 null,
   constraint PK_KT primary key (MAGV, MAMH, MALOP, NAM, HOCKY, MAHS, LOAIKT)
)
go

/*==============================================================*/
/* Index: KT_FK                                                 */
/*==============================================================*/
create index KT_FK on KT (
MAHS ASC
)
go

/*==============================================================*/
/* Index: KT2_FK                                                */
/*==============================================================*/
create index KT2_FK on KT (
MAGV ASC,
MAMH ASC,
MALOP ASC,
NAM ASC,
HOCKY ASC
)
go

/*==============================================================*/
/* Table: LOP                                                   */
/*==============================================================*/
create table LOP (
   MALOP                char(10)             not null,
   TENLOP               nvarchar(50)          null,
   constraint PK_LOP primary key nonclustered (MALOP)
)
go

/*==============================================================*/
/* Table: MONHOC                                                */
/*==============================================================*/
create table MONHOC (
   MAMH                 char(10)             not null,
   TENMH                nvarchar(200)          null,
   constraint PK_MONHOC primary key nonclustered (MAMH)
)
go

/*==============================================================*/
/* Table: PHUHUYNH                                              */
/*==============================================================*/
create table PHUHUYNH (
   MAPH                 char(10)             not null,
   TENPH                nvarchar(50)          null,
   SDT                  nvarchar(50)          null,
   DIACHI               nvarchar(100)         null,
   constraint PK_PHUHUYNH primary key nonclustered (MAPH)
)
go

alter table CHUNHIEM
   add constraint FK_CHUNHIEM_CHUNHIEM_GIAOVIEN foreign key (MAGV)
      references GIAOVIEN (MAGV)
go

alter table CHUNHIEM
   add constraint FK_CHUNHIEM_CHUNHIEM2_LOP foreign key (MALOP)
      references LOP (MALOP)
go

alter table CHUNHIEM
   add constraint FK_CHUNHIEM_CHUNHIEM3_HOCKY_NA foreign key (NAM, HOCKY)
      references HOCKY_NAMHOC (NAM, HOCKY)
go

alter table CO
   add constraint FK_CO_CO_HOCSINH foreign key (MAHS)
      references HOCSINH (MAHS)
go

alter table CO
   add constraint FK_CO_CO2_PHUHUYNH foreign key (MAPH)
      references PHUHUYNH (MAPH)
go

alter table GIANGDAY
   add constraint FK_GIANGDAY_ASSOCIATI_LOP foreign key (MALOP)
      references LOP (MALOP)
go

alter table GIANGDAY
   add constraint FK_GIANGDAY_ASSOCIATI_HOCKY_NA foreign key (NAM, HOCKY)
      references HOCKY_NAMHOC (NAM, HOCKY)
go

alter table GIANGDAY
   add constraint FK_GIANGDAY_ASSOCIATI_GIAOVIEN foreign key (MAGV)
      references GIAOVIEN (MAGV)
go

alter table GIANGDAY
   add constraint FK_GIANGDAY_ASSOCIATI_MONHOC foreign key (MAMH)
      references MONHOC (MAMH)
go

alter table HOC
   add constraint FK_HOC_HOC_LOP foreign key (MALOP)
      references LOP (MALOP)
go

alter table HOC
   add constraint FK_HOC_HOC2_HOCSINH foreign key (MAHS)
      references HOCSINH (MAHS)
go

alter table HOC
   add constraint FK_HOC_HOC3_HOCKY_NA foreign key (NAM, HOCKY)
      references HOCKY_NAMHOC (NAM, HOCKY)
go

alter table KQ
   add constraint FK_KQ_KQ_HOCSINH foreign key (MAHS)
      references HOCSINH (MAHS)
go

alter table KQ
   add constraint FK_KQ_KQ2_HOCLUC foreign key (MALOAIHL)
      references HOCLUC (MALOAIHL)
go

alter table KQ
   add constraint FK_KQ_KQ3_HANHKIEM foreign key (MALOAIHK)
      references HANHKIEM (MALOAIHK)
go

alter table KQ
   add constraint FK_KQ_KQ4_HOCKY_NA foreign key (NAM, HOCKY)
      references HOCKY_NAMHOC (NAM, HOCKY)
go

alter table KT
   add constraint FK_KT_KT_HOCSINH foreign key (MAHS)
      references HOCSINH (MAHS)
go

alter table KT
   add constraint FK_KT_KT2_GIANGDAY foreign key (MAGV, MAMH, MALOP, NAM, HOCKY)
      references GIANGDAY (MAGV, MAMH, MALOP, NAM, HOCKY)
go

---------------------------------------------------------------------
----------------------------TABLE ACCOUNT----------------------------
---------------------------------------------------------------------

create table ACCOUNT (
   USERNAME nvarchar(200) primary key default 'User',
   PASSWORD varchar(500) not null default 'user',
   DISPLAYNAME nvarchar(200) default N'User',
   TYPE nvarchar(200) not null default 'user',
   MAGV char(10) null,
)
go

alter table ACCOUNT
   add constraint FK_ACCOUNT_CO_TAI_KHOAN_GIAOVIEN foreign key (MAGV)
      references GIAOVIEN (MAGV)
go

INSERT INTO ACCOUNT (USERNAME, PASSWORD, DISPLAYNAME, TYPE) VALUES (N'Admin', '1234', N'Người quản lí', 'admin')
INSERT INTO ACCOUNT (USERNAME, PASSWORD, DISPLAYNAME, TYPE) VALUES (N'User', 'user', N'Người dùng', 'user')
GO
