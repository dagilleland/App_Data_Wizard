USE [eSchool]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_StudentPayment_Amount]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentPayment]'))
ALTER TABLE [dbo].[StudentPayment] DROP CONSTRAINT [CK_StudentPayment_Amount]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Student_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [CK_Student_StudentNumber]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Student_Gender]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [CK_Student_Gender]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_RegistrationRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest] DROP CONSTRAINT [CK_RegistrationRequest]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Mark]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration] DROP CONSTRAINT [CK_Mark]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_SectionLimit]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse] DROP CONSTRAINT [CK_Course_SectionLimit]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Program_Tuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program] DROP CONSTRAINT [CK_Program_Tuition]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Program_InternationalTuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program] DROP CONSTRAINT [CK_Program_InternationalTuition]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Offering_SectionCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection] DROP CONSTRAINT [CK_Offering_SectionCode]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Offering_Pass]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offering]'))
ALTER TABLE [dbo].[Offering] DROP CONSTRAINT [CK_Offering_Pass]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IDGenerator_LastValue]') AND parent_object_id = OBJECT_ID(N'[dbo].[IDGenerator]'))
ALTER TABLE [dbo].[IDGenerator] DROP CONSTRAINT [CK_IDGenerator_LastValue]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_GradeAssignment_RawMark]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment] DROP CONSTRAINT [CK_GradeAssignment_RawMark]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_GradeAssignment_Mark]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment] DROP CONSTRAINT [CK_GradeAssignment_Mark]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_Tuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course] DROP CONSTRAINT [CK_Course_Tuition]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_Credits]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course] DROP CONSTRAINT [CK_Course_Credits]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Club_Fee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Club]'))
ALTER TABLE [dbo].[Club] DROP CONSTRAINT [CK_Club_Fee]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_Percentage]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] DROP CONSTRAINT [CK_Assignment_Percentage]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_CourseMarkValue]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] DROP CONSTRAINT [CK_Assignment_CourseMarkValue]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_AssignmentMark]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] DROP CONSTRAINT [CK_Assignment_AssignmentMark]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_AssignmentCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] DROP CONSTRAINT [CK_Assignment_AssignmentCode]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentPaymentStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentPayment]'))
ALTER TABLE [dbo].[StudentPayment] DROP CONSTRAINT [FK_StudentPaymentStudent_StudentNumber]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Student__Country__31B762FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [FK__Student__Country__31B762FC]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationRequestStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest] DROP CONSTRAINT [FK_RegistrationRequestStudent_StudentNumber]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationRequestCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest] DROP CONSTRAINT [FK_RegistrationRequestCourse_CourseID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration] DROP CONSTRAINT [FK_RegistrationStudent_StudentNumber]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationOfferingSection_OfferingIDSectionCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration] DROP CONSTRAINT [FK_RegistrationOfferingSection_OfferingIDSectionCode]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramCourse_ProgramID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse] DROP CONSTRAINT [FK_ProgramCourse_ProgramID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse] DROP CONSTRAINT [FK_ProgramCourse_CourseID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramSchool]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program] DROP CONSTRAINT [FK_ProgramSchool]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OfferingSectionOffering_OfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection] DROP CONSTRAINT [FK_OfferingSectionOffering_OfferingID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OfferingEmployee_EmployeeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection] DROP CONSTRAINT [FK_OfferingEmployee_EmployeeID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offering]'))
ALTER TABLE [dbo].[Offering] DROP CONSTRAINT [FK_RegistrationCourse_CourseID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GradeAssignmentRegistration_RegistrationID]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment] DROP CONSTRAINT [FK_GradeAssignmentRegistration_RegistrationID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GradeAssignmentOfferingSection_AssignmentCodeOfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment] DROP CONSTRAINT [FK_GradeAssignmentOfferingSection_AssignmentCodeOfferingID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeePostion_PositionID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_EmployeePostion_PositionID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CK_EmployeeProgram_ProgramID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [CK_EmployeeProgram_ProgramID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActivityStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClubMember]'))
ALTER TABLE [dbo].[ClubMember] DROP CONSTRAINT [FK_ActivityStudent_StudentNumber]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ClubMembe__ClubI__3C34F16F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClubMember]'))
ALTER TABLE [dbo].[ClubMember] DROP CONSTRAINT [FK__ClubMembe__ClubI__3C34F16F]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClubEmployee_EmployeeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Club]'))
ALTER TABLE [dbo].[Club] DROP CONSTRAINT [FK_ClubEmployee_EmployeeID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssignmentOffering_OfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] DROP CONSTRAINT [FK_AssignmentOffering_OfferingID]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__StudentPa__Refun__440B1D61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[StudentPayment] DROP CONSTRAINT [DF__StudentPa__Refun__440B1D61]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__StudentPa__Payme__4316F928]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[StudentPayment] DROP CONSTRAINT [DF__StudentPa__Payme__4316F928]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Student__Country__1DE57479]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [DF__Student__Country__1DE57479]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Student__Provinc__1CF15040]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Student] DROP CONSTRAINT [DF__Student__Provinc__1CF15040]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Registrat__Place__3A81B327]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RegistrationRequest] DROP CONSTRAINT [DF__Registrat__Place__3A81B327]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Registrat__WithD__787EE5A0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Registration] DROP CONSTRAINT [DF__Registrat__WithD__787EE5A0]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Registrati__Mark__778AC167]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Registration] DROP CONSTRAINT [DF__Registrati__Mark__778AC167]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ProgramCo__Activ__3F466844]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProgramCourse] DROP CONSTRAINT [DF__ProgramCo__Activ__3F466844]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ProgramCo__Secti__3E52440B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProgramCourse] DROP CONSTRAINT [DF__ProgramCo__Secti__3E52440B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__GradeAssig__Mark__17036CC0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GradeAssignment] DROP CONSTRAINT [DF__GradeAssig__Mark__17036CC0]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__GradeAssi__RawMa__160F4887]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GradeAssignment] DROP CONSTRAINT [DF__GradeAssi__RawMa__160F4887]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ClubMembe__Activ__619B8048]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ClubMember] DROP CONSTRAINT [DF__ClubMembe__Activ__619B8048]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Club__Fee__5BE2A6F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Club] DROP CONSTRAINT [DF__Club__Fee__5BE2A6F2]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Club__Active__5AEE82B9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Club] DROP CONSTRAINT [DF__Club__Active__5AEE82B9]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Assignmen__Perce__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Assignment] DROP CONSTRAINT [DF__Assignmen__Perce__68487DD7]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Assignmen__Cours__6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Assignment] DROP CONSTRAINT [DF__Assignmen__Cours__6754599E]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Assignmen__Assig__66603565]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Assignment] DROP CONSTRAINT [DF__Assignmen__Assig__66603565]
END

