<?xml version="1.0" encoding="utf-8"?>
<Form type="ALInspectionApp.CaseObject.Form">
  <name>FormH</name>
  <isReadOnly>false</isReadOnly>
  <formID></formID>
  <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <verboseName>Other Contact Interview</verboseName>
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
    <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>resName</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>resName</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>RESIDENT NAME</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>resNum</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>resNum</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>RESIDENT NUMBER</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>date</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
            <name>date</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>DATE OF INTERVIEW</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty />
          </ControlDate>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>contactName</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>contactName</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>CONTACT NAME AND NUMBER</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>relationship</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>relationship</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>RELATIONSHIP TO RESIDENT</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>notes1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>notes1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NOTES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>contacts</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <LayoutRepeatGrid type="ALInspectionApp.FormItems.Layout.LayoutRepeatGrid">
            <name>contacts</name>
            <isReadOnly>false</isReadOnly>
            <buttonText>Add Contact</buttonText>
            <template>
              <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
                <name>contact</name>
                <isReadOnly>false</isReadOnly>
                <!--Below is the list of items contained within this group-->
                <elementList>
                  <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
                    <name>spacer</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>0</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>12</colSpan>
                    <isBordered>False</isBordered>
                    <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
                      <name>spacer</name>
                      <isReadOnly>false</isReadOnly>
                      <height>10</height>
                    </ElementSpacer>
                  </GridElement>
                  <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
                    <name>Contact</name>
                    <isReadOnly>false</isReadOnly>
                    <row>3</row>
                    <col>0</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>6</colSpan>
                    <isBordered>True</isBordered>
                    <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                      <name>Contact</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>CONTACT NAME AND NUMBER</englishTitle>
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
                      <text />
                    </ControlText>
                  </GridElement>
                  <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
                    <name>date2</name>
                    <isReadOnly>false</isReadOnly>
                    <row>3</row>
                    <col>6</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>3</colSpan>
                    <isBordered>True</isBordered>
                    <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
                      <name>date2</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>DATE OF INTERVIEW</englishTitle>
                      <orientation>Vertical</orientation>
                      <SelectedDateProperty />
                    </ControlDate>
                  </GridElement>
                  <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
                    <name>relationship2</name>
                    <isReadOnly>false</isReadOnly>
                    <row>3</row>
                    <col>9</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>3</colSpan>
                    <isBordered>True</isBordered>
                    <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                      <name>relationship2</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>RELATIONSHIP TO RESIDENT</englishTitle>
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
                      <text />
                    </ControlText>
                  </GridElement>
                  <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
                    <name>NOTES2</name>
                    <isReadOnly>false</isReadOnly>
                    <row>4</row>
                    <col>0</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>12</colSpan>
                    <isBordered>True</isBordered>
                    <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
                      <name>NOTES2</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>NOTES</englishTitle>
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
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>spacer1</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ElementSpacer type="ALInspectionApp.FormItems.Controls.ElementSpacer">
            <name>spacer1</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>finalNotes</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>finalNotes</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Additional Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>