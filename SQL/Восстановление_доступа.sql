	USE AtomSkills2020
	GO
	DISABLE TRIGGER dbo.[userIU] ON dbo.users
	GO
	

	DECLARE @login nvarchar(50) = N'as@as.ru';
	DECLARE @salt nvarchar(50) = N'Самая соль!';
	DECLARE @passwd nvarchar(255) = N'2020';
	SET @passwd = LOWER(CONVERT(Varchar(255), HASHBYTES('SHA2_256', @salt+@passwd), 2));


	SET IDENTITY_INSERT dbo.users ON
	

	INSERT INTO dbo.users
	(
		id,
		[login],
		[password]
	)
	SELECT 1, @login, @passwd
	WHERE NOT EXISTS(SELECT u.id FROM dbo.users AS u WHERE u.id = 1)

	SET IDENTITY_INSERT dbo.users OFF

	
	UPDATE u SET [login] = @login,[password] = @passwd
	FROM users AS u
	WHERE u.id = 1
	GO

	ENABLE TRIGGER dbo.[userIU] ON dbo.users
	GO