GO
/****** Object:  Table [dbo].[StudentPayment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentPayment]') AND type in (N'U'))
DROP TABLE [dbo].[StudentPayment]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
DROP TABLE [dbo].[Student]
GO
/****** Object:  Table [dbo].[School]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[School]') AND type in (N'U'))
DROP TABLE [dbo].[School]
GO
/****** Object:  Table [dbo].[RegistrationRequest]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]') AND type in (N'U'))
DROP TABLE [dbo].[RegistrationRequest]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registration]') AND type in (N'U'))
DROP TABLE [dbo].[Registration]
GO
/****** Object:  Table [dbo].[ProgramCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProgramCourse]') AND type in (N'U'))
DROP TABLE [dbo].[ProgramCourse]
GO
/****** Object:  Table [dbo].[Program]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Program]') AND type in (N'U'))
DROP TABLE [dbo].[Program]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Position]') AND type in (N'U'))
DROP TABLE [dbo].[Position]
GO
/****** Object:  Table [dbo].[OfferingSection]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferingSection]') AND type in (N'U'))
DROP TABLE [dbo].[OfferingSection]
GO
/****** Object:  Table [dbo].[Offering]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offering]') AND type in (N'U'))
DROP TABLE [dbo].[Offering]
GO
/****** Object:  Table [dbo].[IDGenerator]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDGenerator]') AND type in (N'U'))
DROP TABLE [dbo].[IDGenerator]
GO
/****** Object:  Table [dbo].[GradeAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GradeAssignment]') AND type in (N'U'))
DROP TABLE [dbo].[GradeAssignment]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND type in (N'U'))
DROP TABLE [dbo].[Course]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[ClubMember]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClubMember]') AND type in (N'U'))
DROP TABLE [dbo].[ClubMember]
GO
/****** Object:  Table [dbo].[Club]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club]') AND type in (N'U'))
DROP TABLE [dbo].[Club]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Assignment]') AND type in (N'U'))
DROP TABLE [dbo].[Assignment]
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentPayment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateStudentPayment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateStudentPayment]
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateStudent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateStudent]
GO
/****** Object:  StoredProcedure [dbo].[UpdateSchool]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateSchool]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateSchool]
GO
/****** Object:  StoredProcedure [dbo].[UpdateRegistrationMark]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateRegistrationMark]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateRegistrationMark]
GO
/****** Object:  StoredProcedure [dbo].[UpdateRegistration]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateRegistration]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateRegistration]
GO
/****** Object:  StoredProcedure [dbo].[UpdateProgramCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateProgramCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateProgramCourse]
GO
/****** Object:  StoredProcedure [dbo].[UpdateProgram]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateProgram]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateProgram]
GO
/****** Object:  StoredProcedure [dbo].[UpdatePosition]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdatePosition]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdatePosition]
GO
/****** Object:  StoredProcedure [dbo].[UpdateOfferingSection]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOfferingSection]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateOfferingSection]
GO
/****** Object:  StoredProcedure [dbo].[UpdateOffering]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOffering]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateOffering]
GO
/****** Object:  StoredProcedure [dbo].[UpdateGradeAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateGradeAssignment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateGradeAssignment]
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateEmployee]
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateCourse]
GO
/****** Object:  StoredProcedure [dbo].[UpdateClubMember]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateClubMember]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateClubMember]
GO
/****** Object:  StoredProcedure [dbo].[UpdateClub]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateClub]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateClub]
GO
/****** Object:  StoredProcedure [dbo].[UpdateAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateAssignment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UpdateAssignment]
GO
/****** Object:  StoredProcedure [dbo].[LookupStudentByStudentNumber]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupStudentByStudentNumber]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupStudentByStudentNumber]
GO
/****** Object:  StoredProcedure [dbo].[LookupStudentByName]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupStudentByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupStudentByName]
GO
/****** Object:  StoredProcedure [dbo].[LookupRegistrationsByStudentNumber]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupRegistrationsByStudentNumber]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupRegistrationsByStudentNumber]
GO
/****** Object:  StoredProcedure [dbo].[LookupRegistrationsByOfferingID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupRegistrationsByOfferingID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupRegistrationsByOfferingID]
GO
/****** Object:  StoredProcedure [dbo].[LookupProgramCoursebyProgramIDCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupProgramCoursebyProgramIDCourseID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupProgramCoursebyProgramIDCourseID]
GO
/****** Object:  StoredProcedure [dbo].[LookupProgramCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupProgramCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupProgramCourse]
GO
/****** Object:  StoredProcedure [dbo].[LookupProgram]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupProgram]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupProgram]
GO
/****** Object:  StoredProcedure [dbo].[LookupPositionbyPositionId]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupPositionbyPositionId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupPositionbyPositionId]
GO
/****** Object:  StoredProcedure [dbo].[LookupOfferingAssignments]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupOfferingAssignments]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupOfferingAssignments]
GO
/****** Object:  StoredProcedure [dbo].[LookupOfferedProgramCoursesbySemester]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupOfferedProgramCoursesbySemester]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupOfferedProgramCoursesbySemester]
GO
/****** Object:  StoredProcedure [dbo].[LookupEmployeesByProgramID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupEmployeesByProgramID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupEmployeesByProgramID]
GO
/****** Object:  StoredProcedure [dbo].[LookupEmployeeByName]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupEmployeeByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupEmployeeByName]
GO
/****** Object:  StoredProcedure [dbo].[LookupEmployeeByEmployeeID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupEmployeeByEmployeeID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupEmployeeByEmployeeID]
GO
/****** Object:  StoredProcedure [dbo].[LookupCoursesByProgramID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCoursesByProgramID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupCoursesByProgramID]
GO
/****** Object:  StoredProcedure [dbo].[LookupCoursesByCredits]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCoursesByCredits]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupCoursesByCredits]
GO
/****** Object:  StoredProcedure [dbo].[LookupCoursesByCourseName]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCoursesByCourseName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupCoursesByCourseName]
GO
/****** Object:  StoredProcedure [dbo].[LookupCoursesByContentTopic]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCoursesByContentTopic]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupCoursesByContentTopic]
GO
/****** Object:  StoredProcedure [dbo].[LookupCourseByCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCourseByCourseID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupCourseByCourseID]
GO
/****** Object:  StoredProcedure [dbo].[LookupClubMembersByClubID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupClubMembersByClubID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupClubMembersByClubID]
GO
/****** Object:  StoredProcedure [dbo].[LookupClubByClubID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupClubByClubID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[LookupClubByClubID]
GO
/****** Object:  StoredProcedure [dbo].[ListPrograms]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListPrograms]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ListPrograms]
GO
/****** Object:  StoredProcedure [dbo].[ListClubs]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListClubs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ListClubs]
GO
/****** Object:  StoredProcedure [dbo].[GetStudents]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStudents]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetStudents]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentPayments]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStudentPayments]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetStudentPayments]
GO
/****** Object:  StoredProcedure [dbo].[GetStudentPayment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStudentPayment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetStudentPayment]
GO
/****** Object:  StoredProcedure [dbo].[GetSchools]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSchools]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetSchools]
GO
/****** Object:  StoredProcedure [dbo].[GetRegistrations]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegistrations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetRegistrations]
GO
/****** Object:  StoredProcedure [dbo].[GetRegistrationClassList]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegistrationClassList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetRegistrationClassList]
GO
/****** Object:  StoredProcedure [dbo].[GetRegistration]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegistration]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetRegistration]
GO
/****** Object:  StoredProcedure [dbo].[GetRegisteredStudent]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegisteredStudent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetRegisteredStudent]
GO
/****** Object:  StoredProcedure [dbo].[GetProgramsBySchool]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetProgramsBySchool]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetProgramsBySchool]
GO
/****** Object:  StoredProcedure [dbo].[GetPrograms]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPrograms]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetPrograms]
GO
/****** Object:  StoredProcedure [dbo].[GetPositions]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPositions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetPositions]
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentsByStudent]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPaymentsByStudent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetPaymentsByStudent]
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingSectionsByOfferingID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingSectionsByOfferingID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOfferingSectionsByOfferingID]
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingSectionsByEmployeeID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingSectionsByEmployeeID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOfferingSectionsByEmployeeID]
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingSections]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingSections]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOfferingSections]
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingSection]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingSection]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOfferingSection]
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingsBySemester]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingsBySemester]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOfferingsBySemester]
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingsByProgramCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingsByProgramCourseID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOfferingsByProgramCourseID]
GO
/****** Object:  StoredProcedure [dbo].[GetOfferings]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOfferings]
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingBySemesterAndProgramCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingBySemesterAndProgramCourseID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOfferingBySemesterAndProgramCourseID]
GO
/****** Object:  StoredProcedure [dbo].[GetOffering]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOffering]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetOffering]
GO
/****** Object:  StoredProcedure [dbo].[GetNextID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetNextID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetNextID]
GO
/****** Object:  StoredProcedure [dbo].[GetGradeAssignmentsByRegistrationID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGradeAssignmentsByRegistrationID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetGradeAssignmentsByRegistrationID]
GO
/****** Object:  StoredProcedure [dbo].[GetGradeAssignments]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGradeAssignments]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetGradeAssignments]
GO
/****** Object:  StoredProcedure [dbo].[GetGradeAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGradeAssignment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetGradeAssignment]
GO
/****** Object:  StoredProcedure [dbo].[GetEmployees]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmployees]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetEmployees]
GO
/****** Object:  StoredProcedure [dbo].[GetCourses]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCourses]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCourses]
GO
/****** Object:  StoredProcedure [dbo].[GetCountry]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCountry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCountry]
GO
/****** Object:  StoredProcedure [dbo].[GetCountries]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCountries]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCountries]
GO
/****** Object:  StoredProcedure [dbo].[GetClubs]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetClubs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetClubs]
GO
/****** Object:  StoredProcedure [dbo].[GetAssignmentsByOfferingID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAssignmentsByOfferingID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAssignmentsByOfferingID]
GO
/****** Object:  StoredProcedure [dbo].[GetAssignmentsByAssignmentCode]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAssignmentsByAssignmentCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAssignmentsByAssignmentCode]
GO
/****** Object:  StoredProcedure [dbo].[GetAssignments]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAssignments]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAssignments]
GO
/****** Object:  StoredProcedure [dbo].[GetAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAssignment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAssignment]
GO
/****** Object:  StoredProcedure [dbo].[GetAllProgramsByCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllProgramsByCourseID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllProgramsByCourseID]
GO
/****** Object:  StoredProcedure [dbo].[GetAllPrograms]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllPrograms]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllPrograms]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoursesByProgramID]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoursesByProgramID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCoursesByProgramID]
GO
/****** Object:  StoredProcedure [dbo].[GetAllClubMembers]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllClubMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllClubMembers]
GO
/****** Object:  StoredProcedure [dbo].[GetActiveClubMembers]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetActiveClubMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetActiveClubMembers]
GO
/****** Object:  StoredProcedure [dbo].[FindInstructorSectionsforSemester]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FindInstructorSectionsforSemester]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[FindInstructorSectionsforSemester]
GO
/****** Object:  StoredProcedure [dbo].[EmployeeList]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[EmployeeList]
GO
/****** Object:  StoredProcedure [dbo].[CountRegistrations]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CountRegistrations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CountRegistrations]
GO
/****** Object:  StoredProcedure [dbo].[AddStudentToClub]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddStudentToClub]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddStudentToClub]
GO
/****** Object:  StoredProcedure [dbo].[AddStudentPayment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddStudentPayment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddStudentPayment]
GO
/****** Object:  StoredProcedure [dbo].[AddProgram]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddProgram]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddProgram]
GO
/****** Object:  StoredProcedure [dbo].[AddNewStudent]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewStudent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewStudent]
GO
/****** Object:  StoredProcedure [dbo].[AddNewSchool]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewSchool]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewSchool]
GO
/****** Object:  StoredProcedure [dbo].[AddNewRegistrationRequest]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewRegistrationRequest]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewRegistrationRequest]
GO
/****** Object:  StoredProcedure [dbo].[AddNewRegistration]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewRegistration]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewRegistration]
GO
/****** Object:  StoredProcedure [dbo].[AddNewPosition]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewPosition]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewPosition]
GO
/****** Object:  StoredProcedure [dbo].[AddNewOfferingSection]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewOfferingSection]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewOfferingSection]
GO
/****** Object:  StoredProcedure [dbo].[AddNewOffering]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewOffering]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewOffering]
GO
/****** Object:  StoredProcedure [dbo].[AddNewEmployee]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewEmployee]
GO
/****** Object:  StoredProcedure [dbo].[AddNewCourseToProgram]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewCourseToProgram]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewCourseToProgram]
GO
/****** Object:  StoredProcedure [dbo].[AddNewCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewCourse]
GO
/****** Object:  StoredProcedure [dbo].[AddNewClubMember]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewClubMember]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewClubMember]
GO
/****** Object:  StoredProcedure [dbo].[AddNewClub]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewClub]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddNewClub]
GO
/****** Object:  StoredProcedure [dbo].[AddGradeAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddGradeAssignment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddGradeAssignment]
GO
/****** Object:  StoredProcedure [dbo].[AddAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddAssignment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AddAssignment]
GO
USE [master]
GO
/****** Object:  Database [eSchool]    Script Date: 9/19/2013 8:25:19 AM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'eSchool')
DROP DATABASE [eSchool]
GO
/****** Object:  Database [eSchool]    Script Date: 9/19/2013 8:25:19 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'eSchool')
BEGIN
CREATE DATABASE [eSchool] ON  PRIMARY 
( NAME = N'eSchool', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\eSchool.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eSchool_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\eSchool_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [eSchool] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eSchool].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eSchool] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eSchool] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eSchool] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eSchool] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eSchool] SET ARITHABORT OFF 
GO
ALTER DATABASE [eSchool] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eSchool] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [eSchool] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eSchool] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eSchool] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eSchool] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eSchool] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eSchool] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eSchool] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eSchool] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eSchool] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eSchool] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eSchool] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eSchool] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eSchool] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eSchool] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eSchool] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eSchool] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eSchool] SET RECOVERY FULL 
GO
ALTER DATABASE [eSchool] SET  MULTI_USER 
GO
ALTER DATABASE [eSchool] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eSchool] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'eSchool', N'ON'
GO
USE [eSchool]
GO
/****** Object:  StoredProcedure [dbo].[AddAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddAssignment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add Assignment */
CREATE PROCEDURE [dbo].[AddAssignment] (
	@AssignmentCode		CHAR(2),
	@OfferingID		INTEGER,
	@AssignmentMark		SMALLINT,
	@CourseMarkValue	SMALLINT,
	@Percentage		SMALLINT
	)
