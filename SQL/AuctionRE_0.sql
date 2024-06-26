Create database  [AuctionSystem]
USE [AuctionSystem]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccID] [nvarchar](50) NOT NULL,
	[RoleID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL, 
	[Email] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[CCCD] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[PlaceOfReg] [nvarchar](50) NOT NULL,
	[DateOfReg] [nvarchar](50) NOT NULL,
	[BankName] [nvarchar](50) NOT NULL,
	[BankCode] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auction](
	[AuctionID] [nvarchar](50) NOT NULL,
	[RealEstateID] [nvarchar](50) NOT NULL,
	[AuctionName] [nvarchar](50) NOT NULL,
	[PriceNow] [bigint] NOT NULL,
	[Lamda] [bigint] NOT NULL,
	[TimeStart] [datetime] NOT NULL,
	[TimeEnd] [datetime] NOT NULL,
	[AccID] [nvarchar](50) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuctionDepositHistory]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuctionDepositHistory](
	[AuctionDepositHisID] [int] IDENTITY(1,1) NOT NULL,
	[WalletID] [int] NOT NULL,
	[AuctionID] [nvarchar](50) NOT NULL,
	[DateAndTime] [datetime] NOT NULL,
	[Quantity] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AuctionDepositHisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuctionHistory]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuctionHistory](
	[AuctionHisID] [int] IDENTITY(1,1) NOT NULL,
	[AuctionID] [nvarchar](50) NOT NULL,
	[Price] [bigint] NOT NULL,
	[Lamda] [bigint] NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AuctionHisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutionWinningHistory]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutionWinningHistory](
	[AuctionWinID] [nvarchar](50) NOT NULL,
	[AuctionHisID] [int] NOT NULL,
	[AccID] [nvarchar](50) NOT NULL,
	[FinalPrice] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AuctionWinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CatID] [nvarchar](50) NOT NULL,
	[CatName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [nvarchar](50) NOT NULL,
	[AccID] [nvarchar](50) NOT NULL,
	[AuctionID] [nvarchar](50) NOT NULL,
	[FeedbackDate] [datetime] NOT NULL,
	[Star] [int] NOT NULL,
	[Detail] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoogleAccount]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoogleAccount](
	[GgAccID] [nvarchar](50) NOT NULL,
	[RoleID] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[VerifiedEmail] [bit] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GivenName] [nvarchar](50) NOT NULL,
	[FamilyName] [nvarchar](50) NOT NULL,
	[Picture] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GgAccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageFolderID] [nvarchar](50) NOT NULL,
	[ImageLink1] [image] NOT NULL,
	[ImageLink2] [image] NOT NULL,
	[ImageLink3] [image] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageFolderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealEstate]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealEstate](
	[RealEstateID] [nvarchar](50) NOT NULL,
	[ImageFolderID] [nvarchar](50) NOT NULL,
	[AccID] [nvarchar](50) NOT NULL,
	[CatID] [nvarchar](50) NOT NULL,
	[CityID] [int] NOT NULL,
	[RealEstateName] [nvarchar](50) NOT NULL,
	[PriceFirst] [bigint] NOT NULL,
	[TimeUp] [datetime] NOT NULL,
	[TimeDown] [datetime] NOT NULL,
	[PriceLast] [bigint] NULL,
	[PricePaid] [bigint] NOT NULL,
	[StatusID] [int] NOT NULL,
	[Area] [int] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Detail] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RealEstateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rule]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rule](
	[ruleID] [int] NOT NULL,
	[ruleDetail] [nvarchar](4000) NOT NULL,
	[AccID] [nvarchar](50) NULL,
	sectionID int,
	foreign key (AccID) references Account(AccID),
	[modifyTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ruleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[TransID] [nvarchar](50) NOT NULL,
	[AuctionHisID] [nvarchar](50) NOT NULL,
	[Quantity] [bigint] NOT NULL,
	[TimePay] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wallet]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wallet](
	[WalletID] [int] IDENTITY(1,1) NOT NULL,
	[AccID] [nvarchar](50) NOT NULL,
	[AccountBalance] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WalletID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WalletTransactionHistory]    Script Date: 3/13/2024 2:00:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WalletTransactionHistory](
	[WalletTransID] [int] IDENTITY(1,1) NOT NULL,
	[WalletID] [int] NOT NULL,
	[Quantity] [bigint] NOT NULL,
	[DateAndTime] [datetime] NOT NULL,
	[Action] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WalletTransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auction] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
