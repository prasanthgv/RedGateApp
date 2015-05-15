IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'dfcuser')
CREATE LOGIN [dfcuser] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [dfcuser] FOR LOGIN [dfcuser]
GO
DENY BACKUP DATABASE TO [dfcuser]
DENY BACKUP LOG TO [dfcuser]