AS
	INSERT INTO Assignment (
		AssignmentCode,
		OfferingID,
		AssignmentMark,
		CourseMarkValue,
		Percentage
		)
	VALUES (
		@AssignmentCode,
		@OfferingID,
		@AssignmentMark,
		@CourseMarkValue,
		@Percentage
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddGradeAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddGradeAssignment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add Grade Assignment */
CREATE PROCEDURE [dbo].[AddGradeAssignment] (
	@AssignmentCode		CHAR(2),
	@OfferingID		INTEGER,
	@RegistrationID		INTEGER,
	@RawMark		SMALLINT,
	@Mark			SMALLINT
	)
AS
	INSERT INTO GradeAssignment (
		AssignmentCode,
		OfferingID,
		RegistrationID,
		RawMark,
		Mark
		)
	VALUES (
		@AssignmentCode,
		@OfferingID,
		@RegistrationID,
		@RawMark,
		@Mark
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewClub]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewClub]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add New Club */
CREATE PROCEDURE [dbo].[AddNewClub](
	@ClubID			VARCHAR(10),
	@ClubName		VARCHAR(50),
	@Active			BIT,
	@EmployeeID		INTEGER		=	NULL,
	@Fee			MONEY
	)
AS
	/* Validate input parameters */
	SET @ClubID		=	LTRIM(RTRIM(@ClubID))
	SET @ClubName		=	LTRIM(RTRIM(@ClubName))
	
	INSERT INTO Club (ClubID, ClubName, Active, EmployeeID, Fee)
	VALUES (@ClubID, @ClubName, @Active, @EmployeeID, @Fee)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewClubMember]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewClubMember]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add new Club Member */
CREATE PROCEDURE [dbo].[AddNewClubMember] (
	@StudentNumber		INTEGER,
	@ClubID			VARCHAR(10),
	@EnrolledDate		DATETIME,
	@Active			BIT
	)
AS
	SET @ClubID = LTRIM(RTRIM(@ClubID))
	
	INSERT INTO ClubMember (
		StudentNumber,
		ClubID,
		EnrolledDate,
		Active
		)
	VALUES (
		@StudentNumber,
		@ClubID,
		@EnrolledDate,
		@Active
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add New Course */
CREATE PROCEDURE [dbo].[AddNewCourse] (
	@CourseID		VARCHAR(7),
	@CourseName		VARCHAR(60),
	@Credits		DECIMAL(3,1),
	@Tuition		MONEY,
	@Description	VARCHAR(2048) = null
	)
AS
	SET @CourseName = LTRIM(RTRIM(@CourseName))
	Set @Description = LTRIM(RTRIM(@Description))
	if @Description = ''''
		set @Description = null
	INSERT INTO Course (
		CourseID,
		CourseName,
		Credits,
		Tuition,
		Description
		)
	VALUES (
		@CourseID,
		@CourseName,
		@Credits,
		@Tuition,
		@Description)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewCourseToProgram]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewCourseToProgram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'	  
/* Add New Course to Program */
CREATE PROCEDURE [dbo].[AddNewCourseToProgram] (
	@ProgramID		INTEGER,
	@CourseID		VARCHAR(7),
	@SectionLimit		INTEGER,
	@Active			BIT
	)
AS
	SET @CourseID = LTRIM(RTRIM(@CourseID))
	
	INSERT INTO ProgramCourse (
		ProgramID,
		CourseID,
		SectionLimit,
		Active
		)
	VALUES (
		@ProgramID,
		@CourseID,
		@SectionLimit,
		@Active
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewEmployee]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'	
/* Add New Employee */
CREATE PROCEDURE [dbo].[AddNewEmployee](
	@FirstName		VARCHAR(20),
	@LastName		VARCHAR(20),
	@DateHired		DATETIME,
	@ReleaseDate		DATETIME	=	NULL,
	@PositionID		INTEGER,
	@ProgramID		INTEGER,
	@LoginID		VARCHAR(30)	=	NULL
	)
AS
	/* Validate input parameters */
	SET @FirstName		=	LTRIM(RTRIM(@FirstName))
	SET @LastName		=	LTRIM(RTRIM(@LastName))
	SET @LoginID		=	LTRIM(RTRIM(@LoginID))
	
	IF @LoginID = ''''
		BEGIN
			SET @LoginID = NULL
		END
	
	/* Get next available EmployeeID */
	DECLARE @nextKey INTEGER
	BEGIN TRANSACTION
		UPDATE IDGenerator WITH(Rowlock, RepeatableRead)
		SET @nextKey = LastValue = LastValue + 1
		WHERE KeyField = ''EmployeeID''
		IF @@ERROR <> 0
			BEGIN
				RAISERROR(''Add New Employee -- Could not generate EmployeeID'', 16, 1)
				ROLLBACK TRANSACTION
			END
		ELSE
			BEGIN
				INSERT INTO Employee (
					EmployeeID,
					FirstName,
					LastName,
					DateHired,
					ReleaseDate,
					PositionID,
					ProgramID,
					LoginID)
				VALUES (
					@nextKey,
					@FirstName,
					@LastName,
					@DateHired,
					@ReleaseDate,
					@PositionID,
					@ProgramID,
					@LoginID)
				IF @@ERROR <> 0
					BEGIN
						RAISERROR(''AddNewEmployee --- Could not add new employee'',16,1)
						ROLLBACK TRANSACTION
					END
			END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewOffering]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewOffering]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add new Offering */
CREATE PROCEDURE [dbo].[AddNewOffering](
	@ProgramCourseID	INTEGER,
	@Semester		CHAR(5),
	@Pass			INTEGER
	)
AS
	INSERT INTO Offering (
		ProgramCourseID,
		Semester,
		Pass
		)
	VALUES (
		@ProgramCourseID,
		@Semester,
		@Pass
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewOfferingSection]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewOfferingSection]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add New Offering Section */
CREATE PROCEDURE [dbo].[AddNewOfferingSection] (
	@OfferingID		INTEGER,
	@SectionCode		CHAR(1),
	@EmployeeID		INTEGER
	)
AS
	INSERT INTO OfferingSection (
		OfferingID,
		SectionCode,
		EmployeeID
		)
	VALUES(
		@OfferingID,
		@SectionCode,
		@EmployeeID
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewPosition]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewPosition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add New Position */
CREATE PROCEDURE [dbo].[AddNewPosition] (
	@Description		VARCHAR(50)
	)
AS
	SET @Description = LTRIM(RTRIM(@Description))
	
	INSERT INTO Position (
		Description
		)
	VALUES (
		@Description
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewRegistration]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewRegistration]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add new Registration */
CREATE PROCEDURE [dbo].[AddNewRegistration] (
	@StudentNumber		INTEGER,
	@OfferingID		INTEGER,
	@SectionCode		CHAR(1),
	@Mark			INTEGER,
	@WithDrawal		BIT
	)
AS
	INSERT INTO Registration (
		StudentNumber,
		OfferingID,
		SectionCode,
		Mark,
		WithDrawal
		)
	VALUES (
		@StudentNumber,
		@OfferingID,
		@SectionCode,
		@Mark,
		@WithDrawal
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewRegistrationRequest]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewRegistrationRequest]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create proc [dbo].[AddNewRegistrationRequest]
(
  @studentnumber	int,
  @courseid			varchar(7),
  @semestercode		varchar(5)
)
as
	set @courseid = ltrim(rtrim(@courseid))
	set @semestercode = ltrim(rtrim(@semestercode))
	if @courseid = ''''
	begin
		set @courseid = null
	end
	if @semestercode = ''''
	begin
		set @courseid = null
	end
	insert into RegistrationRequest
	values(@studentnumber,@courseid,@semestercode,''False'')
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewSchool]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewSchool]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add New School */
CREATE PROCEDURE [dbo].[AddNewSchool](
	@SchoolCode		VARCHAR(10),
	@SchoolName		VARCHAR(50)
	)
AS
	SET @SchoolCode = LTRIM(RTRIM(@SchoolCode))
	SET @SchoolName = LTRIM(RTRIM(@SchoolName))
	
	INSERT INTO School (
		SchoolCode,
		SchoolName
		)
	VALUES (
		@SchoolCode,
		@SchoolName
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewStudent]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddNewStudent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add New Student */
CREATE PROCEDURE [dbo].[AddNewStudent](
	@FirstName		VARCHAR(20),
	@LastName		VARCHAR(20),
	@DisplayName		VARCHAR(20),
	@Gender			CHAR(1),
	@Address		VARCHAR(30),
	@City			VARCHAR(30),
	@ProvinceState		VARCHAR(20)	=	NULL,
	@CountryCode		CHAR(2),
	@PostalCodeZip		VARCHAR(10)	=	NULL,
	@BirthDate		DATETIME
	)
AS
	/* Validate the input parameters */
	SET @FirstName		=	LTRIM(RTRIM(@FirstName))
	SET @LastName		=	LTRIM(RTRIM(@LastName))
	SET @DisplayName	=	LTRIM(RTRIM(@DisplayName))
	SET @DisplayName	=	RTRIM(@DisplayName)
	SET @Address		=	LTRIM(RTRIM(@Address))
	SET @City		=	LTRIM(RTRIM(@City))
	SET @ProvinceState	=	LTRIM(RTRIM(@ProvinceState))
	SET @PostalCodeZip	=	LTRIM(RTRIM(@PostalCodeZip))
	
	IF @ProvinceState = ''''
	BEGIN
		SET @ProvinceState = NULL
	END
	
	IF @PostalCodeZip = ''''
	BEGIN
		SET @PostalCodeZip = NULL
	END
	
	/* Get the next available StudentNumber */
	DECLARE @nextKey INTEGER
	BEGIN TRANSACTION
		UPDATE IDGenerator WITH(Rowlock, RepeatableRead)
		SET @nextKey = LastValue = LastValue + 1
		WHERE KeyField = ''StudentNumber''
		IF @@ERROR <> 0
			BEGIN
				RAISERROR(''Add New Student -- Could not generate StudentNumber'', 16, 1)
				ROLLBACK TRANSACTION
			END
		ELSE
			BEGIN
				INSERT INTO Student (
					StudentNumber,
					FirstName,
					LastName,
					DisplayName,
					Gender,
					Address,
					City,
					ProvinceState,
					CountryCode,
					PostalCodeZip,
					BirthDate)
				VALUES (
					@nextKey,
					@FirstName,
					@LastName,
					@DisplayName,
					@Gender,
					@Address,
					@City,
					@ProvinceState,
					@CountryCode,
					@PostalCodeZip,
					@BirthDate)
				IF @@ERROR <> 0
					BEGIN
						RAISERROR(''AddNewStudent --- Could not add new student'',16,1)
						ROLLBACK TRANSACTION
					END
				
			END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddProgram]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddProgram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add Program */
CREATE PROCEDURE [dbo].[AddProgram] (
	@ProgramName		VARCHAR(100),
	@SchoolCode		VARCHAR(10),
	@Tuition		MONEY,
	@InternationalTuition	MONEY
	)
AS
	SET @ProgramName = LTRIM(RTRIM(@ProgramName))
	SET @SchoolCode = LTRIM(RTRIM(@SchoolCode))
	
	INSERT INTO Program (
		ProgramName,
		SchoolCode,
		Tuition,
		InternationalTuition
		)
	VALUES (
		@ProgramName,
		@SchoolCode,
		@Tuition,
		@InternationalTuition
		)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddStudentPayment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddStudentPayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add Student Payment */
