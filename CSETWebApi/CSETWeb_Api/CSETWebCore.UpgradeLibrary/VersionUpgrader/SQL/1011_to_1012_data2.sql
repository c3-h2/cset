/*
Run this script on:

(localdb)\v11.0.NCUAWebTest    -  This database will be modified

to synchronize it with:

(localdb)\v11.0.CSETWeb

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.4.4.16824 from Red Gate Software Ltd at 3/20/2021 11:45:00 AM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION_LEVELS]')
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_NEW_QUESTION_SETS]
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_UNIVERSAL_SAL_LEVEL]

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION]')
ALTER TABLE [dbo].[NEW_QUESTION] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS]
ALTER TABLE [dbo].[NEW_QUESTION] NOCHECK CONSTRAINT [FK_NEW_QUESTION_UNIVERSAL_SAL_LEVEL]
ALTER TABLE [dbo].[NEW_QUESTION] NOCHECK CONSTRAINT [FK_NEW_QUESTION_UNIVERSAL_SUB_CATEGORY_HEADINGS]

PRINT(N'Drop constraint FK_Component_Questions_NEW_QUESTION from [dbo].[COMPONENT_QUESTIONS]')
ALTER TABLE [dbo].[COMPONENT_QUESTIONS] NOCHECK CONSTRAINT [FK_Component_Questions_NEW_QUESTION]

PRINT(N'Drop constraint FK_FINANCIAL_QUESTIONS_NEW_QUESTION from [dbo].[FINANCIAL_QUESTIONS]')
ALTER TABLE [dbo].[FINANCIAL_QUESTIONS] NOCHECK CONSTRAINT [FK_FINANCIAL_QUESTIONS_NEW_QUESTION]

PRINT(N'Drop constraint FK_NERC_RISK_RANKING_NEW_QUESTION from [dbo].[NERC_RISK_RANKING]')
ALTER TABLE [dbo].[NERC_RISK_RANKING] NOCHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_QUESTION]

PRINT(N'Drop constraint FK_NEW_QUESTION_SETS_NEW_QUESTION from [dbo].[NEW_QUESTION_SETS]')
ALTER TABLE [dbo].[NEW_QUESTION_SETS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS_NEW_QUESTION]

PRINT(N'Drop constraint FK_REQUIREMENT_QUESTIONS_NEW_QUESTION1 from [dbo].[REQUIREMENT_QUESTIONS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_NEW_QUESTION1]

PRINT(N'Drop constraint FK_REQUIREMENT_QUESTIONS_SETS_NEW_QUESTION from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_QUESTION]

PRINT(N'Drop constraints from [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS]')
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] NOCHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] NOCHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS]
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] NOCHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_UNIVERSAL_SUB_CATEGORIES]

PRINT(N'Drop constraint FK_SUB_CATEGORY_ANSWERS_UNIVERSAL_SUB_CATEGORY_HEADINGS from [dbo].[SUB_CATEGORY_ANSWERS]')
ALTER TABLE [dbo].[SUB_CATEGORY_ANSWERS] NOCHECK CONSTRAINT [FK_SUB_CATEGORY_ANSWERS_UNIVERSAL_SUB_CATEGORY_HEADINGS]

PRINT(N'Drop constraints from [dbo].[NEW_REQUIREMENT]')
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_NCSF_Category]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_SETS]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_STANDARD_CATEGORY]

PRINT(N'Drop constraint FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT from [dbo].[FINANCIAL_REQUIREMENTS]')
ALTER TABLE [dbo].[FINANCIAL_REQUIREMENTS] NOCHECK CONSTRAINT [FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_NERC_RISK_RANKING_NEW_REQUIREMENT from [dbo].[NERC_RISK_RANKING]')
ALTER TABLE [dbo].[NERC_RISK_RANKING] NOCHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_Parameter_Requirements_NEW_REQUIREMENT from [dbo].[PARAMETER_REQUIREMENTS]')
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] NOCHECK CONSTRAINT [FK_Parameter_Requirements_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_LEVELS]')
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] NOCHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_QUESTIONS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_QUESTIONS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_SETS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT from [dbo].[REQUIREMENT_SOURCE_FILES]')
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] NOCHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[GEN_FILE]')
ALTER TABLE [dbo].[GEN_FILE] NOCHECK CONSTRAINT [FK_GEN_FILE_FILE_REF_KEYS]
ALTER TABLE [dbo].[GEN_FILE] NOCHECK CONSTRAINT [FK_GEN_FILE_FILE_TYPE]

PRINT(N'Drop constraint FILE_KEYWORDS_GEN_FILE_FK from [dbo].[FILE_KEYWORDS]')
ALTER TABLE [dbo].[FILE_KEYWORDS] NOCHECK CONSTRAINT [FILE_KEYWORDS_GEN_FILE_FK]

PRINT(N'Drop constraint FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE from [dbo].[GEN_FILE_LIB_PATH_CORL]')
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] NOCHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE]

PRINT(N'Drop constraint FK_MATURITY_REFERENCES_GEN_FILE from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_GEN_FILE]

PRINT(N'Drop constraint FK_MATURITY_SOURCE_FILES_GEN_FILE from [dbo].[MATURITY_SOURCE_FILES]')
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] NOCHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_GEN_FILE]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_GEN_FILE from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_GEN_FILE]

PRINT(N'Drop constraint FK_REQUIREMENT_SOURCE_FILES_GEN_FILE from [dbo].[REQUIREMENT_SOURCE_FILES]')
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] NOCHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_GEN_FILE]

PRINT(N'Drop constraint FK_SET_FILES_GEN_FILE from [dbo].[SET_FILES]')
ALTER TABLE [dbo].[SET_FILES] NOCHECK CONSTRAINT [FK_SET_FILES_GEN_FILE]

PRINT(N'Drop constraint FK_AGGREGATION_INFORMATION_AGGREGATION_TYPES from [dbo].[AGGREGATION_INFORMATION]')
ALTER TABLE [dbo].[AGGREGATION_INFORMATION] NOCHECK CONSTRAINT [FK_AGGREGATION_INFORMATION_AGGREGATION_TYPES]

PRINT(N'Update rows in [dbo].[NEW_QUESTION]')
UPDATE [dbo].[NEW_QUESTION] SET [Ranking]=99 WHERE [Question_Id] = 17032
UPDATE [dbo].[NEW_QUESTION] SET [Ranking]=100 WHERE [Question_Id] = 17033
UPDATE [dbo].[NEW_QUESTION] SET [Ranking]=3 WHERE [Question_Id] = 17034
PRINT(N'Operation applied to 3 rows out of 3')

PRINT(N'Update rows in [dbo].[NEW_REQUIREMENT]')
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='Contracts with third-party equipment vendors establish security requirements for remote access to equipment.' WHERE [Requirement_Id] = 29952
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='To use the plant guest network, users are required to accept a user agreement.' WHERE [Requirement_Id] = 29953
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='Access to the server room is restricted to authorized staff only.' WHERE [Requirement_Id] = 29955
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='A water utility chooses to not allow personal mobile devices to connect to the control network. The utility does provide mobile devices managed by IT that can connect to the network.' WHERE [Requirement_Id] = 29964
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='The WiFi for the control system has a unique SSID from the business network.' WHERE [Requirement_Id] = 29974
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='A wireless LAN specific domain controller is in place.' WHERE [Requirement_Id] = 29975
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='All staff are aware of who they would report to if they notice suspicious behavior in the system.' WHERE [Requirement_Id] = 29986
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='A SCADA technician must have a second technician review changes made to production equipment before they are implemented.' WHERE [Requirement_Id] = 29991
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='A utility has a network intrusion detection system (NIDS) to monitor network traffic.' WHERE [Requirement_Id] = 29997
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='System integrators can only access the facility''s equipment remotely from a VPN connection.' WHERE [Requirement_Id] = 30000
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='Utility has implemented tiered access so non-administrator users are unable to make changes to system security settings.' WHERE [Requirement_Id] = 30008
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='The Emergency Response Plan is stored in a central repository and clearly displays the version and date of when it was implemented.' WHERE [Requirement_Id] = 30013
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='A database is used to keep track of building conditions in the facility.' WHERE [Requirement_Id] = 30018
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='A company policy is in place limiting the access of third-party users to assets, systems, and data.' WHERE [Requirement_Id] = 30021
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='An operator who props open doors to critical areas could face disciplinary action as outlined in the utility''s policies and procedures.' WHERE [Requirement_Id] = 30023
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]='When decommissioning a network device that was used in the production environment, IT is required to return it to factory conditions before it leaves the facility.' WHERE [Requirement_Id] = 30037
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=99 WHERE [Requirement_Id] = 30042
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=100 WHERE [Requirement_Id] = 30043
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=3 WHERE [Requirement_Id] = 30044
PRINT(N'Operation applied to 19 rows out of 19')

PRINT(N'Update row in [dbo].[GEN_FILE]')
UPDATE [dbo].[GEN_FILE] SET [Summary]='This document focuses on the CMMC model which measures cybersecurity maturity with
five levels and aligns a set of processes and practices with the type and sensitivity of
information to be protected and the associated range of threats.' WHERE [Gen_File_Id] = 3957

PRINT(N'Update rows in [dbo].[DIAGRAM_TEMPLATES]')
UPDATE [dbo].[DIAGRAM_TEMPLATES] SET [Diagram_Markup]='<mxGraphModel dx="1285" dy="682" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="0" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
  <root>
    <mxCell id="0"/>
    <mxCell id="1" value="Main Layer" parent="0"/>
    <object SAL="Moderate" label="Dispatcher Training Simulator" internalLabel="Dispatcher Training Simulator" ZoneType="Other" zone="1" Criticality="Low" id="2">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1">
        <mxGeometry x="1004" y="876.5" width="389" height="287" as="geometry"/>
      </mxCell>
    </object>
    <object label="Switch 2" ComponentGuid="1a76e6fc-b958-423b-bae0-a51260b1dc70" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="7">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="204.3334" y="68.16669" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Firewall" ComponentGuid="b5f05706-9ee1-4d94-8e0d-f3030b7ba8d3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="8">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="107" y="54.16669" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="Workstation 4" ComponentGuid="4512f506-448d-4d3e-9535-a7560c00ea49" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="9">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="107" y="174.5" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Workstation 5" ComponentGuid="e1f1e922-b19b-4f57-a905-7908b1acd037" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="10">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="293.1428" y="174.5" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Printer" ComponentGuid="ab4d8299-176a-448e-8a8c-74dbd3fc3300" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="11">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/network_printer.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="293.1428" y="54.16669" width="60" height="54" as="geometry"/>
      </mxCell>
    </object>
    <object label="DTS Server" ComponentGuid="0993abb5-542d-4486-83ab-d3264a8987df" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="12">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="204.3334" y="174.5" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="IDS3" ComponentGuid="e6a72eb1-888b-45b8-a587-45d71a1f8754" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="13">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ids.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="25.988039999999998" y="174.5" width="60" height="17" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_373" ComponentGuid="e5573b0f-e7f0-4763-88f0-e49ad338243b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="14">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="46.98804" y="69.16669999999998" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="114" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="7" target="12" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="115" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="7" target="11" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="116" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="7" target="10" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="117" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="7" target="9" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="137" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="8" target="14" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="160" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="14" target="13" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="161" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="8" target="7" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object SAL="Low" label="Corporate" internalLabel="Corporate" ZoneType="Corporate" zone="1" Criticality="Low" id="3">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#fdf9d9;swimlaneFillColor=#fffef4;" parent="1" vertex="1">
        <mxGeometry x="1002" y="343.5" width="394" height="383" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corporate Firewall" ComponentGuid="f26a14a1-2085-4437-afa3-3d1f85f13f6d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="15">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="295.1428" y="68.20001" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_37a" ComponentGuid="5c5ca21d-a5a5-4024-a835-95e52fb13923" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="16">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="230.3334" y="83.20001" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp. IDS" ComponentGuid="9e1c7894-dfa1-4fcf-94ac-fa42d90c7f70" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="17">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ids.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="211.3334" y="171" width="60" height="17" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp. Router" ComponentGuid="06523bdd-26b4-4815-a8f7-a9eb68358d78" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="18">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="24.98804" y="78.20001" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp. Switch" ComponentGuid="2b5f43b4-44f2-4638-9236-131c088627ff" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="19">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="24.98804" y="171" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Remote Access Server" ComponentGuid="25382d9c-965a-4e0c-904a-7490b1043f40" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="20">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/remote_access_server.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="37.98804" y="270.2338" width="34" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Public Historian" ComponentGuid="a8c731d4-0d6b-4529-8f9b-05fa7df72910" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="21">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/historian.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="109" y="171" width="48" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="139" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="18" target="16" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="140" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="17" target="16" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="141" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="16" target="15" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="143" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="18" target="19" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="144" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="19" target="21" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="145" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="19" target="20" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object SAL="High" label="SCADA" internalLabel="SCADA" ZoneType="Control System" zone="1" Criticality="Low" id="4">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3eef2;swimlaneFillColor=#f2f8f9;" parent="1" vertex="1">
        <mxGeometry x="99" y="359" width="872" height="819" as="geometry"/>
      </mxCell>
    </object>
    <object label="Firewall2" ComponentGuid="06e6c024-f1c6-4187-9968-f2c29a4aa785" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="34">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="641.017" y="50.20001000000002" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA Firewall" ComponentGuid="21ec56a5-3a82-4e36-81d0-b604676e4824" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="35">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="20" y="147" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="Scada Server A" ComponentGuid="2ce2118a-651c-44a1-849e-6f1b55b9df91" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="36">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="33" y="665.3334" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Scada Server B" ComponentGuid="bcfa3b53-c80b-45e7-9a1a-29683ecec25f" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="37">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="119.29999999999995" y="665.3334" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Data Server A" ComponentGuid="b14b1e53-f979-4e33-805f-00b367dc1e00" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="38">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/database_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="207.5" y="665.3334" width="43" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Operator &#xa;Workstation" ComponentGuid="13ee607c-00b7-43b4-986c-698f382eb3b5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="39">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="646.017" y="676.3334" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Front-end Switch(s)" ComponentGuid="abea54b8-c381-49f3-9570-a8c6f1907182" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="40">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="194.5" y="160" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA IDS" ComponentGuid="2d94e0ef-9ecd-47c1-8a70-2f693ad7a111" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="41">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ids.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="110.29999999999995" y="50.20001000000002" width="60" height="17" as="geometry"/>
      </mxCell>
    </object>
    <object label="Router2" ComponentGuid="c289a29d-baf1-45d5-82fc-9ce0787328cd" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="42">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="644.017" y="255.23379999999997" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_126" ComponentGuid="10bc37d9-1884-4d3c-9a4d-8f6d6d760558" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="43">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="130.29999999999995" y="161" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_177" ComponentGuid="c927f452-1c35-48f5-a5cf-a0fa2d8ae939" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="44">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="663.017" y="171" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="IDS2" ComponentGuid="4fb1ba56-3547-4617-ab96-14393fdf22d6" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="45">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ids.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="728.1669999999999" y="173" width="60" height="17" as="geometry"/>
      </mxCell>
    </object>
    <object label="Data Server B" ComponentGuid="e34873db-3993-4b93-9e7f-540ff2632cf3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="46">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/database_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="293.6667" y="665.3334" width="43" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Power Analysis &#xa;Software Server A" ComponentGuid="8ff46729-dafd-4ba6-9e6f-06d4d8711ffa" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="47">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="381.5" y="665.3334" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Power Analysis  &#xa;Software Server B" ComponentGuid="a4fdc284-a9c3-47e0-8288-999bf8e20f64" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="48">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="478.5" y="665.3334" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Front-End &#xa;Server A" ComponentGuid="547bce9b-0ac7-464a-9f66-c87fe30f2f09" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="49">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="118.29999999999995" y="255.23379999999997" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Switch2" ComponentGuid="df34d740-d626-4393-aefa-4150286017d8" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="50">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="555.8" y="380" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="RTU 1" ComponentGuid="95eb6f62-1e26-4207-854d-1f9a13379c6e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="51">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="469.5" y="50.20001000000002" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="RTU 2" ComponentGuid="ebc01422-8047-4097-bab4-3325cdda4bf5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="52">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="372.5" y="50.20001000000002" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="RTU 3" ComponentGuid="e7de89ce-f8d9-4201-9364-a42353714bd5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="53">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="284.6667" y="50.20001000000002" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="Maintenance &#xa;Workstation" ComponentGuid="5a38c8ca-ad34-4563-acb9-1e75306661c8" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="54">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="558.8" y="676.3334" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Controller" ComponentGuid="356f4368-4f8f-4aab-a821-d2f697240845" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="55">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="733.1669999999999" y="676.3334" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Front-End &#xa;Server B" ComponentGuid="24551d86-9030-4011-a264-6d82478b0c69" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="56">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="292.6667" y="255.23379999999997" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_287" ComponentGuid="11ddc4f6-51bc-4d6d-9c41-a5787e421940" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="57">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="489.5" y="161" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_288" ComponentGuid="471582a7-5a18-4e0d-b579-df0d9526321e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="58">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="130.29999999999995" y="383" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_289" ComponentGuid="c7a2cd43-09ab-49cb-8429-164bd87ad16c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="59">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="304.6667" y="383" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_295" ComponentGuid="3d61a4dc-f21c-4049-88f2-b3befd37d3f3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="60">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="392.5" y="161" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_296" ComponentGuid="67288dff-d641-4f9f-8899-507f7a928ed3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="61">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="304.6667" y="161" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="GPS Clock" ComponentGuid="0d979924-7f58-45ed-a5ca-5c92d65b4e5c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="62">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/clock.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="110.29999999999995" y="467" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2a4" ComponentGuid="4d617312-c739-465a-aebd-1a2d37e5cfb9" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="63">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="392.5" y="383" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Workstation" ComponentGuid="8c17c6a7-7ee6-4500-9591-db54508dd31e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="64">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="286.6667" y="483" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Workstation2" ComponentGuid="e4aef5d5-6825-445e-baf4-3ea05a34658a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="65">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="374.5" y="483" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Workstation 3" ComponentGuid="e692c607-173b-43b7-ab5f-75c840120805" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="66">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="471.5" y="484" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2b3" ComponentGuid="97470a71-710f-44b0-8ede-3934a8872e84" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="67">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="489.5" y="383" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Network Printer" ComponentGuid="1c527624-b0f8-4467-88ef-a7abfa1db835" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="68">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/network_printer.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="373.5" y="255.23379999999997" width="60" height="54" as="geometry"/>
      </mxCell>
    </object>
    <object label="Switch" ComponentGuid="507ba476-aa23-463c-98e0-d5f0a87338e5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="69">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="730.1669999999999" y="255.23379999999997" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_309" ComponentGuid="0d04e75f-34c4-4912-9951-e458df76bb9d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="70">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="752.1669999999999" y="383" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_30a" ComponentGuid="6f22c09e-a4ae-46c6-a9e0-0685f8235bb2" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="71">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="752.1669999999999" y="508" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Web Server A" ComponentGuid="cee3f1c4-c552-4f89-b01b-5c6655b180c5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="72">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/web_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="809.5" y="364" width="45" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Web Server B" ComponentGuid="fb0955de-d9d8-4de1-b75e-e9afd06fd12b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="73">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/web_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="816.1669999999999" y="488" width="45" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Network Isolator" ComponentGuid="51d8db8e-e9f4-4b78-859c-4ec19a2c6326" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="74">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/unknown.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="641.017" y="368" width="50" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_329" ComponentGuid="6acc9a2d-ba75-4b3f-9fe6-420368e8cace" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="75">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="752.1669999999999" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_330" ComponentGuid="19c14d93-fc94-49c4-ae49-28063ab962e6" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="76">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="665.017" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_353" ComponentGuid="265224ab-4080-4582-836b-4535d766db5b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="77">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="577.8" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_354" ComponentGuid="6115ae8d-1891-4fca-aa3c-1ea70a71cc7b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="78">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="489.5" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_355" ComponentGuid="6f7542dc-5201-4414-b8d0-ee7aaec50a27" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="79">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="392.5" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_356" ComponentGuid="2018162d-54a3-4170-b35c-2a8f5e729259" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="80">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="304.6667" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_357" ComponentGuid="a241a151-8548-4a7a-b7e2-8144f38b3e34" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="81">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="218.5" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_358" ComponentGuid="131cfcfc-90b7-4d45-bd66-0c232fe03026" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="82">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="130.29999999999995" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_359" ComponentGuid="3df6cc61-0c3f-4e54-9584-5a0a75686cdd" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="83">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="44" y="587.1667" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="84" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="35" target="43" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="89" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="43" target="40" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="85" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="41" target="43" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="86" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="44" target="34" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="88" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="42" target="44" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="87" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="44" target="45" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="90" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="43" target="49" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="94" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="51" target="57" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="93" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="49" target="58" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="92" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="56" target="59" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="99" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="58" target="59" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="96" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="60" target="52" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="95" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="57" target="60" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="146" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="61" target="40" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="98" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="61" target="53" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="91" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="61" target="56" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="97" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="60" target="61" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="100" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="58" target="62" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="101" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="59" target="63" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="102" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="59" target="64" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="103" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="63" target="65" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="107" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="67" target="50" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="104" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="63" target="67" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="105" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="67" target="66" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="106" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="63" target="68" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="122" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="42" target="69" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="108" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="69" target="70" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="109" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="70" target="71" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="110" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="72" target="70" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="111" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="73" target="71" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="113" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="74" target="50" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="112" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="70" target="74" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="119" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="75" target="55" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="121" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="76" target="39" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="120" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="75" target="76" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="118" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="77" target="50" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="124" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="77" target="54" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="123" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="76" target="77" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="126" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="78" target="48" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="125" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="77" target="78" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="128" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="79" target="47" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="127" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="78" target="79" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="130" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="80" target="46" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="129" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="79" target="80" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="132" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="81" target="38" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="131" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="80" target="81" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="134" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="82" target="37" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="133" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="82" target="81" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="136" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="83" target="36" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="135" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="82" target="83" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object label="Web" ComponentGuid="629b530b-759f-4622-9906-60fd1601c79a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" id="6">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/web.svg;labelBackgroundColor=none;" parent="1" vertex="1">
        <mxGeometry x="1297.1428571428569" y="240.20628571428574" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="142" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;entryX=0.5;entryY=1;entryDx=0;entryDy=0;" parent="1" source="15" target="6" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1460" y="298" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="Moderate" label="Substation" internalLabel="Substation" ZoneType="Plant System" zone="1" parent="4" Criticality="Low" id="5">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#e6dbee;swimlaneFillColor=#f2edf6;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="-342" y="370" width="412" height="563" as="geometry"/>
      </mxCell>
    </object>
    <object label="Substation Router" ComponentGuid="8b82818b-c823-4e2a-82a6-0a66b137a35c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="22">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="310" y="149" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial Switch(s)" ComponentGuid="b0c63764-345e-4ed4-9e60-ed4925f6703b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="23">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="130.5" y="150" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Local HMI" ComponentGuid="22b47b36-c074-4884-8e64-d958976169c8" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="24">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="130.5" y="52.19999999999999" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Network Ring" ComponentGuid="44655839-dac2-4d34-8643-2360d1da7c8b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="25">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/optical_ring.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="130.5" y="240.23379999999997" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial Switch 1" ComponentGuid="8bb38e56-859f-4e60-8457-fea6a45afe6a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="26">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="310" y="257.2338" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial Switch 2" ComponentGuid="7fd02b2b-4c2b-4230-8fc3-8875f7dfe285" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="27">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="230" y="361" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial Switch 3" ComponentGuid="956ddfaf-e456-4a42-bb2f-4184865ff482" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="28">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="130.5" y="361" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial Switch 4" ComponentGuid="56276fee-f58d-4e9a-953f-c1c748a118be" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="29">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="36" y="257.2338" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="IED 1" ComponentGuid="b2235c17-de5d-4849-9ad0-30d22c549c8a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="30">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ied.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="310" y="469" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="IED 2" ComponentGuid="b29a3a79-c084-4088-a216-ff52f5e8fa7c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="31">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ied.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="230" y="469" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="IED 3" ComponentGuid="661b3fdd-4d45-418b-be09-342de3f8fbd6" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="32">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ied.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="130.5" y="469" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="IED 4" ComponentGuid="c3a9449d-0060-4bcc-bec1-16b7261a7612" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="33">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ied.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="36" y="469" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="148" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="22" target="23" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="149" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="23" target="24" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="150" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="23" target="25" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="151" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="25" target="26" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="152" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="25" target="27" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="153" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="25" target="28" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="154" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="25" target="29" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="155" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="26" target="30" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="156" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="27" target="31" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="157" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="28" target="32" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="158" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="29" target="33" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="138" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="34" target="18" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="147" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="35" target="22" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="159" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="75" target="14" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
  </root>
</mxGraphModel>' WHERE [Id] = 4
UPDATE [dbo].[DIAGRAM_TEMPLATES] SET [Diagram_Markup]='<mxGraphModel dx="1947" dy="1034" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="0" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
  <root>
    <mxCell id="0"/>
    <mxCell id="1" value="Main Layer" parent="0"/>
    <object SAL="Low" label="Corporate-Low" internalLabel="Corporate" ZoneType="Corporate" zone="1" Criticality="Low" id="2">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#fdf9d9;swimlaneFillColor=#fffef4;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="40" y="100" width="260" height="520" as="geometry"/>
      </mxCell>
    </object>
    <object label="External Firewall" ComponentGuid="f1fac8bc-739a-4912-b458-046fd14f9f1e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="8">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="85.5" y="32.14987" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="Public Historian" ComponentGuid="9fb0d7bb-3aed-426d-99f2-f3cc02d63292" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="9">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/historian.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="14" y="422.1548" width="48" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp Router" ComponentGuid="a1daf7de-0bb2-4826-8f9a-9ecccb3b0fbf" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="10">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="87.5" y="223.49" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_177" ComponentGuid="8f961afc-caeb-486a-89a2-31dd77d5b592" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="11">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="106.5" y="151.98" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp IDS" ComponentGuid="f627088a-7f73-4cc3-b1db-00f4b22e7245" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="12">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ids.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="171" y="153.98000000000002" width="60" height="17" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp Switch" ComponentGuid="a266ede2-a0c9-4306-88d9-bfb2f4713f67" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="13">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="87.5" y="321.98" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Remote Access &#xa;Server" ComponentGuid="0c785c82-d2ea-404e-83a3-a26f0cfa4807" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="14">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/remote_access_server.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="171" y="410.1548" width="34" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="92" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="11" target="8" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="93" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="11" target="12" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="95" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="10" target="11" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="96" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="10" target="13" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="97" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="13" target="9" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="98" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="13" target="14" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object SAL="High" label="Water Treatment Plant-High" internalLabel="Water Treatment Plant" ZoneType="Control System" zone="1" Criticality="Low" id="3">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3eef2;swimlaneFillColor=#f2f8f9;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="320" y="100" width="800" height="820" as="geometry"/>
      </mxCell>
    </object>
    <object label="Firewall" ComponentGuid="b726a04c-d4b4-4ac4-8e90-a5ed4ed187da" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="15">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="18.272" y="209.49" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA &#xa;Server(s)" ComponentGuid="4a3a4dc8-871c-4ab7-8653-a48589590fb3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="16">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="458" y="127.98" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Internal &#xa;Historian" ComponentGuid="4d03a32c-52fd-4238-9cab-ae9a059c55a2" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="17">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/historian.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="382.5" y="127.98" width="48" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Operator &#xa;Workstation(s)" ComponentGuid="080b4be4-f08d-400e-994b-c14af9e2fcb7" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="18">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="532" y="127.98" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Master Radio &lt;br&gt;Ethernet&lt;br&gt;" ComponentGuid="6a1d369c-0767-435f-8dc7-fce0c8de5c72" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="20">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/serial_radio.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="705.8022" y="321.98" width="60" height="31" as="geometry"/>
      </mxCell>
    </object>
    <object label="Switch(s)" ComponentGuid="fff370fe-7b02-4b1d-9061-851667b75c78" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="21">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="209" y="223.49" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Network Ring" ComponentGuid="ecc05ddc-a32b-484d-9164-67154482d13e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="25">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/optical_ring.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="211" y="302.98" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial &#xa;Switch 1" ComponentGuid="f0384245-c908-482b-b206-c5aa49d029d5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="27">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="18.272" y="321.98" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial &#xa;Switch 2" ComponentGuid="cf36ff88-626f-4b34-bf83-372f5c3a3ee6" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="28">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="212" y="422.1548" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial &#xa;Switch 3" ComponentGuid="0da2aee3-661c-4316-b56c-1cfc34ff7dc1" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="29">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="375.5" y="422.1548" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial &#xa;Switch 4" ComponentGuid="ef0ece89-a66a-402f-8fe0-a9c80fb01302" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="30">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="532" y="321.98" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="PLC" ComponentGuid="e1dceaa0-b503-490e-8002-4a8accfd2ebd" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="31">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="107" y="544.0960000000002" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object label="I/O" ComponentGuid="9258ed00-c7a7-4c63-a4ab-d2a0b6316195" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="32">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="107" y="638.4120000000001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="I/O 1" ComponentGuid="aea5f99d-b52d-4b3a-a619-fb5e7f0637a3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="35">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;direction=east;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="291" y="638.4120000000001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="PLC 2" ComponentGuid="c41a1119-32eb-40f0-aadd-cb9337f5c927" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="36">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="291" y="544.0960000000001" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object label="PLC 3" ComponentGuid="731fa609-9ac8-44f8-800f-071fd5ae0287" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="37">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="448" y="544.0960000000001" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object label="I/O 3" ComponentGuid="d056355c-0221-4131-9f14-a40568584310" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="38">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="448" y="638.412" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="PLC 4" ComponentGuid="84236fb1-9fc9-4cd4-b939-c13d2bb62a77" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="40">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="618" y="544.0960000000001" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object label="I/O 4" ComponentGuid="1de9fba5-2c92-43db-81fc-d8cbab485aa0" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="41">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="618" y="638.412" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_29b" ComponentGuid="62642d2e-bb09-49d8-9b98-2de0c9eff6e0" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="43">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="650" y="224.99" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2a0" ComponentGuid="70233ebd-6b10-4193-bd75-df817bfb4d03" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="44">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="396.5" y="224.49" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2a1" ComponentGuid="c0afd8bd-dcf5-4a95-a47d-ab967c57607c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="45">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="472" y="224.49" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2a2" ComponentGuid="fd9aea8d-69cb-4d6c-a42c-0d8c550d76f7" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="46">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="553" y="224.49" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2ab" ComponentGuid="28aa34d5-9925-4b38-939a-f7008f35fe82" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="47">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="42.272" y="548.096" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2b0" ComponentGuid="c85f469e-ca94-4e36-9aa3-a9dd17b9892d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="48">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="42.272" y="644.412" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2b8" ComponentGuid="bf747f2b-b52f-4e18-93d5-88cd140dc7c8" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="50">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="233" y="548.096" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2b9" ComponentGuid="86055b45-c2ef-41c3-9b58-bdac37e063b2" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="51">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="233" y="644.412" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_305" ComponentGuid="92c4c9cb-b62d-4503-a3f3-953ceabd5b7a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="53">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="396.5" y="548.096" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_306" ComponentGuid="2586016d-e6ae-493a-b44e-b61c1de355ee" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="54">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="396.5" y="644.412" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_312" ComponentGuid="47a23686-1e9a-42b9-af10-375c948d88e0" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="56">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="553" y="548.096" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_313" ComponentGuid="10f257a3-6205-403d-9592-3596a0437f5a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="57">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="553" y="644.412" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="CON-53" ComponentGuid="c39d26c4-1376-430f-ae3b-dab5ae1fc82e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="80">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="723.8022" y="145.2998" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="116" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="45" target="16" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="114" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="44" target="17" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="115" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="18" target="46" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="87" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="20" target="80" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="104" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="21" target="25" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="105" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="25" target="27" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="106" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="28" target="25" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="107" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="25" target="29" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="108" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="25" target="30" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="117" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="27" target="47" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="123" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="28" target="50" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="129" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="29" target="53" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="135" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="30" target="56" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="120" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="47" target="31" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="121" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="48" target="32" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="127" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="51" target="35" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="126" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="50" target="36" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="134" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="53" target="37" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="133" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="54" target="38" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="138" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="56" target="40" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="139" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="57" target="41" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="111" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="44" target="45" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="112" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="45" target="46" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="118" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="47" target="48" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="124" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="50" target="51" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="130" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="53" target="54" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="136" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="56" target="57" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="86" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="30" target="20" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="662" y="337.8573033735438" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <object ComponentGuid="c941fff3-7f15-45fb-9942-9af5d680725c" Criticality="Low" label="Engineering&lt;br&gt;Workstation(s)&lt;br&gt;" internalLabel="EW-2" id="plqYrKeGjVpLpWE4VVd8-156">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="630" y="126" width="60" height="52" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="141" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" parent="3" source="46" target="43" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="618" y="233.01348993288593" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="plqYrKeGjVpLpWE4VVd8-160" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" parent="3" source="44" target="21" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="316.5" y="234.49" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="plqYrKeGjVpLpWE4VVd8-161" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="43" target="plqYrKeGjVpLpWE4VVd8-156" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="83" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="15" target="21" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="131" y="233.6517634371496" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="Other Treatment Plants-High" internalLabel="Other Treatment Plants" ZoneType="Plant System" zone="1" Criticality="Low" id="4">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#e6dbee;swimlaneFillColor=#f2edf6;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1140" y="100" width="400" height="240" as="geometry"/>
      </mxCell>
    </object>
    <object label="Remote &#xa;Radio" ComponentGuid="e93b1d8b-780e-42a3-9fe5-39a8dec7d926" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="59">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/serial_radio.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="21" y="140.2998" width="60" height="31" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="559fd8a1-93b8-4ea2-b426-7d926641dc4a" Criticality="Low" label="PLC-1" internalLabel="PLC-1" id="plqYrKeGjVpLpWE4VVd8-155">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="271" y="140" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="d5e33582-5777-4cff-a2d3-7e0cfab7a0f4" Criticality="Low" label="SW-3" internalLabel="SW-3" id="plqYrKeGjVpLpWE4VVd8-157">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="158" y="141" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="89" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;entryX=0;entryY=0.75;entryDx=0;entryDy=0;" parent="4" source="59" target="plqYrKeGjVpLpWE4VVd8-157" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="118" y="155.43166813186804" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="145" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" target="plqYrKeGjVpLpWE4VVd8-155" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="214" y="153" as="sourcePoint"/>
        <mxPoint x="266.2664999999997" y="153.42958317557463" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="Remote Sites-High" internalLabel="Remote Sites-High" ZoneType="Control System" zone="1" Criticality="Low" id="5">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3eef2;swimlaneFillColor=#f2f8f9;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1140" y="375" width="400" height="240" as="geometry"/>
      </mxCell>
    </object>
    <object label="Remote &#xa;Radio" ComponentGuid="af95dc47-e138-4c04-adbe-d674d19a8c5c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="65">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/serial_radio.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="18.8501" y="46.01807" width="60" height="31" as="geometry"/>
      </mxCell>
    </object>
    <object label="RTU(s)" ComponentGuid="62d92c78-5e3f-4b5c-9662-0cd084871d45" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="67">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="266.2665" y="43.01807" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="1543ebb4-a75e-42ee-a017-86916ca7bf54" Criticality="Low" label="SW-4" internalLabel="SW-4" id="plqYrKeGjVpLpWE4VVd8-158">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="154" y="47" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="143" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="plqYrKeGjVpLpWE4VVd8-158" target="67" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="240.64120000000003" y="54.16770626404832" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="90" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;entryX=0;entryY=0.75;entryDx=0;entryDy=0;" parent="5" source="65" target="plqYrKeGjVpLpWE4VVd8-158" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="115.85010000000011" y="61.14993813186811" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object label="Web" ComponentGuid="609aca56-6f87-4cfa-8634-c06169d6b7cc" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" internalLabel="Web" id="7">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/web.svg;labelBackgroundColor=none;" parent="1" vertex="1">
        <mxGeometry x="-42.523028248587565" y="127.97999999999999" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="91" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="7" target="8" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="82" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="15" target="10" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="88" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="20" target="65" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="154" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="59" target="80" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
  </root>
</mxGraphModel>' WHERE [Id] = 10
UPDATE [dbo].[DIAGRAM_TEMPLATES] SET [Diagram_Markup]='<mxGraphModel dx="1947" dy="1034" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="0" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
  <root>
    <mxCell id="0"/>
    <mxCell id="1" value="Main Layer" parent="0"/>
    <object SAL="Low" label="Corporate-Low" internalLabel="Corporate" ZoneType="Corporate" zone="1" Criticality="Low" id="2">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#fdf9d9;swimlaneFillColor=#fffef4;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="40" y="100" width="260" height="520" as="geometry"/>
      </mxCell>
    </object>
    <object label="External Firewall" ComponentGuid="f1fac8bc-739a-4912-b458-046fd14f9f1e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="8">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="85.5" y="32.14987" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="Public Historian" ComponentGuid="9fb0d7bb-3aed-426d-99f2-f3cc02d63292" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="9">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/historian.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="14" y="422.1548" width="48" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp Router" ComponentGuid="a1daf7de-0bb2-4826-8f9a-9ecccb3b0fbf" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="10">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="87.5" y="223.49" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_177" ComponentGuid="8f961afc-caeb-486a-89a2-31dd77d5b592" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="11">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="106.5" y="151.98" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp IDS" ComponentGuid="f627088a-7f73-4cc3-b1db-00f4b22e7245" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="12">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/ids.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="171" y="153.98000000000002" width="60" height="17" as="geometry"/>
      </mxCell>
    </object>
    <object label="Corp Switch" ComponentGuid="a266ede2-a0c9-4306-88d9-bfb2f4713f67" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="13">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="87.5" y="321.98" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Remote Access &#xa;Server" ComponentGuid="0c785c82-d2ea-404e-83a3-a26f0cfa4807" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="14">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/remote_access_server.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="171" y="410.1548" width="34" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="92" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="11" target="8" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="93" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="11" target="12" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="95" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="10" target="11" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="96" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="10" target="13" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="97" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="13" target="9" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="98" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="13" target="14" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object SAL="High" label="Water Treatment Plant-High" internalLabel="Water Treatment Plant" ZoneType="Control System" zone="1" Criticality="Low" id="3">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3eef2;swimlaneFillColor=#f2f8f9;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="320" y="100" width="800" height="820" as="geometry"/>
      </mxCell>
    </object>
    <object label="Firewall" ComponentGuid="b726a04c-d4b4-4ac4-8e90-a5ed4ed187da" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="15">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="18.272" y="209.49" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA &#xa;Server(s)" ComponentGuid="4a3a4dc8-871c-4ab7-8653-a48589590fb3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="16">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="458" y="127.98" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Internal &#xa;Historian" ComponentGuid="4d03a32c-52fd-4238-9cab-ae9a059c55a2" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="17">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/historian.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="382.5" y="127.98" width="48" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Operator &#xa;Workstation(s)" ComponentGuid="080b4be4-f08d-400e-994b-c14af9e2fcb7" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="18">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="532" y="127.98" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object label="Master Radio &lt;br&gt;Ethernet&lt;br&gt;" ComponentGuid="6a1d369c-0767-435f-8dc7-fce0c8de5c72" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="20">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/serial_radio.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="705.8022" y="321.98" width="60" height="31" as="geometry"/>
      </mxCell>
    </object>
    <object label="Switch(s)" ComponentGuid="fff370fe-7b02-4b1d-9061-851667b75c78" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="21">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="209" y="223.49" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Network Ring" ComponentGuid="ecc05ddc-a32b-484d-9164-67154482d13e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="25">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/optical_ring.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="211" y="302.98" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial &#xa;Switch 1" ComponentGuid="f0384245-c908-482b-b206-c5aa49d029d5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="27">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="18.272" y="321.98" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial &#xa;Switch 2" ComponentGuid="cf36ff88-626f-4b34-bf83-372f5c3a3ee6" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="28">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="212" y="422.1548" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial &#xa;Switch 3" ComponentGuid="0da2aee3-661c-4316-b56c-1cfc34ff7dc1" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="29">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="375.5" y="422.1548" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial &#xa;Switch 4" ComponentGuid="ef0ece89-a66a-402f-8fe0-a9c80fb01302" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="30">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="532" y="321.98" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="PLC" ComponentGuid="e1dceaa0-b503-490e-8002-4a8accfd2ebd" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="31">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="107" y="544.0960000000002" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object label="I/O" ComponentGuid="9258ed00-c7a7-4c63-a4ab-d2a0b6316195" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="32">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="107" y="638.4120000000001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="I/O 1" ComponentGuid="aea5f99d-b52d-4b3a-a619-fb5e7f0637a3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="35">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;direction=east;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="291" y="638.4120000000001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="PLC 2" ComponentGuid="c41a1119-32eb-40f0-aadd-cb9337f5c927" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="36">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="291" y="544.0960000000001" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object label="PLC 3" ComponentGuid="731fa609-9ac8-44f8-800f-071fd5ae0287" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="37">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="448" y="544.0960000000001" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object label="I/O 3" ComponentGuid="d056355c-0221-4131-9f14-a40568584310" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="38">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="448" y="638.412" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="PLC 4" ComponentGuid="84236fb1-9fc9-4cd4-b939-c13d2bb62a77" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="40">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="618" y="544.0960000000001" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object label="I/O 4" ComponentGuid="1de9fba5-2c92-43db-81fc-d8cbab485aa0" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="41">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="618" y="638.412" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_29b" ComponentGuid="62642d2e-bb09-49d8-9b98-2de0c9eff6e0" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="43">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="650" y="224.99" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2a0" ComponentGuid="70233ebd-6b10-4193-bd75-df817bfb4d03" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="44">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="396.5" y="224.49" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2a1" ComponentGuid="c0afd8bd-dcf5-4a95-a47d-ab967c57607c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="45">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="472" y="224.49" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2a2" ComponentGuid="fd9aea8d-69cb-4d6c-a42c-0d8c550d76f7" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="46">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="553" y="224.49" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2ab" ComponentGuid="28aa34d5-9925-4b38-939a-f7008f35fe82" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="47">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="42.272" y="548.096" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2b0" ComponentGuid="c85f469e-ca94-4e36-9aa3-a9dd17b9892d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="48">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="42.272" y="644.412" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2b8" ComponentGuid="bf747f2b-b52f-4e18-93d5-88cd140dc7c8" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="50">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="233" y="548.096" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_2b9" ComponentGuid="86055b45-c2ef-41c3-9b58-bdac37e063b2" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="51">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="233" y="644.412" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_305" ComponentGuid="92c4c9cb-b62d-4503-a3f3-953ceabd5b7a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="53">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="396.5" y="548.096" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_306" ComponentGuid="2586016d-e6ae-493a-b44e-b61c1de355ee" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="54">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="396.5" y="644.412" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_312" ComponentGuid="47a23686-1e9a-42b9-af10-375c948d88e0" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="56">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="553" y="548.096" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_313" ComponentGuid="10f257a3-6205-403d-9592-3596a0437f5a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="57">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="553" y="644.412" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="CON-53" ComponentGuid="c39d26c4-1376-430f-ae3b-dab5ae1fc82e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="80">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="723.8022" y="145.2998" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="116" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="45" target="16" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="114" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="44" target="17" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="115" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="18" target="46" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="87" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="20" target="80" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="104" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="21" target="25" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="105" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="25" target="27" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="106" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="28" target="25" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="107" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="25" target="29" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="108" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="25" target="30" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="117" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="27" target="47" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="123" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="28" target="50" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="129" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="29" target="53" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="135" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="30" target="56" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="120" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="47" target="31" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="121" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="48" target="32" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="127" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="51" target="35" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="126" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="50" target="36" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="134" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="53" target="37" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="133" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="54" target="38" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="138" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="56" target="40" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="139" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="57" target="41" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="111" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="44" target="45" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="112" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="45" target="46" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="118" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="47" target="48" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="124" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="50" target="51" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="130" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="53" target="54" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="136" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="56" target="57" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="86" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="30" target="20" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="662" y="337.8573033735438" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <object ComponentGuid="c941fff3-7f15-45fb-9942-9af5d680725c" Criticality="Low" label="Engineering&lt;br&gt;Workstation(s)&lt;br&gt;" internalLabel="EW-2" id="plqYrKeGjVpLpWE4VVd8-156">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="630" y="126" width="60" height="52" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="141" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" parent="3" source="46" target="43" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="618" y="233.01348993288593" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="plqYrKeGjVpLpWE4VVd8-160" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" parent="3" source="44" target="21" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="316.5" y="234.49" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="plqYrKeGjVpLpWE4VVd8-161" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="43" target="plqYrKeGjVpLpWE4VVd8-156" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="83" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="3" source="15" target="21" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="131" y="233.6517634371496" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="Other Treatment Plants-High" internalLabel="Other Treatment Plants" ZoneType="Plant System" zone="1" Criticality="Low" id="4">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#e6dbee;swimlaneFillColor=#f2edf6;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1140" y="100" width="400" height="240" as="geometry"/>
      </mxCell>
    </object>
    <object label="Remote &#xa;Radio" ComponentGuid="e93b1d8b-780e-42a3-9fe5-39a8dec7d926" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="59">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/serial_radio.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="21" y="140.2998" width="60" height="31" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="559fd8a1-93b8-4ea2-b426-7d926641dc4a" Criticality="Low" label="PLC-1" internalLabel="PLC-1" id="plqYrKeGjVpLpWE4VVd8-155">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/plc.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="271" y="140" width="60" height="29" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="d5e33582-5777-4cff-a2d3-7e0cfab7a0f4" Criticality="Low" label="SW-3" internalLabel="SW-3" id="plqYrKeGjVpLpWE4VVd8-157">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="158" y="141" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="89" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;entryX=0;entryY=0.75;entryDx=0;entryDy=0;" parent="4" source="59" target="plqYrKeGjVpLpWE4VVd8-157" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="118" y="155.43166813186804" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="145" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" target="plqYrKeGjVpLpWE4VVd8-155" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="214" y="153" as="sourcePoint"/>
        <mxPoint x="266.2664999999997" y="153.42958317557463" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="Remote Sites-High" internalLabel="Remote Sites-High" ZoneType="Control System" zone="1" Criticality="Low" id="5">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3eef2;swimlaneFillColor=#f2f8f9;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1140" y="375" width="400" height="240" as="geometry"/>
      </mxCell>
    </object>
    <object label="Remote &#xa;Radio" ComponentGuid="af95dc47-e138-4c04-adbe-d674d19a8c5c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="65">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/serial_radio.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="18.8501" y="46.01807" width="60" height="31" as="geometry"/>
      </mxCell>
    </object>
    <object label="RTU(s)" ComponentGuid="62d92c78-5e3f-4b5c-9662-0cd084871d45" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="67">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="266.2665" y="43.01807" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="1543ebb4-a75e-42ee-a017-86916ca7bf54" Criticality="Low" label="SW-4" internalLabel="SW-4" id="plqYrKeGjVpLpWE4VVd8-158">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="154" y="47" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="143" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="5" source="plqYrKeGjVpLpWE4VVd8-158" target="67" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="240.64120000000003" y="54.16770626404832" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="90" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;entryX=0;entryY=0.75;entryDx=0;entryDy=0;" parent="5" source="65" target="plqYrKeGjVpLpWE4VVd8-158" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="115.85010000000011" y="61.14993813186811" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object label="Web" ComponentGuid="609aca56-6f87-4cfa-8634-c06169d6b7cc" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" internalLabel="Web" id="7">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/web.svg;labelBackgroundColor=none;" parent="1" vertex="1">
        <mxGeometry x="-42.523028248587565" y="127.97999999999999" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="91" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="7" target="8" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="82" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="15" target="10" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="88" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="20" target="65" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="154" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="59" target="80" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
  </root>
</mxGraphModel>' WHERE [Id] = 11
UPDATE [dbo].[DIAGRAM_TEMPLATES] SET [Diagram_Markup]='<mxGraphModel dx="610" dy="682" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="0" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
  <root>
    <mxCell id="0"/>
    <mxCell id="1" value="Main Layer" parent="0"/>
    <object SAL="High" label="Wind Turbine Generators Virtual Machines-High" internalLabel="Wind Turbine Generators Virtual Machines-High" ZoneType="Plant System" zone="1" Criticality="Low" id="5">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#e6dbee;swimlaneFillColor=#f2edf6;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="620" y="1739" width="1200" height="321" as="geometry"/>
      </mxCell>
    </object>
    <object label="Router(s)" ComponentGuid="48d81e77-3b61-47d5-baa7-2af181c9daa2" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual Routers" parent="5" internalLabel="Router(s)" id="22">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="23.091099999999983" y="80.5" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <object label="Industrial Switch(s)" ComponentGuid="8d6962bd-9b98-4181-b4eb-8513b3e60994" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="5" id="23">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/switch.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="114.59110000000001" y="80.5" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="HMI(s)" ComponentGuid="ed16722a-4345-4c1d-b314-994478d82309" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual HMI" parent="5" internalLabel="HMI(s)" id="24">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/hmi.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="112.59109999999998" y="190.45001" width="60" height="50" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="49227fae-c82c-4ff4-bd9c-6cc577dc6305" Criticality="High" label="O/O Ctrl (SVP)" internalLabel="O/O Ctrl (SVP)" IPAddress="" HostName="Virtual O/O Control Server" id="4CJWCJ1OR3NtUKUV_UJa-161">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBorder=#3333FF;perimeterSpacing=0;strokeWidth=5;imageBackground=none;" parent="5" vertex="1">
        <mxGeometry x="41.5" y="190.5" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="4CJWCJ1OR3NtUKUV_UJa-162" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=1;exitDx=0;exitDy=0;entryX=0.498;entryY=0.76;entryDx=0;entryDy=0;entryPerimeter=0;endArrow=none;strokeColor=#808080;" parent="5" source="22" target="22" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object ComponentGuid="64b5d168-d111-4536-8420-8f2bad43e574" Criticality="High" label="0PC Server" internalLabel="0PC Server" HostName="Virtual OPC Server" id="4CJWCJ1OR3NtUKUV_UJa-163">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="220" y="189" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="66c86fd8-d7c3-477c-8c35-f87b3d84c050" Criticality="High" label="Kali 2" internalLabel="Kali 2" HostName="Kali VM Server" IPAddress="192.168.100.250" id="4CJWCJ1OR3NtUKUV_UJa-166">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/virtual_machine_server.svg;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;imageBackground=#FF0000;labelBackgroundColor=none;imageBorder=#FF0000;strokeWidth=6;" parent="5" vertex="1">
        <mxGeometry x="294" y="194.5" width="60" height="46" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="703a44a5-a09c-4911-8796-cc6e0118a21e" Criticality="High" label="Kali 1" internalLabel="Kali 1" HostName="Kali VM Server" IPAddress="75.75.0.250" id="4CJWCJ1OR3NtUKUV_UJa-167">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/virtual_machine_server.svg;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;imageBackground=#FF0000;labelBackgroundColor=none;imageBorder=#FF0000;strokeWidth=5;" parent="5" vertex="1">
        <mxGeometry x="294" y="78" width="60" height="46" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="4CJWCJ1OR3NtUKUV_UJa-168" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.25;entryY=0;entryDx=0;entryDy=0;endArrow=none;strokeColor=#808080;" parent="5" source="4CJWCJ1OR3NtUKUV_UJa-167" target="4CJWCJ1OR3NtUKUV_UJa-167" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object ComponentGuid="ac6d0b29-5a76-4272-ac55-22f0c58da753" Criticality="High" label="Grid Operator&lt;br&gt;Controller" internalLabel="Grid Operator Controller" IPAddress="" HostName="Virtual Grid Operator Control" id="4CJWCJ1OR3NtUKUV_UJa-169">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;labelBorderColor=none;imageBackground=none;imageBorder=#3333FF;strokeWidth=5;" parent="5" vertex="1">
        <mxGeometry x="395" y="67.5" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="ba5be2bf-832d-4cf3-b788-2436a41ee65e" Criticality="High" label="OEM PHM&lt;br&gt;System" internalLabel="OEM PHM System" IPAddress="" HostName="Virtual OEM PHM Server" id="4CJWCJ1OR3NtUKUV_UJa-171">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBorder=#FF8000;strokeWidth=5;" parent="5" vertex="1">
        <mxGeometry x="396" y="189" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="36c7d2c4-2690-475f-92d8-2ba15847cfd9" Criticality="Moderate" label="Relay(s)" internalLabel="Relay(s)" HostName="Virtual Relay" id="4CJWCJ1OR3NtUKUV_UJa-179">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/relay_panel.svg;labelBackgroundColor=none;" parent="5" vertex="1">
        <mxGeometry x="204" y="86" width="60" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object SAL="High" label="Hardware-in-the-Loop (HIL)-Moderate" internalLabel="Hardware-in-the-Loop (HIL)-Moderate" ZoneType="Classified" zone="1" Criticality="Low" id="kq5FGfvMyonBIMvHzh2S-165">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#99cfff;swimlaneFillColor=#cce5ff;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="2145" y="524" width="235" height="965" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="88e01936-406a-492b-8060-129b27938357" Criticality="High" label="Kali Linux&amp;nbsp;&lt;br&gt;Red Team-2" internalLabel="PC-7" IPAddress="192.168.100.251" HostName="Red Team Server" id="kq5FGfvMyonBIMvHzh2S-164">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;imageBackground=#FF0000;labelBackgroundColor=none;imageBorder=#FF0000;strokeWidth=5;" parent="kq5FGfvMyonBIMvHzh2S-165" vertex="1">
        <mxGeometry x="93.08571428571429" y="809.5" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="492206dd-d676-47ed-adf3-b2e4475ae7cc" Criticality="High" label="Kali Linux&amp;nbsp;&lt;br&gt;Red Team-1" internalLabel="PC-7" IPAddress="75.75.0.251" HostName="Red Team Server" id="kq5FGfvMyonBIMvHzh2S-162">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;imageBackground=#FF0000;labelBackgroundColor=none;imageBorder=#FF0000;strokeWidth=6;" parent="kq5FGfvMyonBIMvHzh2S-165" vertex="1">
        <mxGeometry x="91.01428571428573" y="68.5" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="A60NQh9wFF8a9x_0RU2g-162" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0.5;exitY=0;exitDx=0;exitDy=0;endArrow=none;strokeColor=#808080;" parent="kq5FGfvMyonBIMvHzh2S-165" source="kq5FGfvMyonBIMvHzh2S-164" target="kq5FGfvMyonBIMvHzh2S-164" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-184" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="kq5FGfvMyonBIMvHzh2S-165" source="kq5FGfvMyonBIMvHzh2S-164" target="kq5FGfvMyonBIMvHzh2S-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="140.0857142857144" y="767.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="Moderate" label="Security VLAN-Moderate" internalLabel="Security VLAN" ZoneType="Other" zone="1" Criticality="Low" id="2">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="862" y="972" width="472" height="253" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="581c4dc3-c978-4b95-9eec-dd142a49d163" Criticality="Moderate" label="IPC-2" internalLabel="IPC-5" IPAddress="192.168.40.121" HostName="Security Camera" id="RPmDNLtgcojmLFclNlbD-162">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ip_camera.svg;labelBackgroundColor=none;imageBackground=#0000CC;imageBorder=#0000FF;strokeWidth=5;" parent="2" vertex="1">
        <mxGeometry x="103" y="134" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="eccf94a2-0d3c-46aa-a467-f82ed4508b62" Criticality="Moderate" label="IPC-X" internalLabel="IPC-5" IPAddress="192.168.40.12X" HostName="Security Camera" id="124TQug6neG5nnmcSMyO-161">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ip_camera.svg;labelBackgroundColor=none;imageBackground=#0000CC;imageBorder=#0000FF;strokeWidth=5;" parent="2" vertex="1">
        <mxGeometry x="22" y="133" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="c193b555-4c27-462a-bc17-1cc416b6a01c" Criticality="Moderate" label="IPC-1" internalLabel="IPC-5" IPAddress="192.168.40.120" HostName="Security Camera" id="124TQug6neG5nnmcSMyO-162">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ip_camera.svg;labelBackgroundColor=none;imageBackground=#0000CC;imageBorder=#0000CC;strokeWidth=5;" parent="2" vertex="1">
        <mxGeometry x="181" y="136" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="c1596320-574d-4904-b512-a15b755d16f7" Criticality="Moderate" label="Security&lt;br&gt;Device-1&lt;br&gt;" internalLabel="PC-4" IPAddress="192.168.40.100" HostName="Protonuke Client" id="124TQug6neG5nnmcSMyO-165">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;fillColor=#D3EEF2;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;imageBackground=#0000CC;imageBorder=#0000CC;strokeWidth=5;" parent="2" vertex="1">
        <mxGeometry x="401" y="136" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="8ba0e82b-6a85-431c-bdb9-2a5bd4d8f740" Criticality="Moderate" label="Security&lt;br&gt;Device-2&lt;br&gt;" internalLabel="PC-4" HostName="Protonuke Client" IPAddress="192.168.40.101" id="124TQug6neG5nnmcSMyO-166">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;fillColor=#D3EEF2;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;imageBackground=#0000CC;imageBorder=#0000CC;strokeWidth=5;" parent="2" vertex="1">
        <mxGeometry x="331.5" y="136" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="69cc6559-1fac-4446-ae66-0c5aaa53b8c9" Criticality="Moderate" label="Security&lt;br&gt;Device-X&lt;br&gt;" internalLabel="PC-4" IPAddress="192.168.40.10X" HostName="Protonuke Client" id="124TQug6neG5nnmcSMyO-167">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;fillColor=#D3EEF2;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;imageBackground=#0000CC;imageBorder=#0000CC;strokeWidth=5;" parent="2" vertex="1">
        <mxGeometry x="258.5" y="136" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_25" ComponentGuid="06699988-9451-41f3-b34d-49afe71082fd" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_25" id="MSz8OllPPVoPWrnuEWKm-210">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="2" vertex="1">
        <mxGeometry x="116.78780000000006" y="51.95001000000002" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_24" ComponentGuid="650f4f5c-4d2f-4b71-941d-c7c503d5c823" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_24" id="NHTkQpqP6YVD4zE5q_3R-171">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="2" vertex="1">
        <mxGeometry x="348.28780000000006" y="50.95001000000002" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="668M16ZSEad6bdqbof_c-161" value="192.168.40.0/24&amp;nbsp;" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;labelBorderColor=#000000;" parent="2" vertex="1">
      <mxGeometry x="117.5" y="228.5" width="219" height="24" as="geometry"/>
    </mxCell>
    <mxCell id="137" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="124TQug6neG5nnmcSMyO-165" target="NHTkQpqP6YVD4zE5q_3R-171" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="431" y="139" as="sourcePoint"/>
        <mxPoint x="358" y="61" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="161" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="NHTkQpqP6YVD4zE5q_3R-171" target="124TQug6neG5nnmcSMyO-166" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="100.28780000000006" y="64.99159986458835" as="targetPoint"/>
        <mxPoint x="340" y="67" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="115" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="124TQug6neG5nnmcSMyO-167" target="NHTkQpqP6YVD4zE5q_3R-171" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="262" y="62" as="sourcePoint"/>
        <mxPoint x="340" y="61" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="124TQug6neG5nnmcSMyO-163" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="MSz8OllPPVoPWrnuEWKm-210" target="NHTkQpqP6YVD4zE5q_3R-171" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="320" y="62" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="116" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="MSz8OllPPVoPWrnuEWKm-210" target="124TQug6neG5nnmcSMyO-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="132" y="68" as="sourcePoint"/>
        <mxPoint x="194.99410755606232" y="130.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="114" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="MSz8OllPPVoPWrnuEWKm-210" target="RPmDNLtgcojmLFclNlbD-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="125" y="68" as="sourcePoint"/>
        <mxPoint x="124.79432977115084" y="130.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="117" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="2" source="MSz8OllPPVoPWrnuEWKm-210" target="124TQug6neG5nnmcSMyO-161" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="127" y="62" as="sourcePoint"/>
        <mxPoint x="63.39069602487734" y="130.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="Jump Host VLAN-Moderate" internalLabel="Jump Host VLAN-Moderate" ZoneType="External DMZ" zone="1" Criticality="Low" id="3">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3f1df;swimlaneFillColor=#ebf4ef;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1678" y="796.5" width="178" height="200" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="d78327cb-d909-4e44-878b-6875983dcc7f" Criticality="High" label="&lt;span&gt;Jump Host&lt;br&gt;&lt;/span&gt;" internalLabel="RAS-1" IPAddress="192.168.60.100" HostName="Jump Host" id="MSz8OllPPVoPWrnuEWKm-193">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/remote_access_server.svg;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;labelBackgroundColor=none;imageBorder=#33FF33;strokeWidth=5;imageBackground=#33FF33;" parent="3" vertex="1">
        <mxGeometry x="72" y="50" width="34" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_21" ComponentGuid="ee6054a0-f067-46ae-9f9d-c3cfc0f9ade6" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_21" id="NHTkQpqP6YVD4zE5q_3R-162">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="3" vertex="1">
        <mxGeometry x="79.78780000000006" y="136.45001000000002" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="668M16ZSEad6bdqbof_c-163" value="192.168.60.0/24&amp;nbsp;" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;labelBorderColor=#000000;" parent="3" vertex="1">
      <mxGeometry x="-22" y="173" width="219" height="28" as="geometry"/>
    </mxCell>
    <mxCell id="MSz8OllPPVoPWrnuEWKm-200" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="NHTkQpqP6YVD4zE5q_3R-162" target="MSz8OllPPVoPWrnuEWKm-193" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="90" y="137" as="sourcePoint"/>
        <mxPoint x="231.36393041968267" y="45.45001000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="SCADA VLAN-High" internalLabel="SCADA VLAN-High" ZoneType="Control System" zone="1" Criticality="Low" id="4">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3eef2;swimlaneFillColor=#f2f8f9;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1032" y="1299" width="918" height="441" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-4" ComponentGuid="88e4b3eb-925e-4ded-8147-93ac6f5c6d90" HasUniqueQuestions="" IPAddress="192.168.100.4" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-4" id="37">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="582.3911" y="198.41660000000002" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-2" ComponentGuid="d899ba12-a677-4f28-a389-a65388f69ee4" HasUniqueQuestions="" IPAddress="192.168.100.3" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-2" id="6KicWmQY0lRHmWq-PmBb-173">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="626.3911" y="306.4166" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_32&lt;br&gt;&lt;br&gt;" ComponentGuid="79401379-96ff-49ee-9597-2bd0ad0fc7e1" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="75">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" vertex="1">
        <mxGeometry x="681.7577" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_34&lt;br&gt;&lt;br&gt;" ComponentGuid="49a58f24-3229-4faa-84d8-43939ff92a94" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_34" id="76">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" vertex="1">
        <mxGeometry x="594.6077" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_36&lt;br&gt;&lt;br&gt;" ComponentGuid="0a418a54-abce-4338-884d-be00d192068b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="77">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" vertex="1">
        <mxGeometry x="504.39110000000005" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_40&lt;br&gt;&lt;br&gt;" ComponentGuid="d306e4b9-9203-4c31-8ff3-b6fe0a686237" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="79">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" vertex="1">
        <mxGeometry x="328.0911" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_42&lt;br&gt;&lt;br&gt;" ComponentGuid="f8750752-bb46-4d58-b505-8a4e1163dcc4" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_42" id="80">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" vertex="1">
        <mxGeometry x="236.25779999999997" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_44&lt;br&gt;&lt;br&gt;" ComponentGuid="498973f1-2160-46a6-b6d8-7d1443193e4f" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="81">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" vertex="1">
        <mxGeometry x="148.0911" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_46&lt;br&gt;&lt;br&gt;" ComponentGuid="966dd742-9b59-4f02-84ea-f927b65251ad" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="82">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" vertex="1">
        <mxGeometry x="56.891099999999994" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="a5be006c-7aa0-4a69-bfc9-dd8e5c6e04cd" Criticality="High" label="Wind Site&lt;br&gt;OT Switch&lt;br&gt;" internalLabel="" id="6KicWmQY0lRHmWq-PmBb-168">
      <mxCell style="aspect=fixed;html=1;align=left;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/switch.svg;labelBackgroundColor=none;labelPosition=right;verticalLabelPosition=top;verticalAlign=middle;" parent="4" vertex="1">
        <mxGeometry x="440" y="50" width="59" height="23" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-2" ComponentGuid="d66b034a-08bc-4dac-be7d-96d5fbfad199" HasUniqueQuestions="" IPAddress="192.168.100.2" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-2" id="6KicWmQY0lRHmWq-PmBb-172">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="671" y="196" width="44" height="64" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-6" ComponentGuid="fb1f69b9-6ee7-4b19-8202-0d896e3d0750" HasUniqueQuestions="" IPAddress="192.168.100.6" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-6" id="6KicWmQY0lRHmWq-PmBb-175">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="492.39110000000005" y="197.91660000000002" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-8" ComponentGuid="31d0f57b-868c-4656-9643-5368bd44d439" HasUniqueQuestions="" IPAddress="192.168.100.8" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-8" id="6KicWmQY0lRHmWq-PmBb-176">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="403.89110000000005" y="197.91660000000002" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-10" ComponentGuid="5bc9b8df-91ce-463e-8a6d-e257f7591e99" HasUniqueQuestions="" IPAddress="192.168.100.10" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-10" id="6KicWmQY0lRHmWq-PmBb-177">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="314.89110000000005" y="197.91660000000002" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-12" ComponentGuid="96337bef-c645-4654-9ce2-9865f6b4f7ca" HasUniqueQuestions="" IPAddress="192.168.100.12" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-12" id="6KicWmQY0lRHmWq-PmBb-178">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="224.89110000000005" y="197.91660000000002" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-14" ComponentGuid="714cd34f-49ec-4ad7-b8cb-33b2166b7ce8" HasUniqueQuestions="" IPAddress="192.168.100.14" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-14" id="6KicWmQY0lRHmWq-PmBb-179">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="135.89110000000005" y="197.91660000000002" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-XX" ComponentGuid="4d07a84e-1fd8-4b4a-8cc8-bd0343103194" HasUniqueQuestions="" IPAddress="192.168.100.XX" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-XX" id="6KicWmQY0lRHmWq-PmBb-180">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="44.89110000000005" y="197.91660000000002" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_33" ComponentGuid="a06f71d7-66aa-4d6e-9422-e85b028a3679" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_33" id="7KTFo_RdWFt-sNV8j6xP-161">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="4" vertex="1">
        <mxGeometry x="638.7577" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-5" ComponentGuid="ce7b3f68-9c66-4ec4-bd48-3e928f2d0522" HasUniqueQuestions="" IPAddress="192.168.100.5" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-5" id="7KTFo_RdWFt-sNV8j6xP-166">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="536.3911" y="307.4166" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_35" ComponentGuid="8e83e527-8776-4fd5-a653-910859778660" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_35" id="7KTFo_RdWFt-sNV8j6xP-169">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="4" vertex="1">
        <mxGeometry x="546.7577" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-1" ComponentGuid="7d5264f2-cd55-4629-adf4-c517589019cf" HasUniqueQuestions="" IPAddress="192.168.100.1" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-1" id="7KTFo_RdWFt-sNV8j6xP-172">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="716" y="307" width="44" height="59" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_41" ComponentGuid="f468ddab-2329-4bc1-82ec-1c16127eafed" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_41" id="7KTFo_RdWFt-sNV8j6xP-184">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="4" vertex="1">
        <mxGeometry x="281.86659999999995" y="126" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_39" ComponentGuid="4f33b809-ea0a-4f6a-86a8-710ec3472020" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="7KTFo_RdWFt-sNV8j6xP-185">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="4" vertex="1">
        <mxGeometry x="370.86659999999995" y="126" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_37" ComponentGuid="c464cfbf-7ab2-4d32-8026-6573defbe29d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="7KTFo_RdWFt-sNV8j6xP-186">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="4" vertex="1">
        <mxGeometry x="459.4754999999999" y="126.33330000000001" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-11" ComponentGuid="15fc7f37-358c-44c5-a930-80d88e335e1b" HasUniqueQuestions="" IPAddress="192.168.100.11" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-11" id="7KTFo_RdWFt-sNV8j6xP-190">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="269.5" y="307.2499" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-9" ComponentGuid="c9f2f04f-4544-404f-855f-1df2f2a48b97" HasUniqueQuestions="" IPAddress="192.168.100.9" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-9" id="7KTFo_RdWFt-sNV8j6xP-191">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="358.5" y="309.2499" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-7" ComponentGuid="419cbf5c-0e50-4cfe-8197-2cd3b2b11a70" HasUniqueQuestions="" IPAddress="192.168.100.7" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-7" id="7KTFo_RdWFt-sNV8j6xP-192">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="447.10889999999995" y="306.58320000000003" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_45" ComponentGuid="1b42f249-ec67-4307-b2c3-d71f1245a60d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_45" id="7KTFo_RdWFt-sNV8j6xP-194">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="4" vertex="1">
        <mxGeometry x="102.36659999999995" y="126" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_43" ComponentGuid="ef5aae27-9779-4269-9064-24a8b505fd1d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_43" id="7KTFo_RdWFt-sNV8j6xP-195">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="4" vertex="1">
        <mxGeometry x="192.9754999999999" y="126.33330000000001" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-15" ComponentGuid="7440c111-d0c9-4561-989e-a26f8c0de15b" HasUniqueQuestions="" IPAddress="192.168.100.15" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-15" id="7KTFo_RdWFt-sNV8j6xP-200">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="90" y="305.2499" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="SCADA WTG-13" ComponentGuid="8513952c-980c-4564-a0d1-845ed93ae4ab" HasUniqueQuestions="" IPAddress="192.168.100.13" Description="" Criticality="High" HostName="Wind Turbine Generator" parent="4" internalLabel="SCADA WTG-13" id="7KTFo_RdWFt-sNV8j6xP-201">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/application_server.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="180.60889999999995" y="305.58320000000003" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_30&lt;br&gt;&lt;br&gt;" ComponentGuid="3543332b-86ce-47f4-a84d-6610c397b558" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_30" id="6KicWmQY0lRHmWq-PmBb-170">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=middle;" parent="4" vertex="1">
        <mxGeometry x="809.7577" y="51.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_31&lt;br&gt;&lt;br&gt;" ComponentGuid="07c72442-e71e-433b-ac71-d7883c9f84dd" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="7KTFo_RdWFt-sNV8j6xP-170">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="4" vertex="1">
        <mxGeometry x="728.3666" y="126.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_135" ComponentGuid="ec186767-2fcf-4ff5-94b3-db60c012861a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_135" id="MSz8OllPPVoPWrnuEWKm-180">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="549.7244333333333" y="552.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_137" ComponentGuid="dab4e742-6854-453f-82e2-0b0b6c6b12c1" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_137" id="MSz8OllPPVoPWrnuEWKm-181">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="459.2244333333333" y="553.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_133" ComponentGuid="e733e824-a39f-47e5-98d5-7893ddb1557b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_133" id="MSz8OllPPVoPWrnuEWKm-182">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="639.2244333333333" y="552.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_131" ComponentGuid="c85c7361-e07c-4af9-b228-04a171138614" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="MSz8OllPPVoPWrnuEWKm-184">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="729.2244333333333" y="552.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 1" ComponentGuid="425bf7b6-03b6-4fbf-8137-1f6ade428e0a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 1" id="MSz8OllPPVoPWrnuEWKm-187">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="709.4244333333334" y="684.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 3" ComponentGuid="d6bf3c79-43a7-445a-948c-f8e3fa0cfe78" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 3" id="MSz8OllPPVoPWrnuEWKm-188">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="619.9244333333334" y="685.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 5" ComponentGuid="84f1352d-6ba9-477e-844e-132d9eb934eb" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 5" id="MSz8OllPPVoPWrnuEWKm-191">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="529.9244333333334" y="685.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 7" ComponentGuid="7a5d1bd6-6bef-4ecb-8be0-69368104210c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 7" id="MSz8OllPPVoPWrnuEWKm-192">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="439.92443333333335" y="684.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 2" ComponentGuid="a608e78a-e323-4a0d-a30c-0f9a89bab97e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 2" id="7KTFo_RdWFt-sNV8j6xP-222">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="664.9244333333334" y="612.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU4" ComponentGuid="09a7a779-50dd-4708-933e-8b3d2677b945" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU4" id="7KTFo_RdWFt-sNV8j6xP-223">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="574.9244333333334" y="612.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 6" ComponentGuid="567c0581-cdd9-481e-bb21-41f46358c806" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 6" id="7KTFo_RdWFt-sNV8j6xP-224">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="484.92443333333335" y="611.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_132" ComponentGuid="b478cabf-7c2d-4f8e-82e8-a0c8bb6dba7c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" id="7KTFo_RdWFt-sNV8j6xP-230">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="684.2244333333333" y="503.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_134" ComponentGuid="cff259a7-2dc6-4dc5-83cd-b33a5233ecdd" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_134" id="7KTFo_RdWFt-sNV8j6xP-231">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="594.7244333333333" y="503.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_136" ComponentGuid="537d370d-7284-4317-af83-9ceaeb1b4917" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_136" id="7KTFo_RdWFt-sNV8j6xP-232">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="504.2244333333333" y="504.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="6KicWmQY0lRHmWq-PmBb-174" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-161" target="6KicWmQY0lRHmWq-PmBb-173" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="648" y="138" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="120" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" source="75" target="7KTFo_RdWFt-sNV8j6xP-161" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="657" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-207" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-161" target="76" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="617" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="123" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" source="76" target="7KTFo_RdWFt-sNV8j6xP-169" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="567" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-208" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="77" target="7KTFo_RdWFt-sNV8j6xP-169" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="617" y="151" as="sourcePoint"/>
        <mxPoint x="547" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-168" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-169" target="7KTFo_RdWFt-sNV8j6xP-166" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="557" y="137" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="129" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" source="79" target="7KTFo_RdWFt-sNV8j6xP-184" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="297" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-215" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-184" target="80" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="257" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-214" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-185" target="79" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="347" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="125" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" source="77" target="7KTFo_RdWFt-sNV8j6xP-186" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="487" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-187" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-184" target="7KTFo_RdWFt-sNV8j6xP-190" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="291.10889999999995" y="140.8333" as="sourcePoint"/>
        <mxPoint x="291.2917687457027" y="307.2499" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-188" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-185" target="7KTFo_RdWFt-sNV8j6xP-191" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="381" y="136" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-189" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-186" target="7KTFo_RdWFt-sNV8j6xP-192" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="468.7178000000001" y="139.16660000000002" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="133" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-194" target="81" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-218" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-194" target="82" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="77" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-216" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-195" target="81" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="167" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-197" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-194" target="7KTFo_RdWFt-sNV8j6xP-200" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="111.60890000000018" y="136.8333" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-198" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-195" target="7KTFo_RdWFt-sNV8j6xP-201" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="202.21780000000035" y="138.16660000000002" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-206" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-170" target="75" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="724.7577000000001" y="1.1666999999999916" as="sourcePoint"/>
        <mxPoint x="657.6077" y="1.1666999999999916" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-162" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="MSz8OllPPVoPWrnuEWKm-184" target="7KTFo_RdWFt-sNV8j6xP-172" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="739.2244333333333" y="478.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="155" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="MSz8OllPPVoPWrnuEWKm-184" target="MSz8OllPPVoPWrnuEWKm-187" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="739.3333333333335" y="573.5" as="sourcePoint"/>
        <mxPoint x="739.399843169399" y="776.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="156" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="MSz8OllPPVoPWrnuEWKm-182" target="MSz8OllPPVoPWrnuEWKm-188" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="659.4244333333336" y="701.5" as="sourcePoint"/>
        <mxPoint x="650.3333333333335" y="786" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="157" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="MSz8OllPPVoPWrnuEWKm-180" target="MSz8OllPPVoPWrnuEWKm-191" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="565.3333333333335" y="596" as="sourcePoint"/>
        <mxPoint x="559.977081402003" y="776.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="158" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="MSz8OllPPVoPWrnuEWKm-181" target="MSz8OllPPVoPWrnuEWKm-192" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="465.4243933333332" y="597.2338" as="sourcePoint"/>
        <mxPoint x="465.39980808743167" y="776.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-227" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-230" target="7KTFo_RdWFt-sNV8j6xP-222" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="704.4244333333336" y="628.5" as="sourcePoint"/>
        <mxPoint x="695.3333333333335" y="713" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-226" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-231" target="7KTFo_RdWFt-sNV8j6xP-223" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="610.3333333333335" y="523" as="sourcePoint"/>
        <mxPoint x="604.977081402003" y="703.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-225" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-232" target="7KTFo_RdWFt-sNV8j6xP-224" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="510.4243933333332" y="524.2338" as="sourcePoint"/>
        <mxPoint x="510.39980808743167" y="703.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-164" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-230" target="6KicWmQY0lRHmWq-PmBb-172" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="694.2244333333333" y="479.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-167" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="MSz8OllPPVoPWrnuEWKm-182" target="6KicWmQY0lRHmWq-PmBb-173" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="649.2244333333333" y="472.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-169" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-231" target="37" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="604.7244333333333" y="423.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-171" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="MSz8OllPPVoPWrnuEWKm-180" target="7KTFo_RdWFt-sNV8j6xP-166" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="559.7244333333333" y="472.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-173" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-232" target="6KicWmQY0lRHmWq-PmBb-175" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="514.2244333333333" y="424.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-175" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="MSz8OllPPVoPWrnuEWKm-181" target="7KTFo_RdWFt-sNV8j6xP-192" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="469.2244333333333" y="473.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-219" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-186" target="7KTFo_RdWFt-sNV8j6xP-185" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object label="Connector_38&lt;br&gt;&lt;br&gt;" ComponentGuid="60e9b947-e800-411f-b01f-2b0534cbd5d7" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_38" id="78">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" vertex="1">
        <mxGeometry x="416.0911" y="126.16669999999999" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-213" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="78" target="7KTFo_RdWFt-sNV8j6xP-185" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="387" y="136" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="127" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" source="7KTFo_RdWFt-sNV8j6xP-186" target="78" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="458" y="136" as="sourcePoint"/>
        <mxPoint x="437" y="134" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object label="Connector_141" ComponentGuid="5c7c311a-598f-458f-a49d-f38dd8075838" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_141" id="i-MdhqG1Mi4JLCTFey-s-205">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="280.7244333333333" y="552.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_143" ComponentGuid="6d02eef8-ca98-484c-9e38-4241c44192fe" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_143" id="i-MdhqG1Mi4JLCTFey-s-206">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="190.2244333333333" y="553.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_139" ComponentGuid="289bc4b1-2be3-443a-a23a-a0acd6b7d613" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_139" id="i-MdhqG1Mi4JLCTFey-s-207">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="370.2244333333333" y="552.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 9" ComponentGuid="fa147ba2-795d-4ef8-90b2-e44f2be9878b" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 9" id="i-MdhqG1Mi4JLCTFey-s-210">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="350.92443333333335" y="685.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 11" ComponentGuid="078700d1-c999-4558-a508-61cd1eb9b271" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 11" id="i-MdhqG1Mi4JLCTFey-s-211">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="260.92443333333335" y="685.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 13" ComponentGuid="bd39041e-9223-444e-8678-418fe67d7373" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 13" id="i-MdhqG1Mi4JLCTFey-s-212">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="170.92443333333335" y="684.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 8" ComponentGuid="b2b84069-1673-4048-afda-9d3a6b8ce564" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 8" id="i-MdhqG1Mi4JLCTFey-s-213">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="395.92443333333335" y="612.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU10" ComponentGuid="fd108717-98b4-468e-b338-6c90074479a3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU10" id="i-MdhqG1Mi4JLCTFey-s-214">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="305.92443333333335" y="612.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 12" ComponentGuid="4c563d14-62cd-401a-be81-b69f78565f16" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 12" id="i-MdhqG1Mi4JLCTFey-s-215">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="215.92443333333335" y="611.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_138" ComponentGuid="37b24a95-5783-471c-9272-282c2b808ccf" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_138" id="i-MdhqG1Mi4JLCTFey-s-216">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="415.2244333333333" y="503.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_140" ComponentGuid="d2efb880-3816-4ca0-86fa-81141fe2fdb0" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_140" id="i-MdhqG1Mi4JLCTFey-s-217">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="325.7244333333333" y="503.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_142" ComponentGuid="14aadab8-859b-4f9f-9899-e78b27b2c485" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_142" id="i-MdhqG1Mi4JLCTFey-s-218">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="235.2244333333333" y="504.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-220" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-207" target="i-MdhqG1Mi4JLCTFey-s-210" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="390.4244333333336" y="701.5" as="sourcePoint"/>
        <mxPoint x="381.3333333333335" y="786" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-221" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-205" target="i-MdhqG1Mi4JLCTFey-s-211" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="296.3333333333335" y="596" as="sourcePoint"/>
        <mxPoint x="290.977081402003" y="776.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-222" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-206" target="i-MdhqG1Mi4JLCTFey-s-212" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="196.42439333333323" y="597.2338" as="sourcePoint"/>
        <mxPoint x="196.39980808743167" y="776.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-223" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-216" target="i-MdhqG1Mi4JLCTFey-s-213" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="435.4244333333336" y="628.5" as="sourcePoint"/>
        <mxPoint x="426.3333333333335" y="713" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-224" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-217" target="i-MdhqG1Mi4JLCTFey-s-214" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="341.3333333333335" y="523" as="sourcePoint"/>
        <mxPoint x="335.977081402003" y="703.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-225" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-218" target="i-MdhqG1Mi4JLCTFey-s-215" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="241.42439333333323" y="524.2338" as="sourcePoint"/>
        <mxPoint x="241.39980808743167" y="703.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object label="Connector_145" ComponentGuid="20ed16c0-e56b-4d83-87ef-0fd5a2ed83ad" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_145" id="i-MdhqG1Mi4JLCTFey-s-226">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="100.72443333333331" y="552.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU 15" ComponentGuid="65ccae0a-9add-48f7-b6aa-8f3a04334850" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU 15" id="i-MdhqG1Mi4JLCTFey-s-227">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="80.92443333333335" y="685.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU14" ComponentGuid="21c23669-c8f3-4ffe-b69c-c3aa17cf7d0a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU14" id="i-MdhqG1Mi4JLCTFey-s-228">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="125.92443333333335" y="612.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="WTG VM RTU XX" ComponentGuid="add26882-d77c-43c8-b362-e870ceacb4fd" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="Virtual RTU" parent="4" internalLabel="WTG VM RTU XX" id="i-MdhqG1Mi4JLCTFey-s-229">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/rtu.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="35.924433333333354" y="611.45001" width="60" height="33" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_144" ComponentGuid="9b57a846-fd4c-4951-989d-1167a00a3bda" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_144" id="i-MdhqG1Mi4JLCTFey-s-230">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="145.7244333333333" y="503.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_1XX" ComponentGuid="bcf6c907-169f-46c9-b115-d62aff8bbfa0" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="4" internalLabel="Connector_1XX" id="i-MdhqG1Mi4JLCTFey-s-231">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;" parent="4" vertex="1">
        <mxGeometry x="55.22443333333331" y="504.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-232" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-226" target="i-MdhqG1Mi4JLCTFey-s-227" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="116.33333333333348" y="596" as="sourcePoint"/>
        <mxPoint x="110.97708140200302" y="776.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-233" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-230" target="i-MdhqG1Mi4JLCTFey-s-228" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="161.33333333333348" y="523" as="sourcePoint"/>
        <mxPoint x="155.97708140200302" y="703.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-234" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-231" target="i-MdhqG1Mi4JLCTFey-s-229" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="61.42439333333323" y="524.2338" as="sourcePoint"/>
        <mxPoint x="61.399808087431666" y="703.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-236" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-216" target="6KicWmQY0lRHmWq-PmBb-176" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="425.2244333333333" y="423.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-238" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-207" target="7KTFo_RdWFt-sNV8j6xP-191" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="380.2244333333333" y="472.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-240" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-217" target="6KicWmQY0lRHmWq-PmBb-177" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="335.7244333333333" y="423.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-243" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-205" target="7KTFo_RdWFt-sNV8j6xP-190" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="290.7244333333333" y="472.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-245" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-218" target="6KicWmQY0lRHmWq-PmBb-178" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="245.2244333333333" y="424.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-247" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-206" target="7KTFo_RdWFt-sNV8j6xP-201" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="200.2244333333333" y="473.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-249" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-230" target="6KicWmQY0lRHmWq-PmBb-179" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="155.7244333333333" y="423.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7KTFo_RdWFt-sNV8j6xP-171" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" target="7KTFo_RdWFt-sNV8j6xP-172" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="738" y="141" as="sourcePoint"/>
        <mxPoint x="737.9414837799691" y="306" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="119" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="75" target="6KicWmQY0lRHmWq-PmBb-172" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="692.4711667203055" y="198.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="121" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="76" target="37" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="604.6077" y="198.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="124" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="77" target="6KicWmQY0lRHmWq-PmBb-175" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="514.3910999999998" y="198.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="126" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="78" target="6KicWmQY0lRHmWq-PmBb-176" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="426.0911000000001" y="198.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="128" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="79" target="6KicWmQY0lRHmWq-PmBb-177" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="338.0911000000001" y="198.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="130" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="80" target="6KicWmQY0lRHmWq-PmBb-178" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="247" y="199" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="132" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="81" target="6KicWmQY0lRHmWq-PmBb-179" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="158.42849819772164" y="198.41660000000002" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="134" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="4" source="82" target="6KicWmQY0lRHmWq-PmBb-180" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="67" y="208" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-251" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-226" target="7KTFo_RdWFt-sNV8j6xP-200" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="110.72443333333331" y="472.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="i-MdhqG1Mi4JLCTFey-s-253" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="i-MdhqG1Mi4JLCTFey-s-231" target="6KicWmQY0lRHmWq-PmBb-180" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="65.22443333333331" y="424.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object ComponentGuid="337fd857-7963-4959-957c-f0c5c976833f" Criticality="High" label="Site&lt;br&gt;Controller" internalLabel="Site Controller" IPAddress="192.168.100.100" HostName="Wind Site Controller" id="4CJWCJ1OR3NtUKUV_UJa-172">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelBackgroundColor=none;labelPosition=right;verticalLabelPosition=top;verticalAlign=bottom;imageBackground=#33FFFF;imageBorder=#33FFFF;strokeWidth=5;" parent="4" vertex="1">
        <mxGeometry x="790" y="248.5" width="60" height="52" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="668M16ZSEad6bdqbof_c-166" value="&amp;nbsp;WTG IPs:192.168.100.1-30&amp;nbsp;" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;labelBorderColor=#000000;" parent="4" vertex="1">
      <mxGeometry x="-25.5" y="23" width="219" height="28" as="geometry"/>
    </mxCell>
    <mxCell id="131" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="4" source="80" target="7KTFo_RdWFt-sNV8j6xP-195" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="A60NQh9wFF8a9x_0RU2g-169" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="6KicWmQY0lRHmWq-PmBb-168" target="7KTFo_RdWFt-sNV8j6xP-186" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="469.4787739435519" y="126.33330000000001" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7n4MPl1vPrtBKXpNYoUz-164" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="4CJWCJ1OR3NtUKUV_UJa-172" target="6KicWmQY0lRHmWq-PmBb-170" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="821" y="168.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="6KicWmQY0lRHmWq-PmBb-171" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="4" source="6KicWmQY0lRHmWq-PmBb-168" target="6KicWmQY0lRHmWq-PmBb-170" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="747" y="136" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <object label="Internet" ComponentGuid="4bd7ec73-cb26-4f8c-bf82-b5d1d4138d6c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" internalLabel="Web" id="6">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/web.svg;labelBackgroundColor=none;direction=south;labelPosition=right;verticalLabelPosition=top;align=left;verticalAlign=bottom;" parent="1" vertex="1">
        <mxGeometry x="1471.097327522195" y="588.2062857142857" width="60" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_53" ComponentGuid="e1157092-9924-40c0-93bf-2364bf61d7d4" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_20" id="MSz8OllPPVoPWrnuEWKm-201">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=left;verticalLabelPosition=top;align=right;verticalAlign=bottom;" parent="1" vertex="1">
        <mxGeometry x="1985.7878" y="606.95001" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="0139f351-6352-44be-87ae-9a9ccb6eff37" Criticality="High" label="Kali Linux &lt;br&gt;Red Team-VM1" internalLabel="Kali Linux Red Team" HostName="VM Server" IPAddress="75.75.0.250" id="kq5FGfvMyonBIMvHzh2S-161">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/virtual_machine_server.svg;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;imageBackground=#FF0000;imageBorder=#FF0000;strokeWidth=5;" parent="1" vertex="1">
        <mxGeometry x="862" y="595" width="60" height="46" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_51" ComponentGuid="e0f1cfa1-c0d8-4c1f-96b2-3f76f15cd441" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_51" id="kq5FGfvMyonBIMvHzh2S-184">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=left;verticalLabelPosition=top;align=right;verticalAlign=bottom;direction=south;" parent="1" vertex="1">
        <mxGeometry x="1351.2878" y="607.95001" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object SAL="Low" label="Internet Sites-Low" internalLabel="Internet Sites-Low" ZoneType="External DMZ" zone="1" Criticality="Low" id="kq5FGfvMyonBIMvHzh2S-187">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3f1df;swimlaneFillColor=#ebf4ef;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="929" y="284" width="240" height="224" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="bff10425-6bb6-457a-8029-dc6c791eba90" Criticality="Low" label="Internet Switch-1" internalLabel="Internet Switch-1" id="kq5FGfvMyonBIMvHzh2S-193">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/switch.svg;labelBackgroundColor=none;fillColor=none;labelPosition=left;verticalLabelPosition=bottom;verticalAlign=bottom;" parent="kq5FGfvMyonBIMvHzh2S-187" vertex="1">
        <mxGeometry x="96" y="177" width="60" height="23" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="668M16ZSEad6bdqbof_c-167" value="&amp;nbsp;Internet 75.75.0.0/16&amp;nbsp;" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;labelBorderColor=#000000;" parent="kq5FGfvMyonBIMvHzh2S-187" vertex="1">
      <mxGeometry x="6.5" y="24.5" width="219" height="23" as="geometry"/>
    </mxCell>
    <object ComponentGuid="e24f9761-46f9-4bae-9649-72ca227843a8" Criticality="Low" label="Protonuke&lt;br&gt;Server-1&lt;br&gt;" internalLabel="SVR-9" IPAddress="75.75.0.100" HostName="Internet Site" id="kq5FGfvMyonBIMvHzh2S-186">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#CC99FF;imageBorder=#CC99FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="kq5FGfvMyonBIMvHzh2S-187" vertex="1">
        <mxGeometry x="50" y="85" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="0ddeba8d-c26e-49a7-8797-165d943b9d4b" Criticality="Low" label="Protonuke&lt;br&gt;Server-2&lt;br&gt;" internalLabel="SVR-9" IPAddress="75.75.0.101" HostName="Internet Site" id="kq5FGfvMyonBIMvHzh2S-191">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#CC99FF;imageBorder=#CC99FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="kq5FGfvMyonBIMvHzh2S-187" vertex="1">
        <mxGeometry x="116" y="85" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="e197c004-51be-449e-a541-d3ff2fd3d37c" Criticality="Low" label="Protonuke&lt;br&gt;Server-X&lt;br&gt;" internalLabel="SVR-9" IPAddress="75.75.0.XXX" HostName="Internet Site" id="kq5FGfvMyonBIMvHzh2S-192">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#CC99FF;imageBorder=#CC99FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="kq5FGfvMyonBIMvHzh2S-187" vertex="1">
        <mxGeometry x="181" y="85" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="kq5FGfvMyonBIMvHzh2S-194" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="kq5FGfvMyonBIMvHzh2S-187" source="kq5FGfvMyonBIMvHzh2S-186" target="kq5FGfvMyonBIMvHzh2S-193" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="111" y="72" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="kq5FGfvMyonBIMvHzh2S-197" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="kq5FGfvMyonBIMvHzh2S-187" source="kq5FGfvMyonBIMvHzh2S-191" target="kq5FGfvMyonBIMvHzh2S-193" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="111" y="72" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="kq5FGfvMyonBIMvHzh2S-198" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="kq5FGfvMyonBIMvHzh2S-187" source="kq5FGfvMyonBIMvHzh2S-192" target="kq5FGfvMyonBIMvHzh2S-193" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="111" y="72" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="Wind Site O/O-High" internalLabel="Wind Site O/O-High" ZoneType="External DMZ" zone="1" Criticality="Low" id="kq5FGfvMyonBIMvHzh2S-199">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3f1df;swimlaneFillColor=#ebf4ef;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1217" y="284" width="278" height="223" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="7fa7021a-a3e2-4a04-9b27-3a0d6d6fe91a" Criticality="High" label="&lt;span&gt;VLANR-4&lt;/span&gt;" internalLabel="VLANR-2" HostName="VLAN/Router" id="kq5FGfvMyonBIMvHzh2S-210">
      <mxCell style="aspect=fixed;html=1;align=right;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/vlan_router.svg;fillColor=none;labelBackgroundColor=none;flipH=1;labelPosition=left;verticalLabelPosition=bottom;verticalAlign=middle;" parent="kq5FGfvMyonBIMvHzh2S-199" vertex="1">
        <mxGeometry x="117" y="174" width="55" height="22.9" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="GtWr3JM4tmpKplhX16G0-161" value="Corporate Network 192.168.10.0/24" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;labelBorderColor=#000000;" parent="kq5FGfvMyonBIMvHzh2S-199" vertex="1">
      <mxGeometry x="26.5" y="23.5" width="219" height="24" as="geometry"/>
    </mxCell>
    <object ComponentGuid="e24f9761-46f9-4bae-9649-72ca227843a8" Criticality="High" label="ws-owop-1" internalLabel="ws-owop-1" IPAddress="192.169.10.10" HostName="O/O Control Server" id="kq5FGfvMyonBIMvHzh2S-200">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#33FF33;strokeWidth=5;imageBorder=#33FF33;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="kq5FGfvMyonBIMvHzh2S-199" vertex="1">
        <mxGeometry x="48" y="81" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="0ddeba8d-c26e-49a7-8797-165d943b9d4b" Criticality="High" label="ws-owop-2" internalLabel="ws-owop-2" IPAddress="192.169.10.11" HostName="O/O Control Server" id="kq5FGfvMyonBIMvHzh2S-201">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#33FF33;strokeWidth=5;imageBorder=#33FF33;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="kq5FGfvMyonBIMvHzh2S-199" vertex="1">
        <mxGeometry x="133" y="81" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="e197c004-51be-449e-a541-d3ff2fd3d37c" Criticality="High" label="ws-owop-X" internalLabel="ws-owop-X" IPAddress="192.169.10.XXX" HostName="O/O Control Server" id="kq5FGfvMyonBIMvHzh2S-202">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#33FF33;strokeWidth=5;imageBorder=#33FF33;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="kq5FGfvMyonBIMvHzh2S-199" vertex="1">
        <mxGeometry x="216" y="81" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="kq5FGfvMyonBIMvHzh2S-204" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="kq5FGfvMyonBIMvHzh2S-199" source="kq5FGfvMyonBIMvHzh2S-200" target="kq5FGfvMyonBIMvHzh2S-210" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="101.75681818181829" y="69" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="bi1JvaAtu-6lTVzKTB_4-177" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="kq5FGfvMyonBIMvHzh2S-199" source="kq5FGfvMyonBIMvHzh2S-201" target="kq5FGfvMyonBIMvHzh2S-210" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="kq5FGfvMyonBIMvHzh2S-208" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="kq5FGfvMyonBIMvHzh2S-199" source="kq5FGfvMyonBIMvHzh2S-202" target="kq5FGfvMyonBIMvHzh2S-210" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="142.79090909090928" y="69" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object ComponentGuid="e4f979f7-2dc5-4765-a4b1-c8a01a8615a3" Criticality="High" label="Kali Linux &lt;br&gt;Red Team-VM2" internalLabel="Kali Linux Red Team" HostName="VM Server" IPAddress="192.168.100.250" id="bi1JvaAtu-6lTVzKTB_4-161">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/virtual_machine_server.svg;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;imageBackground=#FF0000;imageBorder=#FF0000;strokeWidth=5;" parent="1" vertex="1">
        <mxGeometry x="862.5" y="1339" width="60" height="46" as="geometry"/>
      </mxCell>
    </object>
    <object SAL="High" label="Grid Operator-High-High" internalLabel="Grid Operator-High" ZoneType="External DMZ" zone="1" Criticality="Low" id="bi1JvaAtu-6lTVzKTB_4-164">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3f1df;swimlaneFillColor=#ebf4ef;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1535" y="284" width="279" height="226" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="7fa7021a-a3e2-4a04-9b27-3a0d6d6fe91a" Criticality="High" label="&lt;span&gt;VLANR-5&lt;/span&gt;" internalLabel="VLANR-2" HostName="VLAN/Router" id="bi1JvaAtu-6lTVzKTB_4-173">
      <mxCell style="aspect=fixed;html=1;align=right;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/vlan_router.svg;fillColor=none;labelBackgroundColor=none;flipH=1;labelPosition=left;verticalLabelPosition=bottom;verticalAlign=middle;" parent="bi1JvaAtu-6lTVzKTB_4-164" vertex="1">
        <mxGeometry x="114" y="177" width="55" height="22.9" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="6KicWmQY0lRHmWq-PmBb-161" value="Corporate Network 192.168.20.0/24" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;labelBorderColor=#000000;" parent="bi1JvaAtu-6lTVzKTB_4-164" vertex="1">
      <mxGeometry x="32.5" y="26.5" width="219" height="16" as="geometry"/>
    </mxCell>
    <object ComponentGuid="e24f9761-46f9-4bae-9649-72ca227843a8" Criticality="High" label="ws-grid-1" internalLabel="ws-grid-1" IPAddress="192.168.20.10" HostName="Grid Operator Control" id="bi1JvaAtu-6lTVzKTB_4-165">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#7F00FF;imageBorder=#7F00FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="bi1JvaAtu-6lTVzKTB_4-164" vertex="1">
        <mxGeometry x="50" y="84" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="0ddeba8d-c26e-49a7-8797-165d943b9d4b" Criticality="High" label="ws-grid-2" internalLabel="ws-grid-2" IPAddress="192.168.20.11" HostName="Grid Operator Control" id="bi1JvaAtu-6lTVzKTB_4-166">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#7F00FF;imageBorder=#7F00FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="bi1JvaAtu-6lTVzKTB_4-164" vertex="1">
        <mxGeometry x="132" y="84" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="e197c004-51be-449e-a541-d3ff2fd3d37c" Criticality="High" label="ws-grid-X" internalLabel="ws-grid-X" IPAddress="192.168.20.XXX" HostName="Grid Operator Control" id="bi1JvaAtu-6lTVzKTB_4-167">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#7F00FF;imageBorder=#7F00FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="bi1JvaAtu-6lTVzKTB_4-164" vertex="1">
        <mxGeometry x="210" y="84" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="bi1JvaAtu-6lTVzKTB_4-170" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="bi1JvaAtu-6lTVzKTB_4-164" source="bi1JvaAtu-6lTVzKTB_4-165" target="bi1JvaAtu-6lTVzKTB_4-173" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="101.75681818181829" y="69" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="bi1JvaAtu-6lTVzKTB_4-171" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="bi1JvaAtu-6lTVzKTB_4-164" source="bi1JvaAtu-6lTVzKTB_4-166" target="bi1JvaAtu-6lTVzKTB_4-173" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="122.40454545454531" y="69" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="bi1JvaAtu-6lTVzKTB_4-172" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="bi1JvaAtu-6lTVzKTB_4-164" source="bi1JvaAtu-6lTVzKTB_4-167" target="bi1JvaAtu-6lTVzKTB_4-173" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="172" y="67" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="OEM Monitoring/Prognostics-High" internalLabel="OEM Monitoring/Prognostics-High" ZoneType="External DMZ" zone="1" Criticality="Low" id="bi1JvaAtu-6lTVzKTB_4-178">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3f1df;swimlaneFillColor=#ebf4ef;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1856" y="284" width="279" height="230" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="e24f9761-46f9-4bae-9649-72ca227843a8" Criticality="High" label="ws-oem-1" internalLabel="ws-oem-1" IPAddress="192.168.30.10" HostName="OEM PHM Server" id="bi1JvaAtu-6lTVzKTB_4-179">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#3399FF;imageBorder=#3399FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="bi1JvaAtu-6lTVzKTB_4-178" vertex="1">
        <mxGeometry x="50" y="84" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="0ddeba8d-c26e-49a7-8797-165d943b9d4b" Criticality="High" label="ws-oem-2" internalLabel="ws-oem-2" IPAddress="192.168.30.11" HostName="OEM PHM Server" id="bi1JvaAtu-6lTVzKTB_4-180">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#3399FF;imageBorder=#3399FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="bi1JvaAtu-6lTVzKTB_4-178" vertex="1">
        <mxGeometry x="132" y="84" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="e197c004-51be-449e-a541-d3ff2fd3d37c" Criticality="High" label="ws-oem-X" internalLabel="ws-oem-X" IPAddress="192.168.30.XXX" HostName="OEM PHM Server" id="bi1JvaAtu-6lTVzKTB_4-181">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;imageBackground=#3399FF;imageBorder=#3399FF;strokeWidth=5;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;" parent="bi1JvaAtu-6lTVzKTB_4-178" vertex="1">
        <mxGeometry x="210" y="84" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="7fa7021a-a3e2-4a04-9b27-3a0d6d6fe91a" Criticality="High" label="&lt;span&gt;VLANR-6&lt;/span&gt;" internalLabel="VLANR-2" HostName="VLAN/Router" id="bi1JvaAtu-6lTVzKTB_4-182">
      <mxCell style="aspect=fixed;html=1;align=right;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/vlan_router.svg;fillColor=none;labelBackgroundColor=none;flipH=1;labelPosition=left;verticalLabelPosition=bottom;verticalAlign=top;" parent="bi1JvaAtu-6lTVzKTB_4-178" vertex="1">
        <mxGeometry x="112" y="177" width="55" height="22.9" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="6KicWmQY0lRHmWq-PmBb-162" value="Corporate Network 192.168.30.0/24" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;labelBorderColor=#000000;" parent="bi1JvaAtu-6lTVzKTB_4-178" vertex="1">
      <mxGeometry x="31.5" y="21.5" width="219" height="24" as="geometry"/>
    </mxCell>
    <mxCell id="bi1JvaAtu-6lTVzKTB_4-187" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="bi1JvaAtu-6lTVzKTB_4-178" source="bi1JvaAtu-6lTVzKTB_4-179" target="bi1JvaAtu-6lTVzKTB_4-182" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="89" y="107" as="sourcePoint"/>
        <mxPoint x="101.75681818181829" y="69" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="bi1JvaAtu-6lTVzKTB_4-186" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="bi1JvaAtu-6lTVzKTB_4-178" source="bi1JvaAtu-6lTVzKTB_4-180" target="bi1JvaAtu-6lTVzKTB_4-182" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="-52.71219999999994" y="71.01045422901791" as="sourcePoint"/>
        <mxPoint x="122.40454545454531" y="69" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="bi1JvaAtu-6lTVzKTB_4-183" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="bi1JvaAtu-6lTVzKTB_4-178" source="bi1JvaAtu-6lTVzKTB_4-181" target="bi1JvaAtu-6lTVzKTB_4-182" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="221" y="94" as="sourcePoint"/>
        <mxPoint x="142.79090909090928" y="69" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object ComponentGuid="d32e1042-cd03-4e17-ae87-58caf916c992" Criticality="High" label="&lt;span style=&quot;&quot;&gt;VLANR-1&lt;/span&gt;" internalLabel="VLANR-2" HostName="VLAN/Router" id="dEJbTsw4NDr6ufRAMC0M-162">
      <mxCell style="aspect=fixed;html=1;align=left;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/vlan_router.svg;fillColor=none;labelBackgroundColor=none;direction=east;labelPosition=right;verticalLabelPosition=top;verticalAlign=bottom;" parent="1" vertex="1">
        <mxGeometry x="1471.5" y="1200" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="6KicWmQY0lRHmWq-PmBb-167" value="" style="group" parent="1" vertex="1">
      <mxGeometry x="1543" y="1482" width="830" height="150" as="geometry"/>
    </mxCell>
    <object label="Connector_52" ComponentGuid="8b2988b5-cf7d-445d-a9a9-c900988d0dd8" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_52" id="bi1JvaAtu-6lTVzKTB_4-162">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=left;verticalLabelPosition=top;align=right;verticalAlign=bottom;direction=south;" parent="1" vertex="1">
        <mxGeometry x="1667.2878" y="608.3293203448275" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object SAL="Low" label="Non-Critical VLAN-Low" internalLabel="Non-Critical VLAN" ZoneType="Other" zone="1" Criticality="Low" id="MSz8OllPPVoPWrnuEWKm-203">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1093" y="698" width="230" height="219" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="f82c28fb-c51a-4e6f-ba13-82d802c04c35" Criticality="Low" label="Site Internet&lt;br&gt;Protonuke&lt;br&gt;Client -2" internalLabel="PC-4" HostName="Site Internet Client" IPAddress="192.168.50.101" id="dEJbTsw4NDr6ufRAMC0M-166">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;fillColor=#D3EEF2;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;labelBackgroundColor=none;imageBackground=#9933FF;imageBorder=#9933FF;strokeWidth=5;" parent="MSz8OllPPVoPWrnuEWKm-203" vertex="1">
        <mxGeometry x="38.5" y="73.5" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="ae81f3d5-55fc-4452-8c53-f73d0ed8591c" Criticality="Low" label="Site Internet&lt;br&gt;Protonuke&lt;br&gt;Client-1&lt;br&gt;" internalLabel="PC-4" IPAddress="192.168.50.100" HostName="Site Internet Client" id="dEJbTsw4NDr6ufRAMC0M-165">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;fillColor=#D3EEF2;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;labelBackgroundColor=none;imageBorder=#9933FF;strokeWidth=5;imageBackground=#9933FF;" parent="MSz8OllPPVoPWrnuEWKm-203" vertex="1">
        <mxGeometry x="130" y="75" width="61" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_23" ComponentGuid="e2e3b215-bdae-4390-9e6e-3e90b2613b79" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_23" id="NHTkQpqP6YVD4zE5q_3R-161">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="MSz8OllPPVoPWrnuEWKm-203" vertex="1">
        <mxGeometry x="58.28780000000006" y="150.45001000000002" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="668M16ZSEad6bdqbof_c-162" value="192.168.50.0/24&amp;nbsp;" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;labelBorderColor=#000000;" parent="MSz8OllPPVoPWrnuEWKm-203" vertex="1">
      <mxGeometry x="4.5" y="194" width="219" height="24" as="geometry"/>
    </mxCell>
    <mxCell id="dEJbTsw4NDr6ufRAMC0M-168" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="MSz8OllPPVoPWrnuEWKm-203" source="dEJbTsw4NDr6ufRAMC0M-166" target="NHTkQpqP6YVD4zE5q_3R-161" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="70" y="156" as="targetPoint"/>
        <mxPoint x="70" y="116" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <object label="Connector_22" ComponentGuid="010f8800-bc9b-4fbb-b841-97f0be8b2357" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_22" id="6KicWmQY0lRHmWq-PmBb-163">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;" parent="1" vertex="1">
        <mxGeometry x="1243.5" y="849" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Connector_50" ComponentGuid="1395e35d-1032-4084-8180-5b6854194f2a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Connector_50" id="kq5FGfvMyonBIMvHzh2S-183">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=left;verticalLabelPosition=top;align=right;verticalAlign=bottom;direction=south;" parent="1" vertex="1">
        <mxGeometry x="1045.2878" y="607.95001" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="6KicWmQY0lRHmWq-PmBb-165" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="NHTkQpqP6YVD4zE5q_3R-161" target="6KicWmQY0lRHmWq-PmBb-163" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1235" y="862" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="MSz8OllPPVoPWrnuEWKm-207" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=none;" parent="1" source="dEJbTsw4NDr6ufRAMC0M-165" target="6KicWmQY0lRHmWq-PmBb-163" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1256.5" y="861.5" as="targetPoint"/>
        <mxPoint x="1257" y="817" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <object ComponentGuid="76587399-9080-4506-9d85-49f92566274d" Criticality="Low" label="Site Firewall" internalLabel="FW-15" id="A60NQh9wFF8a9x_0RU2g-170">
      <mxCell style="aspect=fixed;html=1;align=left;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/firewall.svg;labelPosition=right;verticalLabelPosition=top;verticalAlign=bottom;" parent="1" vertex="1">
        <mxGeometry x="1471" y="917.5" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="A60NQh9wFF8a9x_0RU2g-165" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="6KicWmQY0lRHmWq-PmBb-168" target="dEJbTsw4NDr6ufRAMC0M-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1500.5844594594591" y="1225" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="A60NQh9wFF8a9x_0RU2g-172" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="A60NQh9wFF8a9x_0RU2g-170" target="dEJbTsw4NDr6ufRAMC0M-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1501.0000000000002" y="1048.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="A60NQh9wFF8a9x_0RU2g-174" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="A60NQh9wFF8a9x_0RU2g-170" target="6" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1501.0000000000002" y="837.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="A60NQh9wFF8a9x_0RU2g-176" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="6KicWmQY0lRHmWq-PmBb-163" target="A60NQh9wFF8a9x_0RU2g-170" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1472" y="924" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="A60NQh9wFF8a9x_0RU2g-178" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="NHTkQpqP6YVD4zE5q_3R-171" target="A60NQh9wFF8a9x_0RU2g-170" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1310.2878" y="1032.9500099999998" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7n4MPl1vPrtBKXpNYoUz-162" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="NHTkQpqP6YVD4zE5q_3R-162" target="A60NQh9wFF8a9x_0RU2g-170" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1531" y="937" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7n4MPl1vPrtBKXpNYoUz-166" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="kq5FGfvMyonBIMvHzh2S-183" target="kq5FGfvMyonBIMvHzh2S-193" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1052.2878" y="527.9500100000001" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="7n4MPl1vPrtBKXpNYoUz-168" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="kq5FGfvMyonBIMvHzh2S-183" target="kq5FGfvMyonBIMvHzh2S-161" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="965.2878000000001" y="617.95001" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-162" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;entryX=0.5;entryY=1;entryDx=0;entryDy=0;" parent="1" source="kq5FGfvMyonBIMvHzh2S-184" target="kq5FGfvMyonBIMvHzh2S-210" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1344.2878" y="527.9500099999999" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-164" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="kq5FGfvMyonBIMvHzh2S-184" target="kq5FGfvMyonBIMvHzh2S-183" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1271.2878" y="613.9500099999999" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-166" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="kq5FGfvMyonBIMvHzh2S-184" target="6" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1451.2878" y="617.9500100000001" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-168" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="bi1JvaAtu-6lTVzKTB_4-162" target="6" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1578.2878" y="618.3293203448275" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-172" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="bi1JvaAtu-6lTVzKTB_4-162" target="bi1JvaAtu-6lTVzKTB_4-173" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1668.2878" y="528.3293203448275" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-174" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="MSz8OllPPVoPWrnuEWKm-201" target="bi1JvaAtu-6lTVzKTB_4-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1896.7878" y="611.9500100000001" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-176" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="MSz8OllPPVoPWrnuEWKm-201" target="bi1JvaAtu-6lTVzKTB_4-182" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1991.7878" y="526.95001" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-180" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="kq5FGfvMyonBIMvHzh2S-162" target="MSz8OllPPVoPWrnuEWKm-201" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="2159.0142857142855" y="617.9999999999998" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-182" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="bi1JvaAtu-6lTVzKTB_4-161" target="6KicWmQY0lRHmWq-PmBb-168" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="952.5" y="1401" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="RPE4Lq7o4IoOIfKsueCI-186" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" parent="1" source="kq5FGfvMyonBIMvHzh2S-164" target="6KicWmQY0lRHmWq-PmBb-170" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1850" y="1358" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>' WHERE [Id] = 17
PRINT(N'Operation applied to 4 rows out of 4')

PRINT(N'Add rows to [dbo].[AGGREGATION_TYPES]')
INSERT INTO [dbo].[AGGREGATION_TYPES] ([Aggregation_Mode]) VALUES ('Compare')
INSERT INTO [dbo].[AGGREGATION_TYPES] ([Aggregation_Mode]) VALUES ('Trend')
PRINT(N'Operation applied to 2 rows out of 2')

PRINT(N'Add rows to [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS]')
SET IDENTITY_INSERT [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ON
if not exists (select * from UNIVERSAL_SUB_CATEGORY_HEADINGS where Heading_Pair_Id = 7484)
begin
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (35, 7564, 'Standards', NULL, 7484)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (45, 7565, 'Standards', NULL, 7485)
end
SET IDENTITY_INSERT [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] OFF
PRINT(N'Operation applied to 2 rows out of 2')

PRINT(N'Add rows to [dbo].[NEW_QUESTION_LEVELS]')
if not exists (select * from new_question_Levels where new_question_set_id = 38170)
begin
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 38170, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 38171, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 38172, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 38170, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 38171, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 38172, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 38170, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 38171, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 38172, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 38170, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 38171, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 38172, NULL)
end
PRINT(N'Operation applied to 12 rows out of 12')

PRINT(N'Add constraints to [dbo].[NEW_QUESTION_LEVELS]')
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] WITH CHECK CHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_NEW_QUESTION_SETS]
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] WITH CHECK CHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_UNIVERSAL_SAL_LEVEL]

PRINT(N'Add constraints to [dbo].[NEW_QUESTION]')
ALTER TABLE [dbo].[NEW_QUESTION] WITH CHECK CHECK CONSTRAINT [FK_NEW_QUESTION_UNIVERSAL_SAL_LEVEL]
ALTER TABLE [dbo].[NEW_QUESTION] WITH CHECK CHECK CONSTRAINT [FK_NEW_QUESTION_UNIVERSAL_SUB_CATEGORY_HEADINGS]
ALTER TABLE [dbo].[COMPONENT_QUESTIONS] CHECK CONSTRAINT [FK_Component_Questions_NEW_QUESTION]
ALTER TABLE [dbo].[FINANCIAL_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_FINANCIAL_QUESTIONS_NEW_QUESTION]
ALTER TABLE [dbo].[NERC_RISK_RANKING] CHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_QUESTION]
ALTER TABLE [dbo].[NEW_QUESTION_SETS] CHECK CONSTRAINT [FK_NEW_QUESTION_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS] CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_NEW_QUESTION1]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_QUESTION]

PRINT(N'Add constraints to [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS]')
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] WITH CHECK CHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] WITH CHECK CHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS]
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] WITH CHECK CHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_UNIVERSAL_SUB_CATEGORIES]
ALTER TABLE [dbo].[SUB_CATEGORY_ANSWERS] WITH CHECK CHECK CONSTRAINT [FK_SUB_CATEGORY_ANSWERS_UNIVERSAL_SUB_CATEGORY_HEADINGS]

PRINT(N'Add constraints to [dbo].[NEW_REQUIREMENT]')
ALTER TABLE [dbo].[NEW_REQUIREMENT] CHECK CONSTRAINT [FK_NEW_REQUIREMENT_NCSF_Category]
ALTER TABLE [dbo].[NEW_REQUIREMENT] WITH CHECK CHECK CONSTRAINT [FK_NEW_REQUIREMENT_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[NEW_REQUIREMENT] CHECK CONSTRAINT [FK_NEW_REQUIREMENT_STANDARD_CATEGORY]
ALTER TABLE [dbo].[FINANCIAL_REQUIREMENTS] WITH CHECK CHECK CONSTRAINT [FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[NERC_RISK_RANKING] CHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_REQUIREMENT]
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] CHECK CONSTRAINT [FK_Parameter_Requirements_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] CHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS] CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] CHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_SETS] CHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] CHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT]

PRINT(N'Add constraints to [dbo].[GEN_FILE]')
ALTER TABLE [dbo].[GEN_FILE] WITH CHECK CHECK CONSTRAINT [FK_GEN_FILE_FILE_REF_KEYS]
ALTER TABLE [dbo].[GEN_FILE] WITH CHECK CHECK CONSTRAINT [FK_GEN_FILE_FILE_TYPE]
ALTER TABLE [dbo].[FILE_KEYWORDS] CHECK CONSTRAINT [FILE_KEYWORDS_GEN_FILE_FK]
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] CHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE]
ALTER TABLE [dbo].[MATURITY_REFERENCES] CHECK CONSTRAINT [FK_MATURITY_REFERENCES_GEN_FILE]
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] CHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_GEN_FILE]
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] CHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_GEN_FILE]
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] CHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_GEN_FILE]
ALTER TABLE [dbo].[SET_FILES] WITH CHECK CHECK CONSTRAINT [FK_SET_FILES_GEN_FILE]
ALTER TABLE [dbo].[AGGREGATION_INFORMATION] WITH CHECK CHECK CONSTRAINT [FK_AGGREGATION_INFORMATION_AGGREGATION_TYPES]
COMMIT TRANSACTION
GO
