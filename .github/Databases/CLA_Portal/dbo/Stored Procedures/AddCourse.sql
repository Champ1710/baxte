-- ============================================
-- Author:      Chandana Priya
-- Create date: 2025-11-06
-- Description: Sample stored procedure for testing deployment
-- ============================================

IF OBJECT_ID('dbo.AddCourse', 'P') IS NOT NULL
    DROP PROCEDURE dbo.AddCourse;
GO
#
CREATE PROCEDURE dbo.AddCourse
    @CourseName NVARCHAR(100),
    @CreatedBy NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Courses (CourseName, CreatedBy, CreatedDate)
    VALUES (@CourseName, @CreatedBy, GETDATE());

    SELECT SCOPE_IDENTITY() AS NewCourseId;
END
GO