CREATE PROCEDURE [dbo].[AddStudentPayment] (
	@StudentNumber		INTEGER,
	@PaymentDate		DATETIME,
	@Amount			MONEY,
	@Description		VARCHAR(50)	=	NULL
	)
AS
	SET @Description = LTRIM(RTRIM(@Description))
	
	/* Get the next available StudentNumber */
	DECLARE @nextKey INTEGER
	BEGIN TRANSACTION
		UPDATE IDGenerator WITH(Rowlock, RepeatableRead)
		SET @nextKey = LastValue = LastValue + 1
		WHERE KeyField = ''PaymentNumber''
		IF @@ERROR <> 0
			BEGIN
				RAISERROR(''Add Student Payment -- Could not generate PaymentNumber'', 16, 1)
				ROLLBACK TRANSACTION
			END
		ELSE
			BEGIN
				INSERT INTO StudentPayment (
					PaymentNumber,
					StudentNumber,
					PaymentDate,
					Amount,
					Description)
				VALUES (
					@nextKey,
					@StudentNumber,
					@PaymentDate,
					@Amount,
					@Description)
				IF @@ERROR <> 0
					BEGIN
						RAISERROR(''AddStudentPayment --- Could not add student payment'',16,1)
						ROLLBACK TRANSACTION
					END
			END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[AddStudentToClub]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddStudentToClub]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Add Student to Club */
CREATE PROCEDURE [dbo].[AddStudentToClub] (
	@StudentNumber		INTEGER,
	@ClubID			VARCHAR(10),
	@EnrollDate		DATETIME,
	@Active			BIT
	)
AS
	INSERT INTO ClubMember (StudentNumber, ClubID, EnrolledDate, Active)
	VALUES (@StudentNumber, @ClubID, @EnrollDate, @Active)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[CountRegistrations]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CountRegistrations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Count Registrations */
CREATE PROCEDURE [dbo].[CountRegistrations] (
	@OfferingID		INTEGER,
	@SectionCode		CHAR(1)
	)
AS
	SELECT COUNT(RegistrationID) AS Students FROM Registration
	WHERE	OfferingID		=	@OfferingID
	AND	SectionCode		=	@SectionCode
' 
END
GO
/****** Object:  StoredProcedure [dbo].[EmployeeList]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[EmployeeList]
as
 select employeeid, Lastname + '','' + firstname ''name'' from Employee order by 2
' 
END
GO
/****** Object:  StoredProcedure [dbo].[FindInstructorSectionsforSemester]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FindInstructorSectionsforSemester]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[FindInstructorSectionsforSemester]
(
 @semester varchar(5),
 --@courseid varchar(7),
 @employeeid int
)
as
select os.offeringid, sectioncode,c.CourseID, CourseName
from OfferingSection os join Offering o on os.OfferingID = o.OfferingID
						join ProgramCourse pc on o.ProgramCourseID = pc.ProgramCourseID
						join Course c on pc.CourseID = c.Courseid
						
where  Semester = @semester
  and os.EmployeeID = @employeeid
  
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetActiveClubMembers]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetActiveClubMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get All Active Club Members */
CREATE PROCEDURE [dbo].[GetActiveClubMembers] 
AS
	SELECT StudentNumber, ClubID, EnrolledDate, Active
	FROM ClubMember
	WHERE Active = 1
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllClubMembers]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllClubMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==  ClubMember Table Stored Procedures == */
/* ========================================= */

/* Get All Club Members */
CREATE PROCEDURE [dbo].[GetAllClubMembers]
AS
	SELECT StudentNumber, ClubID, EnrolledDate, Active
	FROM ClubMember
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoursesByProgramID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoursesByProgramID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* =========================================== */
/* == ProgramCourse Table Stored Procedures == */
/* =========================================== */

/* Get All Courses By ProgramID */
CREATE PROCEDURE [dbo].[GetAllCoursesByProgramID] (
	@ProgramID		INTEGER
	)
AS
	SELECT ProgramCourseID,ProgramID,CourseID,SectionLimit,Active
	FROM ProgramCourse
	WHERE ProgramID = @ProgramID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllPrograms]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllPrograms]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==   Program Table Stored Procedures   == */
/* ========================================= */

/* Lookup All Programs */
CREATE PROCEDURE [dbo].[GetAllPrograms]
AS
	SELECT ProgramID,ProgramName,SchoolCode,Tuition,InternationalTuition
	FROM Program
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProgramsByCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllProgramsByCourseID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get All Programs By CourseID */
CREATE PROCEDURE [dbo].[GetAllProgramsByCourseID] (
	@CourseID		VARCHAR(7)
	)
AS
	SET @CourseID = LTRIM(RTRIM(@CourseID))
	
	SELECT ProgramCourseID,ProgramID,CourseID,SectionLimit,Active
		FROM ProgramCourse
		WHERE CourseID = @CourseID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAssignment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'	
/* Get Assignment */
CREATE PROCEDURE [dbo].[GetAssignment] (
	@AssignmentCode		CHAR(2),
	@OfferingID		INTEGER
	)
AS
	SELECT AssignmentCode,OfferingID,AssignmentMark,CourseMarkValue,Percentage
	FROM Assignment
	WHERE OfferingID = @OfferingID
	AND AssignmentCode = @AssignmentCode
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAssignments]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAssignments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==  Assignment Table Stored Procedures == */
/* ========================================= */

/* Get All Assignments */
CREATE PROCEDURE [dbo].[GetAssignments]
AS
	SELECT AssignmentCode,OfferingID,AssignmentMark,CourseMarkValue,Percentage
	FROM Assignment
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAssignmentsByAssignmentCode]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAssignmentsByAssignmentCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Assignments by Assignment Code */
CREATE PROCEDURE [dbo].[GetAssignmentsByAssignmentCode] (
	@AssignmentCode		CHAR(2)
	)
AS
	SELECT AssignmentCode,OfferingID,AssignmentMark,CourseMarkValue,Percentage
	FROM Assignment
	WHERE AssignmentCode = @AssignmentCode
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAssignmentsByOfferingID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAssignmentsByOfferingID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Assignments by OfferingID */
CREATE PROCEDURE [dbo].[GetAssignmentsByOfferingID] (
	@OfferingID		INTEGER
	)
AS
	SELECT AssignmentCode,OfferingID,AssignmentMark,CourseMarkValue,Percentage
	FROM Assignment
	WHERE OfferingID = @OfferingID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetClubs]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetClubs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==     Club Table Stored Procedures    == */
/* ========================================= */

/* Get all Clubs */
CREATE PROCEDURE [dbo].[GetClubs]
AS
	SELECT ClubID,ClubName,Active,EmployeeID,Fee FROM Club
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCountries]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCountries]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==   Country Table Stored Procedures   == */
/* ========================================= */

/* Get all the countries */
CREATE PROCEDURE [dbo].[GetCountries]
AS
	SELECT CountryCode,CountryName FROM Country
	ORDER BY CountryName
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCountry]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCountry]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get One Country */
CREATE PROCEDURE [dbo].[GetCountry] (
	@CountryCode		CHAR(2)
	)
AS
	SELECT CountryName FROM Country
	WHERE CountryCode = @CountryCode
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCourses]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCourses]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==    Course Table Stored Procedures   == */
/* ========================================= */

/* Get all the Courses */
CREATE PROCEDURE [dbo].[GetCourses]
AS
	SELECT CourseID,CourseName,Credits,Tuition, Description FROM Course
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployees]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetEmployees]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==   Employee Table Stored Procedures  == */
/* ========================================= */

/* Get all the Employees */
CREATE PROCEDURE [dbo].[GetEmployees]
AS
	SELECT EmployeeID,FirstName,LastName,DateHired,ReleaseDate,PositionID,ProgramID,LoginID FROM Employee
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetGradeAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGradeAssignment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get one Grade Assignment */
CREATE PROCEDURE [dbo].[GetGradeAssignment] (
	@AssignmentCode		CHAR(2),
	@OfferingID		INTEGER,
	@RegistrationID		INTEGER
	)
AS
	SELECT AssignmentCode, OfferingID, RegistrationID, RawMark, Mark
	FROM GradeAssignment
	WHERE	AssignmentCode	= @AssignmentCode
	AND	OfferingID	= @OfferingID
	AND	RegistrationID	= @RegistrationID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetGradeAssignments]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGradeAssignments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ============================================= */
/* == GradeAssignment Table Stored Procedures == */
/* ============================================= */

/* Get all Grade Assignments */
CREATE PROCEDURE [dbo].[GetGradeAssignments]
AS
	SELECT AssignmentCode, OfferingID, RegistrationID, RawMark, Mark
	FROM GradeAssignment
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetGradeAssignmentsByRegistrationID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetGradeAssignmentsByRegistrationID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Grade Assignments by Registration ID */
CREATE PROCEDURE [dbo].[GetGradeAssignmentsByRegistrationID] (
	@RegistrationID		INTEGER
	)
AS
	SELECT AssignmentCode, OfferingID, RegistrationID, RawMark, Mark
	FROM GradeAssignment
	WHERE RegistrationID = @RegistrationID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetNextID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetNextID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==             IDGenerator             == */
/* ========================================= */

/* Get Next ID From IDGenerator */
CREATE PROCEDURE [dbo].[GetNextID](@KeyField  varchar(50))
AS
	SET @KeyField = LTRIM(RTRIM(@KeyField))
	
	UPDATE IDGenerator
		SET LastValue = LastValue +1
		WHERE KeyField = @KeyField
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOffering]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOffering]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Offering */
CREATE PROCEDURE [dbo].[GetOffering](
	@OfferingID		INTEGER
	)
AS
	SELECT OfferingID, ProgramCourseID, Semester, Pass
	FROM Offering
	WHERE OfferingID = @OfferingID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingBySemesterAndProgramCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingBySemesterAndProgramCourseID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Offerings by Semester and ProgramCourseID */
CREATE PROCEDURE [dbo].[GetOfferingBySemesterAndProgramCourseID] (
	@Semester		CHAR(5),
	@ProgramCourseID	INTEGER
	)
AS
	SELECT OfferingID, ProgramCourseID, Semester, Pass
	FROM Offering
	WHERE Semester = @Semester
	AND ProgramCourseID = @ProgramCourseID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferings]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==  Offering Table Stored Procedures   == */
/* ========================================= */

/* Get All Offerings */
CREATE PROCEDURE [dbo].[GetOfferings]
AS
	SELECT OfferingID, ProgramCourseID, Semester, Pass
	FROM Offering
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingsByProgramCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingsByProgramCourseID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Offerings by ProgramCourseID */
CREATE PROCEDURE [dbo].[GetOfferingsByProgramCourseID] (
	@ProgramCourseID	INTEGER
	)
AS
	SELECT OfferingID, ProgramCourseID, Semester, Pass
	FROM Offering
	WHERE ProgramCourseID = @ProgramCourseID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingsBySemester]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingsBySemester]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Offerings by Semester */
CREATE PROCEDURE [dbo].[GetOfferingsBySemester](
	@Semester		CHAR(5)
	)
