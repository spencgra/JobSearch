CREATE VIEW Jobs.v_JobDetails
AS
SELECT Jobs.JobDetails.JobID, Jobs.JobSiteDetails.SiteName AS [Job Site], Employer.EmployerDatails.EmployerName AS [Employer Name], Jobs.JobDetails.JobTitle, Jobs.JobDetails.JobSiteLink, Jobs.StatusLookup.Status AS LastStatus, Jobs.v_LastHistTransaction.StatusDate, 
             CASE WHEN AddedToUC = 1 THEN 'Yes' ELSE 'No' END AS InUC, Jobs.JobDetails.ClosingDate, FORMAT(Interview.v_LastInterviewInfo.InterviewDate, 'dd-MMM-yyyy HH:mm') AS [Interview Date], Interview.InterviewTypeLookup.InterviewType AS [Interview Type], 
             Interview.v_LastInterviewInfo.InterviewLocation AS Location, CASE WHEN Jobs.v_LastHistTransaction.Status IN (4, 5, 6) THEN 'N' ELSE 'Y' END AS Active
FROM   Interview.v_LastInterviewInfo INNER JOIN
             Interview.InterviewTypeLookup ON Interview.v_LastInterviewInfo.InterviewType = Interview.InterviewTypeLookup.IntTypeID RIGHT OUTER JOIN
             Jobs.JobDetails INNER JOIN
             Jobs.v_LastHistTransaction ON Jobs.JobDetails.JobID = Jobs.v_LastHistTransaction.JobID ON Interview.v_LastInterviewInfo.JobID = Jobs.JobDetails.JobID LEFT OUTER JOIN
             Employer.EmployerDatails ON Jobs.JobDetails.Employer = Employer.EmployerDatails.EmpID LEFT OUTER JOIN
             Jobs.StatusLookup ON Jobs.v_LastHistTransaction.Status = Jobs.StatusLookup.StatusID LEFT OUTER JOIN
             Jobs.JobSiteDetails ON Jobs.JobDetails.JobSite = Jobs.JobSiteDetails.SiteID

GO

EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "InterviewTypeLookup (Interview)"
            Begin Extent = 
               Top = 287
               Left = 45
               Bottom = 430
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobDetails (Jobs)"
            Begin Extent = 
               Top = 252
               Left = 684
               Bottom = 449
               Right = 914
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EmployerDatails (Employer)"
            Begin Extent = 
               Top = 476
               Left = 1151
               Bottom = 646
               Right = 1477
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StatusLookup (Jobs)"
            Begin Extent = 
               Top = 9
               Left = 1505
               Bottom = 179
               Right = 1727
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "JobSiteDetails (Jobs)"
            Begin Extent = 
               Top = 243
               Left = 1516
               Bottom = 413
               Right = 1738
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "v_LastInterviewInfo (Interview)"
            Begin Extent = 
               Top = 43
               Left = 370
               Bottom = 240
               Right = 641
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "v_LastHistTransaction (Jobs)"
            Begin Extent = 
               Top = 16
', @level0type = N'SCHEMA', @level0name = N'Jobs', @level1type = N'VIEW', @level1name = N'v_JobDetails';


GO

EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'Jobs', @level1type = N'VIEW', @level1name = N'v_JobDetails';


GO

EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'               Left = 1035
               Bottom = 213
               Right = 1278
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1990
         Width = 8250
         Width = 1470
         Width = 1580
         Width = 2030
         Width = 1670
         Width = 2010
         Width = 2010
         Width = 2260
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6660
         Alias = 3420
         Table = 3220
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'Jobs', @level1type = N'VIEW', @level1name = N'v_JobDetails';


GO

