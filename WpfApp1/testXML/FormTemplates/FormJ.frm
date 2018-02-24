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
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>assessment</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>assessment</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Assessment</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno1</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno1</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes1</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no1</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na1</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq1</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Pre-admission (for residents admitted in last six months).</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno2</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes2</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no2</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na2</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Annual to meet resident’s needs or semi-annual for EARC – Specialized Dementia Care contract.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno3</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes3</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no3</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na3</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq3</name>
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
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>monitering</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Monitoring Resident’s Well-Being</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno4</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno4</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes4</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no4</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na4</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq4</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Documented.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno5</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno5</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes5</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no5</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na5</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq5</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq5</name>
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
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>negotiated</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Negotiated Service Agreement (NSA)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno6</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno6</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes6</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no6</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na6</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq6</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Initial on admission and completed within 30 days (for residents admitted in last six months).</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno7</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno7</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes7</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no7</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na7</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq7</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Updated as necessary.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno8</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno8</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes8</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no8</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na8</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq8</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq8</name>
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
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
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
          <name>yesno9</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno9</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes9</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no9</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na9</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq9</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq9</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Family / plan.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno10</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno10</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes10</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no10</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na10</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq10</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq10</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Facility.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno11</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno11</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes11</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no11</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na11</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq11</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq11</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Appropriate for resident abilities and needs.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno12</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno12</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes12</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no12</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na12</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq12</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq12</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Review of medication record.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno13</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno13</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes13</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no13</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na13</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq13</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq13</name>
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
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>intermitted</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Intermittent Nursing Services Provided</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno14</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno14</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes14</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no14</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na14</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq14</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq14</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Nursing Service System developed.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno15</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno15</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes15</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no15</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na15</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq15</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq15</name>
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
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>mod</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Modified / Therapeutic Diet</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno16</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno16</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes16</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no16</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na16</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq16</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq16</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Receiving Food Services as ordered.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno17</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno17</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes17</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no17</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>na17</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>N/A</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq17</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq17</name>
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