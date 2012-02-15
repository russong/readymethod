# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Phase.delete_all
Phase.create(name: '1.0 Initiate and Plan')
Phase.create(name: '2.0 Requirements and Data Modeling')
Phase.create(name: '3.0 Design')
Phase.create(name: '4.0 Build')
Phase.create(name: '5.0 Test')
Phase.create(name: '6.0 Deploy')

Phase.create(name: 'Project and Program Management',program_level: true)
Phase.create(name: 'Solution Architecture',program_level: true)
Phase.create(name: 'Infrastructure Planning & Implementation',program_level: true)
Phase.create(name: 'Risk Management & QA',program_level: true)

Stage.delete_all
phase1 = Phase.where(:name => "1.0 Initiate and Plan").first
phase2 = Phase.where(:name => "2.0 Requirements and Data Modeling").first
phase3 = Phase.where(:name => "3.0 Design").first
phase4 = Phase.where(:name => "4.0 Build").first
phase5 = Phase.where(:name => "5.0 Test").first
phase6 = Phase.where(:name => "6.0 Deploy").first

Stage.create(name: '1.1 Initiate Project' , :phase_id => phase1.id)
Stage.create(name: '1.2 Plan project' , :phase_id => phase1.id)

Stage.create(name: '2.1 Determine business requirements' , :phase_id => phase2.id)
Stage.create(name: '2.2 Analyse data requirements and commence data modeling' , :phase_id => phase2.id)

Stage.create(name: '3.1 Define Solution' , :phase_id => phase3.id)
Stage.create(name: '3.2 Define Logical Data Model' , :phase_id => phase3.id)
Stage.create(name: '3.3 Analyze Source' , :phase_id => phase3.id)
Stage.create(name: '3.4 Finalize Design' , :phase_id => phase3.id)
Stage.create(name: '3.5 Plan Next Phase' , :phase_id => phase3.id)

Stage.create(name: '4.1 Generate databases and develop modules' , :phase_id => phase4.id)
Stage.create(name: '4.2 Perform Extract, Transform and Load (ETL) Procedures' , :phase_id => phase4.id)
Stage.create(name: '4.3 Build Analytic Components' , :phase_id => phase4.id)
Stage.create(name: '4.4 Prepare for testing' , :phase_id => phase4.id)

Stage.create(name: '5.1 Perform testing and data validation' , :phase_id => phase5.id)
Stage.create(name: '5.2 Prepare for Deployment Phase' , :phase_id => phase5.id)

Stage.create(name: '6.1 Plan for deployment and conduct pre-deployment tests' , :phase_id => phase6.id)
Stage.create(name: '6.2 Perform production set-ups' , :phase_id => phase6.id)
Stage.create(name: '6.3 Produce documentation for operational readiness and training' , :phase_id => phase6.id)
Stage.create(name: '6.4 Conduct training and implement communication plan' , :phase_id => phase6.id)
Stage.create(name: '6.5 Complete cut-over to Production' , :phase_id => phase6.id)

Activity.delete_all
stage1 = Stage.where(:name => "1.1 Initiate Project").first
stage2 = Stage.where(:name => "1.2 Plan project").first

stage3 = Stage.where(:name => "2.1 Determine business requirements").first
stage4 = Stage.where(:name => "2.2 Analyse data requirements and commence data modeling").first

stage5 = Stage.where(:name => "3.1 Define Solution").first
stage6 = Stage.where(:name => "3.2 Define Logical Data Model").first
stage7 = Stage.where(:name => "3.3 Analyze Source").first
stage8 = Stage.where(:name => "3.4 Finalize Design").first
stage9 = Stage.where(:name => "3.5 Plan Next Phase").first

stage10 = Stage.where(:name => "4.1 Generate databases and develop modules").first
stage11 = Stage.where(:name => "4.2 Perform Extract, Transform and Load (ETL) Procedures").first
stage12 = Stage.where(:name => "4.3 Build Analytic Components").first
stage13 = Stage.where(:name => "4.4 Prepare for testing").first

stage14 = Stage.where(:name => "5.1 Perform testing and data validation").first
stage15 = Stage.where(:name => "5.2 Prepare for Deployment Phase").first

stage16 = Stage.where(:name => "6.1 Plan for deployment and conduct pre-deployment tests").first
stage17 = Stage.where(:name => "6.2 Perform production set-ups").first
stage18 = Stage.where(:name => "6.3 Produce documentation for operational readiness and training").first
stage19 = Stage.where(:name => "6.4 Conduct training and implement communication plan").first
stage20 = Stage.where(:name => "6.5 Complete cut-over to Production").first