AS
	SELECT OfferingID, ProgramCourseID, Semester, Pass
	FROM Offering
	WHERE Semester = @Semester
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingSection]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingSection]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get one Offering Section */
CREATE PROCEDURE [dbo].[GetOfferingSection] (
	@OfferingID		INTEGER,
	@SectionCode		CHAR(1)
	)
AS
	SELECT OfferingID, SectionCode, EmployeeID
	FROM OfferingSection
	WHERE OfferingID = @OfferingID
	AND SectionCode = @SectionCode
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingSections]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingSections]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ============================================= */
/* == OfferingSection Table Stored Procedures == */
/* ============================================= */

/* Get All Offering Sections */
CREATE PROCEDURE [dbo].[GetOfferingSections]
AS
	SELECT OfferingID, SectionCode, EmployeeID
	FROM OfferingSection
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingSectionsByEmployeeID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingSectionsByEmployeeID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get	Offering Sections by EmployeeID */
CREATE PROCEDURE [dbo].[GetOfferingSectionsByEmployeeID] (
	@EmployeeID		INTEGER
	)
AS
	SELECT OfferingID, SectionCode, EmployeeID
	FROM OfferingSection
	WHERE EmployeeID = @EmployeeID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetOfferingSectionsByOfferingID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetOfferingSectionsByOfferingID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Offering Sections by OfferingID */
CREATE PROCEDURE [dbo].[GetOfferingSectionsByOfferingID] (
	@OfferingID		INTEGER
	)
AS
	SELECT OfferingID, SectionCode, EmployeeID
	FROM OfferingSection
	WHERE OfferingID = @OfferingID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetPaymentsByStudent]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPaymentsByStudent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Payments by Student */
CREATE PROCEDURE [dbo].[GetPaymentsByStudent] (
	@StudentNumber		INTEGER
	)
AS
	SELECT PaymentNumber, StudentNumber, PaymentDate, Amount, Refunded, RefundDate, Description
	FROM StudentPayment
	WHERE StudentNumber = @StudentNumber
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetPositions]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPositions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'	
/* ========================================= */
/* ==   Position Table Stored Procedures  == */
/* ========================================= */

/* Get all the Postions */
CREATE PROCEDURE [dbo].[GetPositions]
AS
	SELECT PositionID,Description FROM Position
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetPrograms]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetPrograms]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[GetPrograms]
AS
	SELECT ProgramID,ProgramName
	FROM Program
	order by 2
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetProgramsBySchool]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetProgramsBySchool]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Programs By School */
CREATE PROCEDURE [dbo].[GetProgramsBySchool](
	@SchoolCode		VARCHAR(10)
	)
AS
	SELECT ProgramID,ProgramName,SchoolCode,Tuition,InternationalTuition
	FROM Program
	WHERE SchoolCode = @SchoolCode
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetRegisteredStudent]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegisteredStudent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[GetRegisteredStudent]
(
	@registrationid int
)
as
select  r.studentnumber, Lastname + '','' + firstname ''Name''
from registration r join student s on r.studentnumber = s.studentnumber
where registrationid = @registrationid
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetRegistration]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegistration]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get One Registration */
CREATE PROCEDURE [dbo].[GetRegistration] (
	@RegistrationID		INTEGER
	)
AS
	SELECT RegistrationID, StudentNumber, OfferingID, SectionCode, Mark, WithDrawal
	FROM Registration
	WHERE RegistrationID = @RegistrationID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetRegistrationClassList]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegistrationClassList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[GetRegistrationClassList]
(
	@offeringid int,
	@sectioncode char(1)
)
as
select registrationid, r.studentnumber, Lastname + '','' + firstname ''Name'',
		mark, withdrawal
from registration r join student s on r.studentnumber = s.studentnumber
where offeringid = @offeringid
  and sectioncode = @sectioncode
order by 3
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetRegistrations]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetRegistrations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================== */
/* == Registration Table Stored Procedures == */
/* ========================================== */

/* Get all Registrations */
CREATE PROCEDURE [dbo].[GetRegistrations]
AS
	SELECT RegistrationID, StudentNumber, OfferingID, SectionCode, Mark, WithDrawal
	FROM Registration
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetSchools]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSchools]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==    School Table Stored Procedures   == */
/* ========================================= */

/* Get all Schools */
CREATE PROCEDURE [dbo].[GetSchools]
AS
	SELECT SchoolCode,SchoolName
	FROM School
	order by 2
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudentPayment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStudentPayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/*Get one Student Payment */
CREATE PROCEDURE [dbo].[GetStudentPayment] (
	@PaymentNumber		INTEGER
	)
AS
	SELECT PaymentNumber, StudentNumber, PaymentDate, Amount, Refunded, RefundDate, Description
	FROM StudentPayment
	WHERE PaymentNumber = @PaymentNumber
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudentPayments]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStudentPayments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ============================================ */
/* == StudentPayment Table Stored Procedures == */
/* ============================================ */

/* Get all Student Payments */
CREATE PROCEDURE [dbo].[GetStudentPayments]
AS
	SELECT PaymentNumber, StudentNumber, PaymentDate, Amount, Refunded, RefundDate, Description
	FROM StudentPayment
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudents]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStudents]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* ========================================= */
/* ==   Student Table Stored Procedures   == */
/* ========================================= */

/* Get all the Students */
CREATE PROCEDURE [dbo].[GetStudents]
AS
	SELECT StudentNumber,FirstName,LastName,DisplayName,Gender,Address,City,ProvinceState,CountryCode,PostalCodeZip,BirthDate FROM Student
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ListClubs]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListClubs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get all Clubs */
CREATE PROCEDURE [dbo].[ListClubs]
AS
	SELECT ClubID,ClubName
	FROM Club
	order by 2 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ListPrograms]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListPrograms]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup All Programs for DDL List*/
CREATE PROCEDURE [dbo].[ListPrograms]
AS
	SELECT ProgramID,ProgramName
	FROM Program
	order by 2
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupClubByClubID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupClubByClubID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Club by Club ID */
CREATE PROCEDURE [dbo].[LookupClubByClubID](@ClubID CHAR(10))
AS
	SET @ClubID = LTRIM(RTRIM(@ClubID))
	IF @ClubID = ''''
	BEGIN
		SET @ClubID = NULL
	END
	SELECT ClubID,ClubName,Active,EmployeeID,Fee FROM Club
	WHERE ClubID = @ClubID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupClubMembersByClubID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupClubMembersByClubID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get All Club Members by ClubID*/
CREATE PROCEDURE [dbo].[LookupClubMembersByClubID]
(
@Clubid VARCHAR(10)
)
AS
	SELECT c.StudentNumber, LastName + '','' + FirstName ''StudentName'',
			 EnrolledDate, Active
	FROM ClubMember c join Student s on c.StudentNumber = s.StudentNumber
	where ClubID = @Clubid
	order by 2
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupCourseByCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCourseByCourseID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Course by Course ID */
CREATE PROCEDURE [dbo].[LookupCourseByCourseID](@CourseID CHAR(7))
AS
	SET @CourseID = LTRIM(RTRIM(@CourseID))
	IF @CourseID = ''''
	BEGIN
		SET @CourseID = NULL
	END
	SELECT CourseID,CourseName,Credits,Tuition, Description FROM Course
	WHERE CourseID = @CourseID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupCoursesByContentTopic]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCoursesByContentTopic]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[LookupCoursesByContentTopic](@ContentTopic varchar(50))
AS
	SELECT c.CourseID,CourseName,Credits,Description
	FROM Course c 
	WHERE Description like ''%'' + @ContentTopic + ''%''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupCoursesByCourseName]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCoursesByCourseName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Course by Course Name */
create PROCEDURE [dbo].[LookupCoursesByCourseName](@CourseName varCHAR(75))
AS
	SET @CourseName = LTRIM(RTRIM(@CourseName))
	IF @CourseName = ''''
	BEGIN
		SET @CourseName = NULL
	END
	SELECT CourseID,CourseName,Credits,Tuition, Description FROM Course
	WHERE CourseName like ''%'' + @CourseName + ''%''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupCoursesByCredits]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCoursesByCredits]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/* Lookup Course by Course Credits */
create PROCEDURE [dbo].[LookupCoursesByCredits](@credits decimal(3,1))
AS

	SELECT CourseID,CourseName,Credits,Tuition, Description FROM Course
	WHERE credits =@credits
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupCoursesByProgramID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupCoursesByProgramID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Courses by Program ID */
CREATE PROCEDURE [dbo].[LookupCoursesByProgramID](@ProgramID INT)
AS
	SELECT c.CourseID,CourseName,Credits,Tuition, SectionLimit, Active 
	FROM Course c inner join ProgramCourse pc on c.CourseID = pc.CourseID
	WHERE ProgramID = @ProgramID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupEmployeeByEmployeeID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupEmployeeByEmployeeID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Employee by Employee  ID */
CREATE PROCEDURE [dbo].[LookupEmployeeByEmployeeID](@EmployeeID INTEGER)
AS
	SELECT EmployeeID, FirstName, LastName, DateHired, ReleaseDate, PositionID, ProgramID, LoginID
	FROM Employee
	WHERE EmployeeID = @EmployeeID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupEmployeeByName]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupEmployeeByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Employee by Name */
CREATE PROCEDURE [dbo].[LookupEmployeeByName](@Name VARCHAR(20))
AS
	SET @Name = LTRIM(RTRIM(@Name))
	IF @Name = ''''
	BEGIN
		SET @Name = NULL
	END
	SELECT EmployeeID, FirstName, LastName, DateHired, ReleaseDate, PositionID, ProgramID, LoginID
	FROM Employee
	WHERE FirstName LIKE @Name+''%'' OR LastName LIKE @Name+''%''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupEmployeesByProgramID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupEmployeesByProgramID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Employees by ProgramID */
CREATE PROCEDURE [dbo].[LookupEmployeesByProgramID] (
	@ProgramID		INTEGER
	)
AS
	SELECT EmployeeID, FirstName, LastName, DateHired, ReleaseDate, PositionID, ProgramID, LoginID
		FROM Employee
	WHERE ProgramID = @ProgramID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupOfferedProgramCoursesbySemester]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupOfferedProgramCoursesbySemester]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[LookupOfferedProgramCoursesbySemester]
