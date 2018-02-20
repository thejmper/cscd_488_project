<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormA</name>
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
          <name>full</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Full</englishTitle>
          <orientation>Horizontal</orientation>
          <value>false</value>
        </ControlBoolean>
      </elementList>
    </LayoutStackPanel>
    <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
      <name>spacer1</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>caseManager</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>caseManager</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>CASE MANAGER DDD / HCS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>contact1</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="WpfApp1.FormItems.ControlDate">
            <name>contact1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Contact Date</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
          </ControlDate>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>comm1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>comm1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>COMMENTS / CONCERNS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>space2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
            <name>space2</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ombuds</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>ombuds</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>OMBUDS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>com2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>com2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>COMMENTS / CONCERNS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>space3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
            <name>space3</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>other</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>other</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>OTHER OUTSIDE AGENCY</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>contact2</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="WpfApp1.FormItems.ControlDate">
            <name>contact2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>CONTACT DATE</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
          </ControlDate>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>com3</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>com3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>COMMENTS / CONCERNS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>space4</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
            <name>space4</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>contracts</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
            <name>contracts</name>
            <isReadOnly>false</isReadOnly>
            <orientation>Horizontal</orientation>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>con</name>
                <isReadOnly>false</isReadOnly>
                <labelText>Contracts: </labelText>
              </ControlLabel>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>al</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>AL</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>earc</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>EARC</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>arc</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>ARC</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>dementia</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Dementia</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>ddd</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>DDD</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>adc</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Adult Day Care</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>none</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>None</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </LayoutStackPanel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>exempt</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>exempt</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>CURRENT EXEMPTIONS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>space5</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
            <name>space5</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
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