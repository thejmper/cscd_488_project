<?xml version="1.0" encoding="utf-8"?>
<Form type="ALInspectionApp.CaseObject.Form">
  <name>FormN</name>
  <isReadOnly>false</isReadOnly>
  <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <verboseName>Contact Requirements</verboseName>
  <!--Below is the list of items contained within this group-->
  <elementList>
    <LayoutStackPanel type="ALInspectionApp.FormItems.Layout.LayoutStackPanel">
      <name>inspectionType</name>
      <isReadOnly>false</isReadOnly>
      <orientation>Horizontal</orientation>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <labelText>Inspection Type</labelText>
        </ControlLabel>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>initial</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Initial</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>full</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Full</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>followup</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Follow up</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>monitering</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Monitoring</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>complaint</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Complaint</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlInteger type="ALInspectionApp.FormItems.Controls.ControlInteger">
          <name>number</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Number</englishTitle>
          <orientation>Vertical</orientation>
          <value>0</value>
        </ControlInteger>
      </elementList>
    </LayoutStackPanel>
    <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>label</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>label</name>
            <isReadOnly>false</isReadOnly>
            <labelText>For all contracts the provider must develop and provide services as agreed upon in a negotiated service agreement 
developed according to WAC 388-78Aincluding reasonable accommodations as required by RCW 70.129.  
The negotiated service agreement must be approved by the Case Manager.
Contract: Adult Residential Care(ARC)
	Service Standards: 388 - 110 - 240
	•	Negotiated service agreement.
	•	Personal care services.

Contract:  Assisted Living(AL)
	Structural Requirements: 388 - 110 - 140
	•	Private apartment - like unit.
	•	Meet standards for type “B” dwelling if constructed after 09 / 01 / 04(1) – (2).
	•	Married couples are permitted to share an AL apartment without exemption if they understand they have a right to a private apartment and both request to share.
	•	Non-married roommates sharing a private apartment will require an exemption.
	Service Standards:  388-110-150
	•	Negotiated service agreement.
	•	Homelike environment.
	•	Provide the following:
		1.	Intermittent Nursing services.
		2.	Medication administration.
		3.	Personal care services.
		4.	Supportive services that promote independence and self-sufficiency.
		5.	Generic personal care items.
		6.	Access to an on-site washing machine and dryer.
		7.	Make beverages and snacks available to residents

Contract:  Enhanced Adult Residential Care (EARC)
	Service Standards:  388-110-220
	•	No more than two residents per room.
	•	Negotiated service agreement.
	•	Provide the following:
		1.	Intermittent Nursing services
		2.	Medication administration.
		3.	Personal care services.
		4.	Supportive services that promote independence and self-sufficiency.

Contract: Enhanced Adult Residential Care – Specialized Dementia Care(SDC) *
		*Participating facilities are listed at http://adsaweb.dshs.wa.gov/hcs/SDCP/
	Service Standards: 388 - 110 - 220(2) and(3)
	•	Meet the requirements of the EARC for service standards 388 - 110 - 220(1):
	•	Supportive services.	•	Full reassessment semi - annually.
	•	24 hour awake staff responsive to resident’s needs.
	•	Additional policies for:
		1.Wandering.
		2.Actions to be taken regarding elopement.
		3.Consultation resources to address behavioral issues.
	•	Continuing Ed 12 hours / year requirement for staff to include 6 hours related to dementia.  
	•	Assistance with bathing and toileting.  
	•	Generic personal care items.  
	•	Assistance with eating.  
		1.Routine extensive assistance – oversight, supervision, cuing and encouragement.  
		2.Occasional total assistance for all necessary physical assistance(tube feeding and IV feeding are not required).
	•	Daily activities.
		1.Opportunities for independent, self directed activities.
		2.Individual activities.
		3.Group activities.
		4.Activities that accommodate variations in mood, energy and preferences – based upon individual resident schedules and interests.
	Environment:
	•	Multiple common areas – Vary in size and arrangement.
	•	Outdoor area – At least one outdoor area.
		1.Accessible to resident without staff assistance.
		2.Surrounded by walls or fences at least 72 inches high.
		3.Protected from direct sunshine and rain throughout the day.
		4.Firm, stable and slip resistant walking surfaces free of abrupt changes and appropriate for wheelchairs and walkers.
		5.Suitable outdoor furniture.
		6.No poisonous or toxic plants.
	•	Areas used by residents.
		1.Residential atmosphere – opportunities for privacy, socialization and wandering.
		2.Public address system is used only for emergencies.
	•	Resident room.1.Furnished and / or decorated personal to resident based on needs and preferences.
		2.Accessible to resident without staff assistance. </labelText>
          </ControlLabel>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>