Activity.create(name: '1.1.1 Develop idea from business strategy and Company direction' , :stage_id => stage1.id)
Activity.create(name: '1.1.2 Develop Business Case' , :stage_id => stage1.id)
Activity.create(name: '1.1.3 Initiate Project/Program/Project' , :stage_id => stage1.id)
Activity.create(name: '1.1.4 Produce/Confirm High-level scoping ' , :stage_id => stage1.id)
Activity.create(name: '1.1.5 Identify Business Sponsor, Business Owner' , :stage_id => stage1.id)
Activity.create(name: '1.1.6 Establish initial project team' , :stage_id => stage1.id)
Activity.create(name: '1.1.7 Establish/Confirm technology tools to be used in the project' , :stage_id => stage1.id)

Activity.create(name: '1.2.1 Develop project plan' , :stage_id => stage2.id)
Activity.create(name: '1.2.2 Define resources and timelines' , :stage_id => stage2.id)
Activity.create(name: '1.2.3 Define Activities and deliverables' , :stage_id => stage2.id)
Activity.create(name: '1.2.4 Setup Project Management Office infrastructure' , :stage_id => stage2.id)
Activity.create(name: '1.2.5 Develop/Update the  Project Charter' , :stage_id => stage2.id)

Activity.create(name: '2.1.1 Conduct data-gathering sessions to capture requirements.' , :stage_id => stage3.id)
Activity.create(name: '2.1.2 Develop High Level Architecture Overview (Future State at project level) ' , :stage_id => stage3.id)
Activity.create(name: '2.1.3 Assess Infrastructure and Organizational Impact' , :stage_id => stage3.id)
Activity.create(name: '2.1.4 Assess Data integration requirements ' , :stage_id => stage3.id)
Activity.create(name: '2.1.5 Identify interface requirements' , :stage_id => stage3.id)
Activity.create(name: '2.1.6 Identify Non-Functional requirements' , :stage_id => stage3.id)
Activity.create(name: '2.1.7 Produce the Business Requirement Specification document (BRS).' , :stage_id => stage3.id)

Activity.create(name: '2.2.1 Commence to produce the Logical Data Model (LDM)' , :stage_id => stage4.id)
Activity.create(name: '2.2.2 Determine information requirements based on business requirements.' , :stage_id => stage4.id)
Activity.create(name: '2.2.3 Produce the Requirement Traceability Matrix' , :stage_id => stage4.id)

Activity.create(name: '3.1.1 Develop Solution Blueprint/Architecture' , :stage_id => stage5.id)
Activity.create(name: '3.1.2 Validate System Capacity Forecast' , :stage_id => stage5.id)

Activity.create(name: '3.2.1 Create Fact Table List' , :stage_id => stage6.id)
Activity.create(name: '3.2.2 Create Dimension Table List & Hierarchy Definition' , :stage_id => stage6.id)
Activity.create(name: '3.2.3 Define Fact and Dimension relationship' , :stage_id => stage6.id)
Activity.create(name: '3.2.4 Create/Modify Logical Data Model (LDM)' , :stage_id => stage6.id)

Activity.create(name: '3.3.1 Produce Source System Inventory' , :stage_id => stage7.id)
Activity.create(name: '3.3.2 Produce Source Target Data Mapping - Logical Level' , :stage_id => stage7.id)
Activity.create(name: '3.3.3 Produce Interface Inventory' , :stage_id => stage7.id)
Activity.create(name: '3.3.4 Produce ETL Inventory' , :stage_id => stage7.id)
Activity.create(name: '3.3.5 Produce Report Inventory' , :stage_id => stage7.id)

Activity.create(name: '3.4.1 Produce Physical Data Model (PDM)' , :stage_id => stage8.id)
Activity.create(name: '3.4.2 Perform Source to Target Data Mapping - PDM' , :stage_id => stage8.id)
Activity.create(name: '3.4.3 Produce ETL Design Spec' , :stage_id => stage8.id)
Activity.create(name: '3.4.4 Produce Interface Design Spec' , :stage_id => stage8.id)
Activity.create(name: '3.4.5 Produce Report Design Spec' , :stage_id => stage8.id)

Activity.create(name: '3.5.1 Develop (Master) Test Plan' , :stage_id => stage9.id)
Activity.create(name: '3.5.2 Commence establishing Build and Test Development Environments' , :stage_id => stage9.id)

