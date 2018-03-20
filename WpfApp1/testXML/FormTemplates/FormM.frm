<?xml version="1.0" encoding="utf-8"?>
<Form type="ALInspectionApp.CaseObject.Form">
  <name>FormM</name>
  <isReadOnly>false</isReadOnly>
  <formID></formID>
  <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <verboseName>Exit Preparation Worksheet</verboseName>
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
      <name>head</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>issues</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>issues</name>
            <isReadOnly>false</isReadOnly>
            <labelText>ISSUES</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>res</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>res</name>
            <isReadOnly>false</isReadOnly>
            <labelText>RESIDENT /
 STAFF NO.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>scope</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>scope</name>
            <isReadOnly>false</isReadOnly>
            <labelText>SCOPE/CONCERNS</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>wac/rcw</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>wac/rcw</name>
            <isReadOnly>false</isReadOnly>
            <labelText>WAC/RCW,
(CONSULTATION, CITATION)</labelText>
          </ControlLabel>
        </GridElement>
      </elementList>
    </LayoutGrid>
    <LayoutRepeatGrid type="ALInspectionApp.FormItems.Layout.LayoutRepeatGrid">
      <name>mainbody</name>
      <isReadOnly>false</isReadOnly>
      <buttonText>Add Issue</buttonText>
      <template>
        <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
          <name>body</name>
          <isReadOnly>false</isReadOnly>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>issuesa</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>3</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>issuesa</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <acceptsNewLine>true</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>resa</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>3</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlInteger type="ALInspectionApp.FormItems.Controls.ControlInteger">
                <name>resa</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <value>0</value>
              </ControlInteger>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>scopea</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>4</col>
              <rowSpan>1</rowSpan>
              <colSpan>5</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>scopea</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <acceptsNewLine>true</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>wac/rcwa</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>9</col>
              <rowSpan>1</rowSpan>
              <colSpan>3</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>wac/rcwa</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <acceptsNewLine>true</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
          </elementList>
        </LayoutGrid>
      </template>
      <!--Below is the list of items contained within this group-->
      <elementList />
    </LayoutRepeatGrid>
    <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>issuesa</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>issuesa</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>resa</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlInteger type="ALInspectionApp.FormItems.Controls.ControlInteger">
            <name>resa</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>0</value>
          </ControlInteger>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>scopea</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>scopea</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>wac/rcwa</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>wac/rcwa</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>