(
 @programid int,
 @semester varchar(5)
)
as
set @semester = ltrim(rtrim(@semester))
if @semester = ''''
begin
	set @semester = null
end
  select  c.courseid, coursename , Credits
  from programcourse pc join course c on pc.courseid = c.courseid
  join Offering o on pc.ProgramCourseID = o.ProgramCourseID
  where ProgramID = @programid
  and Semester = @semester
  and Active = ''True''
  order by 1
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupOfferingAssignments]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupOfferingAssignments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[LookupOfferingAssignments]
(
	@courseid varchar(7),
	@semester varchar(5)
)
as
select Assignmentcode, o.Offeringid, Assignmentmark, coursemarkvalue, percentage
from Assignment a join Offering o on a.OfferingID = o.OfferingID
				  join ProgramCourse pc on o.ProgramCourseID = pc.ProgramCourseID
where pc.CourseID = @courseid
  and o.Semester = @semester
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupPositionbyPositionId]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupPositionbyPositionId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Position by Position ID */
CREATE PROCEDURE [dbo].[LookupPositionbyPositionId](@positionID INTEGER)
AS
	SELECT PositionID, Description
	FROM Position
	WHERE PositionID = @PositionID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupProgram]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupProgram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup One Program */
CREATE PROCEDURE [dbo].[LookupProgram] (
	@ProgramID		INTEGER
	)
AS
	SELECT ProgramID,ProgramName,SchoolCode,Tuition,InternationalTuition
	FROM Program
	WHERE ProgramID = @ProgramID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupProgramCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupProgramCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get one ProgramCourse */
CREATE PROCEDURE [dbo].[LookupProgramCourse] (
	@ProgramCourseID	INTEGER
	)
AS
	SELECT ProgramCourseID, ProgramID, CourseID, SectionLimit, Active
	FROM ProgramCourse
	WHERE ProgramCourseID = @ProgramCourseID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupProgramCoursebyProgramIDCourseID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupProgramCoursebyProgramIDCourseID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Look up ProgramCourse  by ProgramID CourseID*/
Create PROCEDURE [dbo].[LookupProgramCoursebyProgramIDCourseID]
 (
	@ProgramID	INTEGER,
	@CourseID	VARCHAR(7)
	)
AS
	SET @CourseID = LTRIM(Rtrim(@CourseID))
	IF @CourseID = ''''
	BEGIN
		SET @CourseID = null
	END
	SELECT  Course.CourseID, CourseName, Credits, Tuition, ProgramID,SectionLimit, Active
	FROM ProgramCourse join Course on ProgramCourse.CourseID = Course.CourseID
	WHERE ProgramID = @ProgramID
	  AND Course.CourseID = @CourseID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupRegistrationsByOfferingID]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupRegistrationsByOfferingID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Registrations By Offering ID */
CREATE PROCEDURE [dbo].[LookupRegistrationsByOfferingID] (
	@OfferingID		INTEGER
	)
AS
	SELECT RegistrationID, StudentNumber, OfferingID, SectionCode, Mark, WithDrawal
	FROM Registration
	WHERE OfferingID = @OfferingID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupRegistrationsByStudentNumber]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupRegistrationsByStudentNumber]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Get Registrations by StudentNumber */
CREATE PROCEDURE [dbo].[LookupRegistrationsByStudentNumber] (
	@StudentNumber		INTEGER
	)
AS
	SELECT RegistrationID, StudentNumber, OfferingID, SectionCode, Mark, WithDrawal
	FROM Registration
	WHERE StudentNumber = @StudentNumber
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupStudentByName]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupStudentByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Student by Last Name */
CREATE PROCEDURE [dbo].[LookupStudentByName](@Name VARCHAR(20))
AS
	SET @Name = LTRIM(RTRIM(@Name))
	IF @Name = ''''
	BEGIN
		SET @Name = NULL
	END
	SELECT StudentNumber,FirstName,LastName,DisplayName,Gender,Address,City,ProvinceState,CountryCode,PostalCodeZip,BirthDate FROM Student
	WHERE LastName LIKE @Name+''%'' OR FirstName LIKE @Name+''%'' OR DisplayName LIKE @Name+''%''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[LookupStudentByStudentNumber]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LookupStudentByStudentNumber]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Lookup Student by Student Number */
CREATE PROCEDURE [dbo].[LookupStudentByStudentNumber](@StudentNumber INTEGER)
AS
	SELECT StudentNumber,FirstName,LastName,DisplayName,Gender,Address,City,ProvinceState,CountryCode,PostalCodeZip,BirthDate FROM Student
	WHERE StudentNumber = @StudentNumber
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateAssignment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Assignment */
CREATE PROCEDURE [dbo].[UpdateAssignment] (
	@AssignmentCode		CHAR(2),
	@OfferingID		INTEGER,
	@AssignmentMark		SMALLINT,
	@CourseMarkValue	SMALLINT,
	@Percentage		SMALLINT
	)
AS
	UPDATE Assignment
	SET	AssignmentMark		=	@AssignmentMark,
		CourseMarkValue		=	@CourseMarkValue,
		Percentage		=	@Percentage
	WHERE	AssignmentCode		=	@AssignmentCode
	AND	OfferingID		=	@OfferingID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateClub]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateClub]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Club */
CREATE PROCEDURE [dbo].[UpdateClub] (
	@ClubID			VARCHAR(10),
	@ClubName		VARCHAR(50),
	@Active			BIT,
	@EmployeeID		INTEGER		=	NULL,
	@Fee			MONEY
	)
AS
	/* Validate input parameters */
	SET @ClubName		=	LTRIM(RTRIM(@ClubName))
	
	UPDATE Club
		SET ClubName		=	@ClubName,
		    Active		=	@Active,
		    EmployeeID		=	@EmployeeID,
		    Fee			=	@Fee
		WHERE ClubID		=	@ClubID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateClubMember]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateClubMember]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Club Member */
CREATE PROCEDURE [dbo].[UpdateClubMember] (
	@StudentNumber		INTEGER,
	@ClubID			VARCHAR(10),
	@EnrolledDate		DATETIME,
	@Active			BIT
	)
AS
	SET @ClubID = LTRIM(RTRIM(@ClubID))
	
	UPDATE ClubMember
	SET	EnrolledDate 		=	@EnrolledDate,
		Active			=	@Active
	WHERE	StudentNumber		=	@StudentNumber
	AND	ClubID			=	@ClubID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[UpdateCourse](
	@CourseID		VARCHAR(7),
	@CourseName		VARCHAR(60),
	@Credits		DECIMAL(3,1),
	@Tuition		MONEY,
	@Description	VARCHAR(2048) = null
	)
AS
	SET @CourseName = LTRIM(RTRIM(@CourseName))
	Set @Description = LTRIM(RTRIM(@Description))
	if @Description = ''''
		set @Description = null
	UPDATE Course
	SET	CourseName		=	@CourseName,
		Credits			=	@Credits,
		Tuition			=	@Tuition,
		Description     =   @Description
	WHERE	CourseID		=	@CourseID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmployee]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Employee */
CREATE PROCEDURE [dbo].[UpdateEmployee](
	@EmployeeID		INTEGER,
	@FirstName		VARCHAR(20),
	@LastName		VARCHAR(20),
	@DateHired		DATETIME,
	@ReleaseDate		DATETIME	=	NULL,
	@PositionID		INTEGER,
	@ProgramID		INTEGER,
	@LoginID		VARCHAR(30)	=	NULL
	)
