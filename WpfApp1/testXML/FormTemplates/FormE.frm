<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormE</name>
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
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>date</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="WpfApp1.FormItems.ControlDate">
            <name>date</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>DATE</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
          </ControlDate>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>time</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>time</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>TIME</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>numRes</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlInteger type="WpfApp1.FormItems.ControlInteger">
            <name>numRes</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NUMBER OF RESIDENTS PRESENT</englishTitle>
            <orientation>Vertical</orientation>
            <value>0</value>
          </ControlInteger>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>RESIDENT COUNCIL?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yes1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>yes1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Yes</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>no1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>no1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>cPrez</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>cPrez</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>COUNCIL PRESIDENT</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab2</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>FOOD COMMITTEE</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yes2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>yes2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Yes</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>no2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>no2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>text1</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>text1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Areas of concerns / issues identified prior to meeting.  Refer to resident characteristic roster / sample selection form as 
needed to identify residents.</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>text2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>text2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Introductions and brief explanation of meeting and inspection process by RCS staff.  Use questions modified for population 
type.  Group Interview:  Suggested Areas for Discussion.

 We would like to ask you several questions about life in the facility and the interactions of residents and staff.
•	Rules.Tell me about the rules in this facility.For instance, are there rules about what time residents go to bed 
at night and get up in the morning ?</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>text3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>text3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Privacy.  Can you please describe the ways staff makes an effort to make sure that your privacy and the privacy of all
 residents are respected?  Do you meet privately with visitors, and have private telephone calls? </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>