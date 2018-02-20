<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormC</name>
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
          <orientation>Horizontal</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>full</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Full</englishTitle>
          <orientation>Horizontal</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>followup</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Follow up</englishTitle>
          <orientation>Horizontal</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>monitering</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Monitoring</englishTitle>
          <orientation>Horizontal</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>complaint</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Complaint</englishTitle>
          <orientation>Horizontal</orientation>
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
    <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
      <name>space1</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Room
Number</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab2</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>RESIDENT NAME</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab3</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>NOTES</labelText>
          </ControlLabel>
        </GridElement>
      </elementList>
    </LayoutGrid>
    <LayoutRepeatGrid type="WpfApp1.FormItems.LayoutRepeatGrid">
      <name>residents</name>
      <isReadOnly>false</isReadOnly>
      <GridElement type="WpfApp1.FormItems.GridElement">
        <name>roomnum</name>
        <isReadOnly>false</isReadOnly>
        <row>1</row>
        <col>0</col>
        <rowSpan>1</rowSpan>
        <colSpan>2</colSpan>
        <isBordered>True</isBordered>
        <ControlText type="WpfApp1.FormItems.ControlText">
          <name>roomnum</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle />
          <orientation>Vertical</orientation>
          <acceptsNewLine>false</acceptsNewLine>
          <text />
        </ControlText>
      </GridElement>
      <GridElement type="WpfApp1.FormItems.GridElement">
        <name>resname</name>
        <isReadOnly>false</isReadOnly>
        <row>1</row>
        <col>2</col>
        <rowSpan>1</rowSpan>
        <colSpan>5</colSpan>
        <isBordered>True</isBordered>
        <ControlText type="WpfApp1.FormItems.ControlText">
          <name>resname</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle />
          <orientation>Vertical</orientation>
          <acceptsNewLine>false</acceptsNewLine>
          <text />
        </ControlText>
      </GridElement>
      <GridElement type="WpfApp1.FormItems.GridElement">
        <name>notes</name>
        <isReadOnly>false</isReadOnly>
        <row>1</row>
        <col>7</col>
        <rowSpan>1</rowSpan>
        <colSpan>5</colSpan>
        <isBordered>True</isBordered>
        <ControlText type="WpfApp1.FormItems.ControlText">
          <name>notes</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle />
          <orientation>Vertical</orientation>
          <acceptsNewLine>true</acceptsNewLine>
          <text />
        </ControlText>
      </GridElement>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>repeat0</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
            <name>repeat0</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>roomnum0</name>
                <isReadOnly>false</isReadOnly>
                <row>1</row>
                <col>0</col>
                <rowSpan>1</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>roomnum0</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>0</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>roomnum</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle />
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>resname0</name>
                <isReadOnly>false</isReadOnly>
                <row>1</row>
                <col>2</col>
                <rowSpan>1</rowSpan>
                <colSpan>5</colSpan>
                <isBordered>True</isBordered>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>resname0</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>2</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>5</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>resname</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle />
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>notes0</name>
                <isReadOnly>false</isReadOnly>
                <row>1</row>
                <col>7</col>
                <rowSpan>1</rowSpan>
                <colSpan>5</colSpan>
                <isBordered>True</isBordered>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>notes0</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>7</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>5</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>notes</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle />
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>true</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
              </GridElement>
            </elementList>
          </LayoutGrid>
        </GridElement>
      </elementList>
    </LayoutRepeatGrid>
  </elementList>
</Form>