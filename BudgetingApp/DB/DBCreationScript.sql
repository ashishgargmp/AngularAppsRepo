USE [master]
GO

/****** Object:  Database [Budget]    Script Date: 4/1/2019 10:50:07 PM ******/
CREATE DATABASE [Budget]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Budget', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Budget.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Budget_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Budget_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Budget] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Budget].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Budget] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Budget] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Budget] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Budget] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Budget] SET ARITHABORT OFF 
GO

ALTER DATABASE [Budget] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Budget] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Budget] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Budget] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Budget] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Budget] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Budget] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Budget] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Budget] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Budget] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Budget] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Budget] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Budget] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Budget] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Budget] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Budget] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Budget] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Budget] SET RECOVERY FULL 
GO

ALTER DATABASE [Budget] SET  MULTI_USER 
GO

ALTER DATABASE [Budget] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Budget] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Budget] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Budget] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Budget] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Budget] SET  READ_WRITE 
GO
