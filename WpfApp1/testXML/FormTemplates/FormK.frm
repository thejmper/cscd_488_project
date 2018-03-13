<?xml version="1.0" encoding="utf-8"?>
<Form type="ALInspectionApp.CaseObject.Form">
  <name>FormK</name>
  <isReadOnly>false</isReadOnly>
  <formID></formID>
  <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <verboseName>Staff Sample/Record Review</verboseName>
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
    <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
      <name>spacer</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutRepeatGrid type="ALInspectionApp.FormItems.Layout.LayoutRepeatGrid">
      <name>staffs</name>
      <isReadOnly>false</isReadOnly>
      <buttonText>Add Staff</buttonText>
      <template>
        <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
          <name>staff</name>
          <isReadOnly>false</isReadOnly>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>name</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>3</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>name</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Name</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>title</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>title</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Title</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>hire</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>3</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
                <name>hire</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Hire Date</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty />
              </ControlDate>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>DOB</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>5</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
                <name>DOB</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Birth Date</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty />
              </ControlDate>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>safety</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>7</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>safety</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>SAFETY
ORIENTA-
TION AND 
FACILITY 
ORIENTATION</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>background</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>8</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
                <name>background</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Background 
Check Date</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty />
              </ControlDate>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>fingerprinting</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>10</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
                <name>fingerprinting</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Fingerprinting
Date</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty />
              </ControlDate>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>firstaid</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>2</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>firstaid</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>FIRST 
AID 
AND 
CPR</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>training</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>3</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>training</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>TRAINIG 
EXEMPTION 
CNA, RN, ETC.</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>tb</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>4</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>tb</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>TB</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>food</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>5</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>food</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Food
Card</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>cert</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>6</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
                <name>cert</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>BASIC 120 
DAYS CERT 
EFFECTIVE
 01/07/2012</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty />
              </ControlDate>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>nurse</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>7</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>nurse</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NURSE 
DELEGA-
TION</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>spec</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>8</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>spec</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>SPECIALITY:  
DDA / 
MH / 
DEMENTIA / 
MANAGER</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>admin</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>9</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>admin</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>ADMIN 
QUALS 
AND 
TRAINING</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>birth</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>10</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
                <name>birth</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>CE – 12 HR 
PER 
BIRTHDAY 
YEAR 
EFFECTIVE 
07/01/2012</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>space</name>
              <isReadOnly>false</isReadOnly>
              <row>3</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>12</colSpan>
              <isBordered>True</isBordered>
              <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
                <name>space</name>
                <isReadOnly>false</isReadOnly>
                <height>25</height>
              </ElementSpacer>
            </GridElement>
          </elementList>
        </LayoutGrid>
      </template>
      <!--Below is the list of items contained within this group-->
      <elementList />
    </LayoutRepeatGrid>
    <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
      <name>notes</name>
      <isReadOnly>false</isReadOnly>
      <englishTitle>Notes</englishTitle>
      <orientation>Vertical</orientation>
      <acceptsNewLine>true</acceptsNewLine>
      <text />
    </ControlText>
  </elementList>
</Form>