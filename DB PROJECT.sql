CREATE DATABASE BetterPlace
go
USE BetterPlace

CREATE TABLE [User]
(
	UserID int primary key,
	firstname nvarchar(30),
	lastname nvarchar(30),
	email nvarchar(30),
	[password] nvarchar(30),
	[Type] nvarchar(10) check ([Type] = 'Host' or [Type] = 'Guest')
)

CREATE TABLE Venue
(
	venueID int primary key,
	[name] nvarchar(30),
	hostID int foreign key references [USER](UserID),
	VenueType nvarchar(30),
	city nvarchar(30),
	[address] nvarchar(50),
	noOfGuests int,
	rentalPrice int,
	available nvarchar(10) check (available = 'Yes' or available = 'No'),
	noOfNights int,
	guestID int foreign key references [USER](UserID),
	avgRating float
)

CREATE TABLE Rating
(
	venueID int  foreign key references Venue(venueID),
	guestID int foreign key references [USER](UserID),
	rating int check (rating >=0 AND rating <=5),
	primary key (venueID, guestID)
)

go
create procedure LoginUser @em nvarchar(30), @pass nvarchar(30), @flag int output, @type nvarchar(10) output
As 
begin
if exists (Select * from [USER] where email = @em And [password] = @pass)
	begin
		set @flag = 1
		select @type = [Type] from [user] where email = @em
		print 'You have logged in successfully!'
	end
else
	begin
		set @flag = 0
		print 'Your Email Or Password Is Incorrect'
	end
end

go
create procedure SignUp 
@FN nvarchar(30), @LN nvarchar(30), @em nvarchar(30), @pass nvarchar(30), @type nvarchar(10)
As Begin 
IF EXISTS (SELECT * FROM [USER] WHERE @em = Email) 
begin
	print 'User already exists'
end
ELSE
begin
	declare @d int
	set @d = (select (MAX(UserId)) from [User])+1
	INSERT INTO [user] VALUES(@d, @FN , @LN, @em, @pass, @type)
end
end

go
create trigger SignUpTrigger 
on [user]
after insert
as begin 
print 'Registered successfully'
end

go
create procedure AddVenue_Proc
@name nvarchar(30), @hostemail nvarchar(30), @type nvarchar(30),
@city nvarchar(30), @address nvarchar(50), @noOfGuests int,
@price int, @noOfNights int
as begin
	declare @hid int, @vid int
	Select @hid = UserID from [User] where email = @hostemail
	set @vid = (select (MAX(VenueId))from Venue)+1
	insert into Venue values (@vid, @name, @hid, @type, @city, @address, 
	@noOfGuests, @price, 'Yes', @noOfNights, NULL, 0)
end

go
create trigger AddVenue_Trigger 
on Venue
after insert
as begin 
print 'Venue added successfully!'
end

go
create procedure EditVenueName
@newname varchar(30), @vid int
as begin
	Update venue set [name] = @newname where venueID = @vid
end

go
create procedure EditVenueType
@newtype varchar(30), @vid int
as begin
	Update venue set Venuetype = @newtype where venueID = @vid
end

go
create procedure EditVenueCity
@newcity varchar(30), @vid int
as begin
	Update venue set city = @newcity where venueID = @vid
end

go
create procedure EditVenueAddress
@newadd varchar(50), @vid int
as begin
	Update venue set [address] = @newadd where venueID = @vid
end

go
create procedure EditVenueGuestsNo
@newnoofg int, @vid int
as begin
	Update venue set noOfGuests = @newnoofg where venueID = @vid
end

go
create procedure EditVenuePrice
@newprice int, @vid int
as begin
	Update venue set rentalPrice = @newprice where venueID = @vid
end

go
create procedure EditVenueNightsNo
@newnoofn int, @vid int
as begin
	Update venue set noOfNights = @newnoofn where venueID = @vid
end

go
create trigger EditVenue_Trigger
on Venue
after update
as begin 
print 'Venue edited successfully!'
end

go
create procedure VenuePrice
@vid int, @price int output
as
begin
	select @price = rentalPrice * noOfNights from [Venue] where venueid = @vid
end

go
create procedure HomePageCity
@city nvarchar(30)
as begin
	Select * from Venue where city = @city
end

go
create procedure HomePageRating
@rating float
as begin
	Select * from Venue where avgRating >= @rating
end

go
create procedure HomePageGuests
@noOfGuests int
as begin
	Select * from Venue where noOfGuests = @noOfGuests
end

go
create procedure HomePageAll
as begin
	Select * from Venue
end

go
create procedure AddRating
@guestid int, @venueid int, @rating int
as begin
	insert into rating values (@venueid, @guestid, @rating)
end

go
create trigger Rating_Trigger
on Rating
after insert
as begin 
	declare @avgrating float, @vid int
	select @vid = Venueid from inserted
	select @avgrating = avg(rating) from Rating group by venueid having venueid = @vid
	update venue set avgRating = @avgrating where venueid = @vid
	print 'Rating added successfully!'
end

go
create procedure MyVenues
@hostid int
as
begin
	select * from venue where hostID = @hostid
end

go
create procedure VenueDetails
@vid int
as begin
	select * from venue where venueid = @vid
end

go
create procedure UserProfile
@userid int
as begin
	select * from [user] where userid = @userid
end

go
create procedure EditUserFN
@newFN nvarchar(30), @id int
as begin
	Update [user] set firstname = @newfn where userid = @id
end

go
create procedure EditUserLN
@newLN nvarchar(30), @id int
as begin
	Update [user] set lastname = @newln where userid = @id
end

go
create procedure EditUserPW
@newPW nvarchar(30), @id int
as begin
	Update [user] set [password] = @newpw where userid = @id
end

go
create trigger EditUser_Trigger
on [User]
after update
as begin 
	print 'User edited successfully!'
end