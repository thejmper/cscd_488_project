<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormM</name>
  <isReadOnly>false</isReadOnly>
  <ControlDate type="WpfApp1.FormItems.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
  </ControlDate>
  <!--Below is the list of items contained within this group-->
  <elementList>
    <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
      <name>inspectionType</name>
      <isReadOnly>false</isReadOnly>
      <orientation>Horizontal</orientation>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <ControlLabel type="WpfApp1.FormItems.ControlLabel">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <labelText>Inspection Type</labelText>
        </ControlLabel>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>initial</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Initial</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>full</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Full</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>followup</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Follow up</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>monitering</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Monitoring</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>complaint</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Complaint</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlInteger type="WpfApp1.FormItems.ControlInteger">
          <name>number</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Number</englishTitle>
          <orientation>Vertical</orientation>
          <value>0</value>
        </ControlInteger>
      </elementList>
    </LayoutStackPanel>
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>head</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>issues</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>issues</name>
            <isReadOnly>false</isReadOnly>
            <labelText>ISSUES</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>res</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>res</name>
            <isReadOnly>false</isReadOnly>
            <labelText>RESIDENT /
 STAFF NO.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>scope</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>scope</name>
            <isReadOnly>false</isReadOnly>
            <labelText>SCOPE/CONCERNS</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>wac/rcw</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>wac/rcw</name>
            <isReadOnly>false</isReadOnly>
            <labelText>WAC/RCW,
(CONSULTATION, CITATION)</labelText>
          </ControlLabel>
        </GridElement>
      </elementList>
    </LayoutGrid>
    <LayoutRepeatGrid type="WpfApp1.FormItems.LayoutRepeatGrid">
      <name>mainbody</name>
      <isReadOnly>false</isReadOnly>
      <template>
        <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
          <name>body</name>
          <isReadOnly>false</isReadOnly>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>issuesa</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>3</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>issuesa</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <acceptsNewLine>true</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>resa</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>3</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                <name>resa</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <value>0</value>
              </ControlInteger>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>scopea</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>4</col>
              <rowSpan>1</rowSpan>
              <colSpan>5</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>scopea</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle />
                <orientation>Vertical</orientation>
                <acceptsNewLine>true</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>wac/rcwa</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>9</col>
              <rowSpan>1</rowSpan>
              <colSpan>3</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
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
      <elementList>
        <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
          <name>row0</name>
          <isReadOnly>false</isReadOnly>
          <orientation>Vertical</orientation>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
              <name>body</name>
              <isReadOnly>false</isReadOnly>
              <!--Below is the list of items contained within this group-->
              <elementList>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>issuesa</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>0</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>3</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>issuesa</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle />
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>true</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>resa</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>3</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                    <name>resa</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle />
                    <orientation>Vertical</orientation>
                    <value>0</value>
                  </ControlInteger>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>scopea</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>4</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>5</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>scopea</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle />
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>true</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>wac/rcwa</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>9</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>3</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
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
        </LayoutStackPanel>
      </elementList>
    </LayoutRepeatGrid>
  </elementList>
</Form>