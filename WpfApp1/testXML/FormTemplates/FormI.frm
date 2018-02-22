<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormI</name>
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
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Quality of Life/Resident Rights</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Furnishing, floors, walls, and ceilings</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Presence of objectionable odors</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno3</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq3</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Housekeeping supply area</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno4</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq4</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Laundry – separate areas for clean and soiled linen</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno5</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq5</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Infection control practices of staff</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno6</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq6</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Hand washing</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno7</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq7</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Temperature (68°+ wake hours / 60°+ sleep hours)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno8</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq8</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq8</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Adequate ventilation in resident rooms and common areas</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno9</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq9</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq9</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Adequate lighting in resident rooms and common areas</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno10</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq10</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq10</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Safe water temperature in resident rooms and sinks utilized by residents</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno11</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq11</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq11</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Cleanliness of resident equipment maintained in good repair</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes1</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
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
          <name>lab2</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Safety</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno14</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq14</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq14</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Prevention of resident access to storage of: 
•Cleaning supplies     •Cleaning carts       •Storage closet
•Toxic materials     •Medications	</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno15</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq15</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq15</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Access to outdoors including dementia care unit
•Safe walking areas
•Walking areas protected from the elements
•Can summon staff in an emergency</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno16</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq16</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq16</name>
            <isReadOnly>false</isReadOnly>
            <labelText>System to inform and permit exit without sounding alarm</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno17</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
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
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq17</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq17</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Secure outdoor space
•	Accessible to residents without staff
•	Surrounded by walls or fences at least 72” high
•	Firm, stable walking surfaces and outdoor furniture</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno18</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno18</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes18</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no18</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>qq18</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>qq18</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Emergency / disaster preparedness
 •Emergency lighting      •First Aid supplies
•Disaster plan	    •Staff responsibilities</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes2</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
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
          <name>lab3</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Common Bathrooms</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno21</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno21</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes21</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no21</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>cq</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>cq</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Common bathrooms are:</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>clab</name>
          <isReadOnly>false</isReadOnly>
          <row>22</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>clab</name>
            <isReadOnly>false</isReadOnly>
            <labelText>•	Safe / clean / adequate lighting / grab bars(if applicable for resident needs)
•	Accessible for all resident / privacy available</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bathrooms</name>
          <isReadOnly>false</isReadOnly>
          <row>23</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <LayoutRepeatGrid type="WpfApp1.FormItems.LayoutRepeatGrid">
            <name>bathrooms</name>
            <isReadOnly>false</isReadOnly>
            <template>
              <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
                <name>bathroom</name>
                <isReadOnly>false</isReadOnly>
                <!--Below is the list of items contained within this group-->
                <elementList>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>temp1</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>2</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>2</colSpan>
                    <isBordered>False</isBordered>
                    <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                      <name>temp1</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>•Water temperature: °F</englishTitle>
                      <orientation>Vertical</orientation>
                      <value>0</value>
                    </ControlInteger>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>tDate1</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>4</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>2</colSpan>
                    <isBordered>False</isBordered>
                    <ControlDate type="WpfApp1.FormItems.ControlDate">
                      <name>tDate1</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>date</englishTitle>
                      <orientation>Vertical</orientation>
                      <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                    </ControlDate>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>tTime1</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>6</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>2</colSpan>
                    <isBordered>False</isBordered>
                    <ControlText type="WpfApp1.FormItems.ControlText">
                      <name>tTime1</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>time</englishTitle>
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
                      <text />
                    </ControlText>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>tPlace1</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>8</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>4</colSpan>
                    <isBordered>False</isBordered>
                    <ControlText type="WpfApp1.FormItems.ControlText">
                      <name>tPlace1</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>place</englishTitle>
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
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
                    <name>bathroom</name>
                    <isReadOnly>false</isReadOnly>
                    <!--Below is the list of items contained within this group-->
                    <elementList>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>temp1</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>2</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>2</colSpan>
                        <isBordered>False</isBordered>
                        <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                          <name>temp1</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>•Water temperature: °F</englishTitle>
                          <orientation>Vertical</orientation>
                          <value>0</value>
                        </ControlInteger>
                      </GridElement>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>tDate1</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>4</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>2</colSpan>
                        <isBordered>False</isBordered>
                        <ControlDate type="WpfApp1.FormItems.ControlDate">
                          <name>tDate1</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>date</englishTitle>
                          <orientation>Vertical</orientation>
                          <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                        </ControlDate>
                      </GridElement>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>tTime1</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>6</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>2</colSpan>
                        <isBordered>False</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>tTime1</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>time</englishTitle>
                          <orientation>Vertical</orientation>
                          <acceptsNewLine>false</acceptsNewLine>
                          <text />
                        </ControlText>
                      </GridElement>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>tPlace1</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>8</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>4</colSpan>
                        <isBordered>False</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>tPlace1</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>place</englishTitle>
                          <orientation>Vertical</orientation>
                          <acceptsNewLine>false</acceptsNewLine>
                          <text />
                        </ControlText>
                      </GridElement>
                    </elementList>
                  </LayoutGrid>
                </elementList>
              </LayoutStackPanel>
            </elementList>
          </LayoutRepeatGrid>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes3</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
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
          <name>lab4</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Physical Environment - Outdoors</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno26</name>
          <isReadOnly>false</isReadOnly>
          <row>26</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno26</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes26</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no26</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq26</name>
          <isReadOnly>false</isReadOnly>
          <row>26</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq26</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Stairs / steps / ramps in good repair</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno27</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno27</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes27</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no27</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq27</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq27</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Hand rails</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno28</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno28</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes28</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no28</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq28</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq28</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Garbage / refuse</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno29</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno29</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes29</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no29</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq29</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq29</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Presence of pests</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>yesno30</name>
          <isReadOnly>false</isReadOnly>
          <row>30</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>yesno30</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>yes30</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>YES</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>no30</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NO</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>pq30</name>
          <isReadOnly>false</isReadOnly>
          <row>30</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>pq30</name>
            <isReadOnly>false</isReadOnly>
            <labelText>General maintenance of sidewalks / walkways</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lastLabel</name>
          <isReadOnly>false</isReadOnly>
          <row>31</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lastLabel</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Use Attachment I – Environmental Observations and Attachment P- Food Service Observations for all full
inspections.  

Continue with Attachment O for further observations if the facility has a contract for AL, EARC, or EARC – 
Specialty Dementia Care.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes4</name>
          <isReadOnly>false</isReadOnly>
          <row>32</row>
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
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>