AS
	SET @FirstName = LTRIM(RTRIM(@FirstName))
	SET @LastName = LTRIM(RTRIM(@LastName))
	SET @LoginID = LTRIM(RTRIM(@LoginID))
	IF @LoginID = ''''
	BEGIN
		SET @LoginID = NULL
	END
	
	UPDATE Employee
	SET 	FirstName 		= 	@FirstName,
		LastName 		= 	@LastName,
		DateHired		=	@DateHired,
		ReleaseDate		=	@ReleaseDate,
		PositionID		=	@PositionID,
		ProgramID		=	@ProgramID,
		LoginID			=	@LoginID
	WHERE	EmployeeID		=	@EmployeeID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateGradeAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateGradeAssignment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Grade Assignment */
CREATE PROCEDURE [dbo].[UpdateGradeAssignment] (
	@AssignmentCode		CHAR(2),
	@OfferingId		INTEGER,
	@RegistrationID		INTEGER,
	@RawMark		SMALLINT,
	@Mark			SMALLINT
	)
AS
	UPDATE GradeAssignment
	SET	RawMark			=	@RawMark,
		Mark			=	@Mark
	WHERE	AssignmentCode		=	@AssignmentCode
	AND	OfferingID		=	@OfferingID
	AND	@RegistrationID		=	@RegistrationID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateOffering]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOffering]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Offering */
CREATE PROCEDURE [dbo].[UpdateOffering] (
	@OfferingID		INTEGER,
	@ProgramCourseID	INTEGER,
	@Semester		CHAR(5),
	@Pass			INTEGER
	)
AS
	UPDATE Offering
	SET	ProgramCourseID		=	@ProgramCourseID,
		Semester		=	@Semester,
		Pass			=	@Pass
	WHERE	OfferingID		=	@OfferingID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateOfferingSection]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateOfferingSection]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Offering Section */
CREATE PROCEDURE [dbo].[UpdateOfferingSection] (
	@OfferingID		INTEGER,
	@SectionCode		CHAR(1),
	@EmployeeID		INTEGER
	)
AS
	UPDATE OfferingSection
	SET	EmployeeID		=	@EmployeeID
	WHERE	OfferingID		=	@OfferingID
	AND	SectionCode		=	@SectionCode
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePosition]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdatePosition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Position */
CREATE PROCEDURE [dbo].[UpdatePosition] (
	@PositionID		INTEGER,
	@Description		VARCHAR(50)
	)
AS
	SET @Description = LTRIM(RTRIM(@Description))
	
	UPDATE Position
	SET	Description		=	@Description
	WHERE	PositionID		=	@PositionID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProgram]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateProgram]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Program */
CREATE PROCEDURE [dbo].[UpdateProgram] (
	@ProgramID		INTEGER,
	@ProgramName		VARCHAR(100),
	@SchoolCode		VARCHAR(10),
	@Tuition		MONEY,
	@InternationalTuition	MONEY
	)
AS
	SET @ProgramName = LTRIM(RTRIM(@ProgramName))
	SET @SchoolCode = LTRIM(RTRIM(@SchoolCode))
	
	UPDATE Program
	SET	ProgramName		=	@ProgramName,
		SchoolCode		=	@SchoolCode,
		Tuition			=	@Tuition,
		InternationalTuition	=	@InternationalTuition
	WHERE	ProgramID		=	@ProgramID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateProgramCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateProgramCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update ProgramCourse */
CREATE PROCEDURE [dbo].[UpdateProgramCourse] (
	@ProgramCourseID	INTEGER,
	@ProgramID		INTEGER,
	@CourseID		VARCHAR(7),
	@SectionLimit		INTEGER,
	@Active			BIT	
	)
AS
	SET @CourseID = LTRIM(RTRIM(@CourseID))
	
	UPDATE ProgramCourse
	SET	ProgramID		=	@ProgramID,
		CourseID		=	@CourseID,
		SectionLimit		=	@SectionLimit,
		Active			=	@Active
	WHERE	ProgramCourseID		=	@ProgramCourseID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRegistration]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateRegistration]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Registration */
CREATE PROCEDURE [dbo].[UpdateRegistration] (
	@RegistrationID		INTEGER,
	@StudentNumber		INTEGER,
	@OfferingID		INTEGER,
	@SectionCode		CHAR(1),
	@Mark			INTEGER,
	@WithDrawal		BIT
	)
AS
	UPDATE Registration
	SET	StudentNumber		=	@StudentNumber,
		OfferingID		=	@OfferingID,
		SectionCode		=	@SectionCode,
		Mark			=	@Mark,
		WithDrawal		=	@WithDrawal
	WHERE	RegistrationID		=	@RegistrationID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateRegistrationMark]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateRegistrationMark]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[UpdateRegistrationMark]
(
    @registrationid int,
    @mark int,
    @withdrawal bit
)
as
	if not exists(select registrationid
					from registration
					where registrationid = @registrationid)
	begin
		declare @msg varchar(50)
		set @msg = ''Registration '' + convert(varchar(4),@registrationid) + '' not found.''
		raiserror(@msg,16,1)
	end
	else
	begin
		update registration
		set mark = @mark,
		    withdrawal = @withdrawal
		where registrationid = @registrationid
	end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSchool]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateSchool]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update School */
CREATE PROCEDURE [dbo].[UpdateSchool] (
	@SchoolCode		VARCHAR(10),
	@SchoolName		VARCHAR(50)
	)
AS
	SET @SchoolName = LTRIM(RTRIM(@SchoolName))
	
	UPDATE School
	SET	SchoolName		=	@SchoolName
	WHERE	SchoolCode		=	@SchoolCode
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateStudent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Student */
CREATE PROCEDURE [dbo].[UpdateStudent](
	@StudentNumber		INTEGER,
	@FirstName		VARCHAR(20),
	@LastName		VARCHAR(20),
	@DisplayName		VARCHAR(20),
	@Gender			CHAR(1),
	@Address		VARCHAR(30),
	@City			VARCHAR(30),
	@ProvinceState		VARCHAR(20)	=	NULL,
	@CountryCode		CHAR(2),
	@PostalCodeZip		VARCHAR(10)	=	NULL,
	@BirthDate		DATETIME
	)
AS
	SET @FirstName = LTRIM(RTRIM(@FirstName))
	SET @LastName = LTRIM(RTRIM(@LastName))
	SET @DisplayName = LTRIM(RTRIM(@DisplayName))
	SET @Address = LTRIM(RTRIM(@Address))
	SET @City = LTRIM(RTRIM(@City))
	SET @ProvinceState = LTRIM(RTRIM(@ProvinceState))
	SET @PostalCodeZip = LTRIM(RTRIM(@PostalCodeZip))
	
	IF @ProvinceState = ''''
	BEGIN
		SET @ProvinceState = NULL
	END
	
	IF @PostalCodeZip = ''''
	BEGIN
		SET @PostalCodeZip = NULL
	END
	
	UPDATE Student
	SET	FirstName		=	@FirstName,
		LastName		=	@LastName,
		DisplayName		=	@DisplayName,
		Gender			=	@Gender,
		Address			=	@Address,
		City			=	@City,
		ProvinceState		=	@ProvinceState,
		CountryCode		=	@CountryCode,
		PostalCodeZip		=	@PostalCodeZip,
		BirthDate		=	@BirthDate
	WHERE	StudentNumber		=	@StudentNumber
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentPayment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateStudentPayment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/* Update Student Payment */
CREATE PROCEDURE [dbo].[UpdateStudentPayment] (
	@PaymentNumber		INTEGER,
	@StudentNumber		INTEGER,
	@PaymentDate		DATETIME,
	@Amount			MONEY,
	@Refunded		BIT,
	@RefundDate		DATETIME	=	NULL,
	@Description		VARCHAR(50)	=	NULL
	)
AS
	SET @Description = LTRIM(RTRIM(@Description))
	
	UPDATE StudentPayment
	SET	StudentNumber		=	@StudentNumber,
		PaymentDate		=	@PaymentDate,
		Amount			=	@Amount,
		Refunded		=	@Refunded,
		RefundDate		=	@RefundDate,
		Description		=	@Description
	WHERE	PaymentNumber		=	@PaymentNumber
' 
END
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Assignment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Assignment](
	[AssignmentCode] [char](2) NOT NULL,
	[OfferingID] [int] NOT NULL,
	[AssignmentMark] [smallint] NOT NULL,
	[CourseMarkValue] [smallint] NOT NULL,
	[Percentage] [smallint] NOT NULL,
 CONSTRAINT [PK_Assignment_AssignmentCodeOfferingID] PRIMARY KEY CLUSTERED 
(
	[AssignmentCode] ASC,
	[OfferingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Club]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Club]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Club](
	[ClubID] [varchar](10) NOT NULL,
	[ClubName] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[EmployeeID] [int] NULL,
	[Fee] [money] NOT NULL,
 CONSTRAINT [PK_Club_ClubID] PRIMARY KEY CLUSTERED 
(
	[ClubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClubMember]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClubMember]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClubMember](
	[StudentNumber] [int] NOT NULL,
	[ClubID] [varchar](10) NOT NULL,
	[EnrolledDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_ClubMembers_StudentNumberClubID] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC,
	[ClubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[CountryCode] [char](2) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CountryCode_ID] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Course](
	[CourseID] [varchar](7) NOT NULL,
	[CourseName] [varchar](75) NOT NULL,
	[Credits] [decimal](3, 1) NOT NULL,
	[Tuition] [money] NOT NULL,
	[Description] [varchar](2048) NULL,
 CONSTRAINT [PK_Course_CourseID] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[DateHired] [datetime] NOT NULL,
	[ReleaseDate] [datetime] NULL,
	[PositionID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
	[LoginID] [varchar](30) NULL,
 CONSTRAINT [PK_Employee_EmployeeID] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GradeAssignment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GradeAssignment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GradeAssignment](
	[AssignmentCode] [char](2) NOT NULL,
	[OfferingID] [int] NOT NULL,
	[RegistrationID] [int] NOT NULL,
	[RawMark] [smallint] NOT NULL,
	[Mark] [smallint] NOT NULL,
 CONSTRAINT [PK_GradeAssignment_AssignmentCodeOfferingIDRegistrationID] PRIMARY KEY CLUSTERED 
(
	[AssignmentCode] ASC,
	[OfferingID] ASC,
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IDGenerator]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IDGenerator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IDGenerator](
	[KeyField] [varchar](50) NOT NULL,
	[LastValue] [int] NULL,
 CONSTRAINT [PK_IDGenerator_KeyField] PRIMARY KEY CLUSTERED 
(
	[KeyField] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Offering]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offering]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Offering](
	[OfferingID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramCourseID] [int] NOT NULL,
	[Semester] [char](5) NOT NULL,
	[Pass] [int] NOT NULL,
 CONSTRAINT [PK_Offering_OfferingID] PRIMARY KEY CLUSTERED 
(
	[OfferingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OfferingSection]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferingSection]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferingSection](
	[OfferingID] [int] NOT NULL,
	[SectionCode] [char](1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
 CONSTRAINT [PK_OfferingSection_OfferingIDSectionCode] PRIMARY KEY CLUSTERED 
(
	[OfferingID] ASC,
	[SectionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Position]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Position]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Position](
	[PositionID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Position_PositionID] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Program]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Program]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Program](
	[ProgramID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramName] [varchar](100) NOT NULL,
	[SchoolCode] [varchar](10) NOT NULL,
	[Tuition] [money] NOT NULL,
	[InternationalTuition] [money] NOT NULL,
 CONSTRAINT [PK_Program_ProgramID] PRIMARY KEY CLUSTERED 
(
	[ProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProgramCourse]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProgramCourse]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProgramCourse](
	[ProgramCourseID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramID] [int] NOT NULL,
	[CourseID] [varchar](7) NOT NULL,
	[SectionLimit] [int] NOT NULL,
	[Active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProgramCourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_ProgramCourse_ProgramIDCourseID] UNIQUE NONCLUSTERED 
(
	[ProgramID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Registration](
	[RegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[StudentNumber] [int] NOT NULL,
	[OfferingID] [int] NOT NULL,
	[SectionCode] [char](1) NOT NULL,
	[Mark] [int] NOT NULL,
	[WithDrawal] [bit] NOT NULL,
 CONSTRAINT [PK_Registration_RegistrationID] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistrationRequest]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RegistrationRequest](
	[StudentNumber] [int] NOT NULL,
	[CourseID] [varchar](7) NOT NULL,
	[Semester] [varchar](5) NOT NULL,
	[Placed] [bit] NOT NULL,
 CONSTRAINT [PK_RegistrationRequest_StudentNumberCourseIDSemester] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC,
	[CourseID] ASC,
	[Semester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[School]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[School]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[School](
	[SchoolCode] [varchar](10) NOT NULL,
	[SchoolName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_School_SchoolCode] PRIMARY KEY CLUSTERED 
(
	[SchoolCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Student](
	[StudentNumber] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
	[DisplayName] [varchar](20) NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Address] [varchar](30) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[ProvinceState] [varchar](20) NULL,
	[CountryCode] [char](2) NOT NULL,
	[PostalCodeZip] [varchar](10) NULL,
	[BirthDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Student_StudentNumber] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentPayment]    Script Date: 9/19/2013 8:25:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentPayment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudentPayment](
	[PaymentNumber] [int] NOT NULL,
	[StudentNumber] [int] NOT NULL,
	[PaymentDate] [datetime] NULL,
	[Amount] [money] NOT NULL,
	[Refunded] [bit] NOT NULL,
	[RefundDate] [datetime] NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_StudentPayment_PaymentNumber] PRIMARY KEY CLUSTERED 
(
	[PaymentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Assignmen__Assig__66603565]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Assignment] ADD  DEFAULT ((0)) FOR [AssignmentMark]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Assignmen__Cours__6754599E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Assignment] ADD  DEFAULT ((0)) FOR [CourseMarkValue]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Assignmen__Perce__68487DD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Assignment] ADD  DEFAULT ((0)) FOR [Percentage]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Club__Active__5AEE82B9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Club] ADD  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Club__Fee__5BE2A6F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Club] ADD  DEFAULT ((0)) FOR [Fee]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ClubMembe__Activ__619B8048]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ClubMember] ADD  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__GradeAssi__RawMa__160F4887]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GradeAssignment] ADD  DEFAULT ((0)) FOR [RawMark]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__GradeAssig__Mark__17036CC0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GradeAssignment] ADD  DEFAULT ((0)) FOR [Mark]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ProgramCo__Secti__3E52440B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProgramCourse] ADD  DEFAULT ((0)) FOR [SectionLimit]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ProgramCo__Activ__3F466844]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProgramCourse] ADD  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Registrati__Mark__778AC167]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Registration] ADD  DEFAULT ((0)) FOR [Mark]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Registrat__WithD__787EE5A0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Registration] ADD  DEFAULT ((0)) FOR [WithDrawal]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Registrat__Place__3A81B327]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RegistrationRequest] ADD  DEFAULT ('False') FOR [Placed]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Student__Provinc__1CF15040]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Student] ADD  DEFAULT ('Alberta') FOR [ProvinceState]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Student__Country__1DE57479]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Student] ADD  DEFAULT ('CA') FOR [CountryCode]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__StudentPa__Payme__4316F928]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[StudentPayment] ADD  DEFAULT (getdate()) FOR [PaymentDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__StudentPa__Refun__440B1D61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[StudentPayment] ADD  DEFAULT ((0)) FOR [Refunded]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssignmentOffering_OfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_AssignmentOffering_OfferingID] FOREIGN KEY([OfferingID])
REFERENCES [dbo].[Offering] ([OfferingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssignmentOffering_OfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_AssignmentOffering_OfferingID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClubEmployee_EmployeeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Club]'))
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [FK_ClubEmployee_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClubEmployee_EmployeeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Club]'))
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [FK_ClubEmployee_EmployeeID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ClubMembe__ClubI__3C34F16F]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClubMember]'))
ALTER TABLE [dbo].[ClubMember]  WITH CHECK ADD FOREIGN KEY([ClubID])
REFERENCES [dbo].[Club] ([ClubID])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActivityStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClubMember]'))
ALTER TABLE [dbo].[ClubMember]  WITH CHECK ADD  CONSTRAINT [FK_ActivityStudent_StudentNumber] FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[Student] ([StudentNumber])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ActivityStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClubMember]'))
ALTER TABLE [dbo].[ClubMember] CHECK CONSTRAINT [FK_ActivityStudent_StudentNumber]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CK_EmployeeProgram_ProgramID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [CK_EmployeeProgram_ProgramID] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ProgramID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[CK_EmployeeProgram_ProgramID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [CK_EmployeeProgram_ProgramID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeePostion_PositionID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_EmployeePostion_PositionID] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeePostion_PositionID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employee]'))
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_EmployeePostion_PositionID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GradeAssignmentOfferingSection_AssignmentCodeOfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment]  WITH CHECK ADD  CONSTRAINT [FK_GradeAssignmentOfferingSection_AssignmentCodeOfferingID] FOREIGN KEY([AssignmentCode], [OfferingID])
REFERENCES [dbo].[Assignment] ([AssignmentCode], [OfferingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GradeAssignmentOfferingSection_AssignmentCodeOfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment] CHECK CONSTRAINT [FK_GradeAssignmentOfferingSection_AssignmentCodeOfferingID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GradeAssignmentRegistration_RegistrationID]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment]  WITH CHECK ADD  CONSTRAINT [FK_GradeAssignmentRegistration_RegistrationID] FOREIGN KEY([RegistrationID])
REFERENCES [dbo].[Registration] ([RegistrationID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_GradeAssignmentRegistration_RegistrationID]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment] CHECK CONSTRAINT [FK_GradeAssignmentRegistration_RegistrationID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offering]'))
ALTER TABLE [dbo].[Offering]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationCourse_CourseID] FOREIGN KEY([ProgramCourseID])
REFERENCES [dbo].[ProgramCourse] ([ProgramCourseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offering]'))
ALTER TABLE [dbo].[Offering] CHECK CONSTRAINT [FK_RegistrationCourse_CourseID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OfferingEmployee_EmployeeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection]  WITH CHECK ADD  CONSTRAINT [FK_OfferingEmployee_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OfferingEmployee_EmployeeID]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection] CHECK CONSTRAINT [FK_OfferingEmployee_EmployeeID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OfferingSectionOffering_OfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection]  WITH CHECK ADD  CONSTRAINT [FK_OfferingSectionOffering_OfferingID] FOREIGN KEY([OfferingID])
REFERENCES [dbo].[Offering] ([OfferingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OfferingSectionOffering_OfferingID]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection] CHECK CONSTRAINT [FK_OfferingSectionOffering_OfferingID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramSchool]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [FK_ProgramSchool] FOREIGN KEY([SchoolCode])
REFERENCES [dbo].[School] ([SchoolCode])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramSchool]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [FK_ProgramSchool]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse]  WITH CHECK ADD  CONSTRAINT [FK_ProgramCourse_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse] CHECK CONSTRAINT [FK_ProgramCourse_CourseID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramCourse_ProgramID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse]  WITH CHECK ADD  CONSTRAINT [FK_ProgramCourse_ProgramID] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ProgramID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProgramCourse_ProgramID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse] CHECK CONSTRAINT [FK_ProgramCourse_ProgramID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationOfferingSection_OfferingIDSectionCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationOfferingSection_OfferingIDSectionCode] FOREIGN KEY([OfferingID], [SectionCode])
REFERENCES [dbo].[OfferingSection] ([OfferingID], [SectionCode])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationOfferingSection_OfferingIDSectionCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_RegistrationOfferingSection_OfferingIDSectionCode]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationStudent_StudentNumber] FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[Student] ([StudentNumber])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [FK_RegistrationStudent_StudentNumber]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationRequestCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationRequestCourse_CourseID] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationRequestCourse_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest] CHECK CONSTRAINT [FK_RegistrationRequestCourse_CourseID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationRequestStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest]  WITH CHECK ADD  CONSTRAINT [FK_RegistrationRequestStudent_StudentNumber] FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[Student] ([StudentNumber])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_RegistrationRequestStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest] CHECK CONSTRAINT [FK_RegistrationRequestStudent_StudentNumber]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Student__Country__31B762FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentPaymentStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentPayment]'))
ALTER TABLE [dbo].[StudentPayment]  WITH CHECK ADD  CONSTRAINT [FK_StudentPaymentStudent_StudentNumber] FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[Student] ([StudentNumber])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentPaymentStudent_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentPayment]'))
ALTER TABLE [dbo].[StudentPayment] CHECK CONSTRAINT [FK_StudentPaymentStudent_StudentNumber]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_AssignmentCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [CK_Assignment_AssignmentCode] CHECK  (([AssignmentCode] like '[ABFLMT][0-9]'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_AssignmentCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [CK_Assignment_AssignmentCode]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_AssignmentMark]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [CK_Assignment_AssignmentMark] CHECK  (([AssignmentMark]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_AssignmentMark]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [CK_Assignment_AssignmentMark]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_CourseMarkValue]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [CK_Assignment_CourseMarkValue] CHECK  (([CourseMarkValue]>=(0) AND [CourseMarkValue]<=(100)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_CourseMarkValue]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [CK_Assignment_CourseMarkValue]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_Percentage]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [CK_Assignment_Percentage] CHECK  (([Percentage]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Assignment_Percentage]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [CK_Assignment_Percentage]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Club_Fee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Club]'))
ALTER TABLE [dbo].[Club]  WITH CHECK ADD  CONSTRAINT [CK_Club_Fee] CHECK  (([Fee]>=(0) AND [Fee]<=(100)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Club_Fee]') AND parent_object_id = OBJECT_ID(N'[dbo].[Club]'))
ALTER TABLE [dbo].[Club] CHECK CONSTRAINT [CK_Club_Fee]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_Credits]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [CK_Course_Credits] CHECK  (([Credits]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_Credits]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [CK_Course_Credits]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_Tuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [CK_Course_Tuition] CHECK  (([Tuition]>(0.00)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_Tuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [CK_Course_Tuition]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_GradeAssignment_Mark]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment]  WITH CHECK ADD  CONSTRAINT [CK_GradeAssignment_Mark] CHECK  (([Mark]>=(0) AND [Mark]<=(100)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_GradeAssignment_Mark]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment] CHECK CONSTRAINT [CK_GradeAssignment_Mark]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_GradeAssignment_RawMark]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment]  WITH CHECK ADD  CONSTRAINT [CK_GradeAssignment_RawMark] CHECK  (([RawMark]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_GradeAssignment_RawMark]') AND parent_object_id = OBJECT_ID(N'[dbo].[GradeAssignment]'))
ALTER TABLE [dbo].[GradeAssignment] CHECK CONSTRAINT [CK_GradeAssignment_RawMark]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IDGenerator_LastValue]') AND parent_object_id = OBJECT_ID(N'[dbo].[IDGenerator]'))
ALTER TABLE [dbo].[IDGenerator]  WITH CHECK ADD  CONSTRAINT [CK_IDGenerator_LastValue] CHECK  (([LastValue]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_IDGenerator_LastValue]') AND parent_object_id = OBJECT_ID(N'[dbo].[IDGenerator]'))
ALTER TABLE [dbo].[IDGenerator] CHECK CONSTRAINT [CK_IDGenerator_LastValue]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Offering_Pass]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offering]'))
ALTER TABLE [dbo].[Offering]  WITH CHECK ADD  CONSTRAINT [CK_Offering_Pass] CHECK  (([Pass]>=(0) AND [Pass]<=(100)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Offering_Pass]') AND parent_object_id = OBJECT_ID(N'[dbo].[Offering]'))
ALTER TABLE [dbo].[Offering] CHECK CONSTRAINT [CK_Offering_Pass]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Offering_SectionCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection]  WITH CHECK ADD  CONSTRAINT [CK_Offering_SectionCode] CHECK  (([SectionCode] like '[A-Z]'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Offering_SectionCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[OfferingSection]'))
ALTER TABLE [dbo].[OfferingSection] CHECK CONSTRAINT [CK_Offering_SectionCode]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Program_InternationalTuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [CK_Program_InternationalTuition] CHECK  (([InternationalTuition]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Program_InternationalTuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [CK_Program_InternationalTuition]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Program_Tuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [CK_Program_Tuition] CHECK  (([Tuition]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Program_Tuition]') AND parent_object_id = OBJECT_ID(N'[dbo].[Program]'))
ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [CK_Program_Tuition]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_SectionLimit]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse]  WITH CHECK ADD  CONSTRAINT [CK_Course_SectionLimit] CHECK  (([SectionLimit]>(-1)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Course_SectionLimit]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProgramCourse]'))
ALTER TABLE [dbo].[ProgramCourse] CHECK CONSTRAINT [CK_Course_SectionLimit]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Mark]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration]  WITH CHECK ADD  CONSTRAINT [CK_Mark] CHECK  (([Mark]>=(0) AND [Mark]<=(100)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Mark]') AND parent_object_id = OBJECT_ID(N'[dbo].[Registration]'))
ALTER TABLE [dbo].[Registration] CHECK CONSTRAINT [CK_Mark]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_RegistrationRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest]  WITH CHECK ADD  CONSTRAINT [CK_RegistrationRequest] CHECK  (([Semester] like '[FSW][1-9][0-9][0-9][0-9]'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_RegistrationRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[RegistrationRequest]'))
ALTER TABLE [dbo].[RegistrationRequest] CHECK CONSTRAINT [CK_RegistrationRequest]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Student_Gender]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student_Gender] CHECK  (([Gender]='F' OR [Gender]='M'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Student_Gender]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student_Gender]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Student_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student_StudentNumber] CHECK  (([StudentNumber]>(1000000)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Student_StudentNumber]') AND parent_object_id = OBJECT_ID(N'[dbo].[Student]'))
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student_StudentNumber]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_StudentPayment_Amount]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentPayment]'))
ALTER TABLE [dbo].[StudentPayment]  WITH CHECK ADD  CONSTRAINT [CK_StudentPayment_Amount] CHECK  (([Amount]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_StudentPayment_Amount]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentPayment]'))
ALTER TABLE [dbo].[StudentPayment] CHECK CONSTRAINT [CK_StudentPayment_Amount]
GO
USE [master]
GO
ALTER DATABASE [eSchool] SET  READ_WRITE 
GO
