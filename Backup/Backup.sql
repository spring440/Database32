
USE s17guest32;
GO
BACKUP DATABASE s17guest32
    TO DISK = '\s17guest32.Bak'
      WITH FORMAT,
        MEDIANAME = 'Z_SQLServerBackups',
        NAME = 'Full Backup of s17guest32';
GO