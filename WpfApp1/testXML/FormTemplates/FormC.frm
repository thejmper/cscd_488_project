<?xml version="1.0" encoding="utf-8"?>
<Form type="ALInspectionApp.CaseObject.Form">
  <name>FormC</name>
  <isReadOnly>false</isReadOnly>
  <formID></formID>
  <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <verboseName>Resident List</verboseName>
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
      <name>space1</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Room
Number</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab2</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>RESIDENT NAME</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab3</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>NOTES</labelText>
          </ControlLabel>
        </GridElement>
      </elementList>
    </LayoutGrid>
    <LayoutRepeatGrid type="ALInspectionApp.FormItems.Layout.LayoutRepeatGrid">
      <name>residents</name>
      <isReadOnly>false</isReadOnly>
      <buttonText>Add Resident</buttonText>
      <template>
        <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
          <name>resident</name>
          <isReadOnly>false</isReadOnly>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>roomnum</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>roomnum</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>resname</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>2</col>
              <rowSpan>1</rowSpan>
              <colSpan>5</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>resname</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
              <name>notes</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>7</col>
              <rowSpan>1</rowSpan>
              <colSpan>5</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                <name>notes</name>
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
  </elementList>
</Form>