ALTER TABLE [dbo].[Auction]  WITH CHECK ADD FOREIGN KEY([RealEstateID])
REFERENCES [dbo].[RealEstate] ([RealEstateID])
GO
ALTER TABLE [dbo].[AuctionDepositHistory]  WITH CHECK ADD FOREIGN KEY([AuctionID])
REFERENCES [dbo].[Auction] ([AuctionID])
GO
ALTER TABLE [dbo].[AuctionDepositHistory]  WITH CHECK ADD FOREIGN KEY([WalletID])
REFERENCES [dbo].[Wallet] ([WalletID])
GO
ALTER TABLE [dbo].[AuctionHistory]  WITH CHECK ADD FOREIGN KEY([AuctionID])
REFERENCES [dbo].[Auction] ([AuctionID])
GO
ALTER TABLE [dbo].[AutionWinningHistory]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
ALTER TABLE [dbo].[AutionWinningHistory]  WITH CHECK ADD FOREIGN KEY([AuctionHisID])
REFERENCES [dbo].[AuctionHistory] ([AuctionHisID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([AuctionID])
REFERENCES [dbo].[Auction] ([AuctionID])
GO
ALTER TABLE [dbo].[GoogleAccount]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[RealEstate]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
ALTER TABLE [dbo].[RealEstate]  WITH CHECK ADD FOREIGN KEY([CatID])
REFERENCES [dbo].[Category] ([CatID])
GO
ALTER TABLE [dbo].[RealEstate]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[RealEstate]  WITH CHECK ADD FOREIGN KEY([ImageFolderID])
REFERENCES [dbo].[Image] ([ImageFolderID])
GO
ALTER TABLE [dbo].[RealEstate]  WITH CHECK ADD FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Rule]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
ALTER TABLE [dbo].[WalletTransactionHistory]  WITH CHECK ADD FOREIGN KEY([WalletID])
REFERENCES [dbo].[Wallet] ([WalletID])
GO
-- Table: WalletHistory
CREATE TABLE WalletHistory (
    OrderID NVARCHAR(255) PRIMARY KEY,
    WalletID INT,
    Price DECIMAL(18, 2),
    DateAndTime DATETIME,
    StatusID INT,
    FOREIGN KEY (WalletID) REFERENCES Wallet(WalletID),
    FOREIGN KEY (StatusID) REFERENCES WalletHistoryStatus(StatusID)
);



-- Table: AccountLoginDate
CREATE TABLE AccountLoginDate (
    loginDateId INT PRIMARY KEY IDENTITY,
    AccId NVARCHAR(50),
    loginDate DATETIME,
    FOREIGN KEY (AccID) REFERENCES Account(AccID) -- Replace YourAccountTableName with the actual name of your account table
);

-- Table: AccountRegisterDate
CREATE TABLE AccountRegisterDate (
    registerDateId INT PRIMARY KEY IDENTITY,
    AccId NVARCHAR(50),
    registerDate DATETIME,
    FOREIGN KEY (AccId) REFERENCES Account(AccID) -- Replace YourAccountTableName with the actual name of your account table
);

CREATE TABLE PurchaseRequests (
    [RequestID] INT PRIMARY KEY IDENTITY,
    [AccID] [nvarchar](50),
    [RealEstateID] [nvarchar](50) NOT NULL,
	[PricePaid] [bigint] NOT NULL,
    DateAndTime DATETIME NOT NULL,
	RequestStatusID INT NOT NULL,
	FOREIGN KEY (RealEstateID) REFERENCES RealEstate(RealEstateID),
    FOREIGN KEY (RequestStatusID) REFERENCES RequestStatus(RequestStatusID)
);

-- Table: WalletHistoryStatus
CREATE TABLE WalletHistoryStatus (
    StatusID INT PRIMARY KEY IDENTITY,
    StatusName NVARCHAR(50)
);
CREATE TABLE RequestStatus (
   RequestStatusID INT PRIMARY KEY,
   RequestStatusName NVARCHAR(50) NOT NULL
);

drop table PurchaseRequests
drop table RequestStatus

delete from PurchaseRequests

