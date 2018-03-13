<?xml version="1.0" encoding="utf-8"?>
<Form type="ALInspectionApp.CaseObject.Form">
  <name>FormA</name>
  <isReadOnly>false</isReadOnly>
  <formID></formID>
  <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <verboseName>Pre-Inspection Preparation</verboseName>
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
          <name>full</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Full</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
      </elementList>
    </LayoutStackPanel>
    <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
      <name>spacer1</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
      <name>labelholder</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>label</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>label</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Review licensing file for:
•	Current state contract – if applicable
•	Past and current complaint investigations
•	Past SOD’s and uncorrected deficiencies(list on back of form)
•	Past three consecutive years compliance with all inspections and investigations
•	Resident and staff list from last licensing inspection
Current exemptions</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>label2</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>label2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Confer regarding concerns about facility with:
•	Complaint Nurse, licensor
•	Case Managers: HCS, DDD</labelText>
          </ControlLabel>
        </GridElement>
      </elementList>
    </LayoutGrid>
    <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
      <name>spacera</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>caseManager</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>caseManager</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>CASE MANAGER DDD / HCS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>contact1</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
            <name>contact1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Contact Date</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty />
          </ControlDate>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>comm1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>comm1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>COMMENTS / CONCERNS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>space2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
            <name>space2</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>ombuds</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>ombuds</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>OMBUDS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>com2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>com2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>COMMENTS / CONCERNS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>space3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
            <name>space3</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>other</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>other</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>OTHER OUTSIDE AGENCY</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>contact2</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
            <name>contact2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>CONTACT DATE</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty />
          </ControlDate>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>com3</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>com3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>COMMENTS / CONCERNS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>space4</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
            <name>space4</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>contracts</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <LayoutStackPanel type="ALInspectionApp.FormItems.Layout.LayoutStackPanel">
            <name>contracts</name>
            <isReadOnly>false</isReadOnly>
            <orientation>Horizontal</orientation>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
                <name>con</name>
                <isReadOnly>false</isReadOnly>
                <labelText>Contracts: </labelText>
              </ControlLabel>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>al</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>AL</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>earc</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>EARC</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>arc</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>ARC</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>dementia</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Dementia</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>ddd</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>DDD</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>adc</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Adult Day Care</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>none</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>None</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </LayoutStackPanel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>exempt</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>exempt</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>CURRENT EXEMPTIONS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>space5</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
            <name>space5</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>notes</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>notes</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes:  Pre-Inspection Preparation</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>