Activity.create(name: '4.1.1 Generate Databases (ODS, DW, Data Marts)' , :stage_id => stage10.id)
Activity.create(name: '4.1.2 Finalize Storage Capacity Plan' , :stage_id => stage10.id)
Activity.create(name: '4.1.3 Develop/Extend Source System Modules' , :stage_id => stage10.id)
Activity.create(name: '4.1.4 Develop/Extend Common Components Modules' , :stage_id => stage10.id)

Activity.create(name: '4.2.1 Develop procedures to extract and move the data' , :stage_id => stage11.id)
Activity.create(name: '4.2.2 Develop procedures to load the data to target environment' , :stage_id => stage11.id)
Activity.create(name: '4.2.3 Develop Program/Projects or use data transformation tools to transform and integrate data' , :stage_id => stage11.id)
Activity.create(name: '4.2.4 Test Extract, Transform, Load (ETL) procedures' , :stage_id => stage11.id)
Activity.create(name: '4.2.5 Extract the data' , :stage_id => stage11.id)
Activity.create(name: '4.2.6 Load the data' , :stage_id => stage11.id)
Activity.create(name: '4.2.7 Transform and integrate the data' , :stage_id => stage11.id)
Activity.create(name: '4.2.8 Automate the ETL  procedures' , :stage_id => stage11.id)

Activity.create(name: '4.3.1 Build/Extend Analytic Components' , :stage_id => stage12.id)
Activity.create(name: '4.3.2 Perform Analytics Unit Tests' , :stage_id => stage12.id)

Activity.create(name: '4.4.1 Prepare Test Development Environment' , :stage_id => stage13.id)
Activity.create(name: '4.4.2 Prepare test data' , :stage_id => stage13.id)

Activity.create(name: '5.1.1 Finalise (Master) Test Plan' , :stage_id => stage14.id)
Activity.create(name: '5.1.2 Develop Test Scenarios/Test Cases/Test Scripts' , :stage_id => stage14.id)
Activity.create(name: '5.1.3 Finalise test data' , :stage_id => stage14.id)
Activity.create(name: '5.1.4 Perform Systems Testing' , :stage_id => stage14.id)
Activity.create(name: '5.1.5 Perform Systems Integration Testing' , :stage_id => stage14.id)
Activity.create(name: '5.1.6 Performance Testing' , :stage_id => stage14.id)
Activity.create(name: '5.1.7 Produce UAT Plan' , :stage_id => stage14.id)
Activity.create(name: '5.1.8 Perform User Acceptance Testing' , :stage_id => stage14.id)

Activity.create(name: '5.2.1 Create Deployment Plan' , :stage_id => stage15.id)
Activity.create(name: '5.2.2 Secure all signoffs to proceed to Deployment' , :stage_id => stage15.id)

Activity.create(name: '6.1.1 Conduct Pre-production Tests' , :stage_id => stage16.id)
Activity.create(name: '6.1.2 Obtain Client Sign-off to Deploy' , :stage_id => stage16.id)
Activity.create(name: '6.1.3 Finalise Deployment Plan' , :stage_id => stage16.id)

Activity.create(name: '6.2.1 Setup Production Environment' , :stage_id => stage17.id)
Activity.create(name: '6.2.2 Initialize System Data Sources' , :stage_id => stage17.id)
Activity.create(name: '6.2.3 Bundle and promote all Analytic components (e.g. scripts, catalogue/metadata, and report formats, source code) into a configuration management promotion package and lodge' , :stage_id => stage17.id)
Activity.create(name: '6.2.4 Generate PROD Databases (ODS, DW, Data Mart)' , :stage_id => stage17.id)
Activity.create(name: '6.2.5 Promote Data Integration Code to Production' , :stage_id => stage17.id)
Activity.create(name: '6.2.6 Move Metadata Repository to PROD Metadata Repository' , :stage_id => stage17.id)

Activity.create(name: '6.3.1 Document the deployed Browser/Portal Technologies operational and maintenance procedures' , :stage_id => stage18.id)
Activity.create(name: '6.3.2 Complete Analytics Layer Documentation' , :stage_id => stage18.id)
Activity.create(name: '6.3.3 Develop End User Analytics Application Manual' , :stage_id => stage18.id)
Activity.create(name: '6.3.4 Develop Operational/Maintenance Support Manual for Data Integration' , :stage_id => stage18.id)

Activity.create(name: '6.4.1 Conduct user training.' , :stage_id => stage19.id)
Activity.create(name: '6.4.2 Implement Communication Plan based on Program/Project Communication Plan.' , :stage_id => stage19.id)

Activity.create(name: '6.5.1 Deploy Client Support' , :stage_id => stage20.id)
Activity.create(name: '6.5.2 Cutover to Production' , :stage_id => stage20.id)
