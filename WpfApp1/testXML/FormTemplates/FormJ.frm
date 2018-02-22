<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormJ</name>
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
    <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
      <name>spacer1</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>Body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>name</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>name</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NAME</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>id</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlInteger type="WpfApp1.FormItems.ControlInteger">
            <name>id</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>ID NO.</englishTitle>
            <orientation>Vertical</orientation>
            <value>0</value>
          </ControlInteger>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>DOB</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="WpfApp1.FormItems.ControlDate">
            <name>DOB</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>DATE OF BIRTH</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
          </ControlDate>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>roomNum</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlInteger type="WpfApp1.FormItems.ControlInteger">
            <name>roomNum</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>ROOM NO.</englishTitle>
            <orientation>Vertical</orientation>
            <value>0</value>
          </ControlInteger>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>moveIn</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="WpfApp1.FormItems.ControlDate">
            <name>moveIn</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>MOVE-IN-DATE</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
          </ControlDate>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pay</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>pay</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>PAY STATUS</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>family</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>family</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>FAMILY/MEMBER/RESIDENT’S REPRESENTATIVE/PHONE</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>history</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>history</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>PERTINENT MEDICAL HISTORY/DIAGNOSES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>assessment</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>assessment</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Assessment</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesLab1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>yesLab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Yes</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noLab</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>noLab</name>
            <isReadOnly>false</isReadOnly>
            <labelText>No</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>naLab</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>naLab</name>
            <isReadOnly>false</isReadOnly>
            <labelText>N/A</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ay1</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ay1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>an1</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>an1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ana1</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ana1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>aq1</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>aq1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Pre-admission (for residents admitted in last six months).</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ay2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ay2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>an2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>an2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ana2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ana2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>aq2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>aq2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Annual to meet resident’s needs or semi-annual for EARC – Specialized Dementia Care contract.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ay3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ay3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>an3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>an3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ana3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ana3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>aq3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>aq3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Limited for change of condition as needed.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes1</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NOTES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>monitering</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>monitering</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Monitoring Resident’s Well-Being</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesLab2</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>yesLab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Yes</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noLab2</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>noLab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>No</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>naLab2</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>naLab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>N/A</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>my1</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>my1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mn1</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mn1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mna1</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mna1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mq1</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>mq1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Documented.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>my2</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>my2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mn2</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mn2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mna2</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mna2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mq2</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>mq2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Action taken as needed.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes2</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NOTES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>negotiated</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>negotiated</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Negotiated Service Agreement (NSA)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesLab3</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>yesLab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Yes</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noLab3</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>noLab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>No</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>naLab3</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>naLab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>N/A</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ny1</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ny1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nn1</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>nn1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nna1</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>nna1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nq1</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>nq1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Initial on admission and completed within 30 days (for residents admitted in last six months).</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ny2</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ny2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nn2</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>nn2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nna2</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>nna2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nq2</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>nq2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Updated as necessary</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ny3</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ny3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nn3</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>nn3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nna3</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>nna3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>nq3</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>nq3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Contents meet resident’s needs and preferences.
•	Defined roles and responsibilities of resident, staff, resident’s representative, outside agency if 
	used, and alternate plan when necessary.
•	Times services will be delivered including frequency and approximate time of day.
•	Resident’s preferences for activities and how supported.
•	Identifies and incorporates Resident Arranged Services (if applicable).
•	Identifies and incorporates External Health Providers (if applicable)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes3</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NOTES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>medservs</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>True</isBordered>
          <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
            <name>medservs</name>
            <isReadOnly>false</isReadOnly>
            <orientation>Horizontal</orientation>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>medServ</name>
                <isReadOnly>false</isReadOnly>
                <labelText>Medication Services:  </labelText>
              </ControlLabel>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>ind</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Independent</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>assist</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Assistance</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>admin</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Administration</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </LayoutStackPanel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesLab4</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>yesLab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Yes</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noLab4</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>noLab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>No</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>naLab4</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>naLab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>N/A</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msy1</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msy1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msn1</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msn1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msa1</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msa1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msq1</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>msq1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Family / plan.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msy2</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msy2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msn2</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msn2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msa2</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msa2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msq2</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>msq2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msy3</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msy3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msn3</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msn3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msa3</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msa3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msq3</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>msq3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Appropriate for resident abilities and needs</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msy4</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msy4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msn4</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msn4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msa4</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msa4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msq4</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>msq4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Review of medication record.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msy5</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msy5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msn5</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msn5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msa5</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>msa5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>msq5</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>msq5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Documentation of refusal (if applicable)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes4</name>
          <isReadOnly>false</isReadOnly>
          <row>22</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NOTES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>intermitted</name>
          <isReadOnly>false</isReadOnly>
          <row>23</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>intermitted</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Intermittent Nursing Services Provided</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesLab5</name>
          <isReadOnly>false</isReadOnly>
          <row>23</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>yesLab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Yes</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noLab5</name>
          <isReadOnly>false</isReadOnly>
          <row>23</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>noLab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>No</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>naLab5</name>
          <isReadOnly>false</isReadOnly>
          <row>23</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>naLab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>N/A</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>iy1</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>iy1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>in1</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>in1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ia1</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ia1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>iq1</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>iq1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Nursing Service System developed.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>iy2</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>iy2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>in2</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>in2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ia2</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ia2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>iq2</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>iq2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Services identified and appropriate.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes5</name>
          <isReadOnly>false</isReadOnly>
          <row>26</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NOTES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mod</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>mod</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Modified / Therapeutic Diet</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesLab6</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>yesLab6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Yes</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noLab6</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>noLab6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>No</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>naLab6</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>naLab6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>N/A</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mty1</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mty1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mtn1</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mtn1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mta1</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mta1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mtq1</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>mtq1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Receiving Food Services as ordered.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mty2</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mty2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mtn2</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mtn2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mta2</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>mta2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Vertical</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>mtq2</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>mtq2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Receiving eating assistance.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes6</name>
          <isReadOnly>false</isReadOnly>
          <row>30</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NOTES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>finalNotes</name>
          <isReadOnly>false</isReadOnly>
          <row>31</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>finalNotes</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Addtional Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>