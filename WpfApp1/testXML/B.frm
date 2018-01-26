<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormB</name>
  <isReadOnly>false</isReadOnly>
  <ControlDate type="WpfApp1.FormItems.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <!--Below is the list of items contained within this group-->
  <elementList>
    <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
      <name>omb</name>
      <isReadOnly>false</isReadOnly>
      <orientation>Horizontal</orientation>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>om</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>The field office has contacted the Ombuds. (Attachment A)</englishTitle>
          <orientation>Horizontal</orientation>
          <value>false</value>
        </ControlBoolean>
      </elementList>
      <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
        <name>header</name>
        <isReadOnly>false</isReadOnly>
        <!--Below is the list of items contained within this group-->
        <elementList>
          <GridElement type="WpfApp1.FormItems.GridElement">
            <name>boxes</name>
            <isReadOnly>false</isReadOnly>
            <row>3</row>
            <col>0</col>
            <rowSpan>1</rowSpan>
            <colSpan>12</colSpan>
            <isBordered>True</isBordered>
            <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
              <name>boxes</name>
              <isReadOnly>false</isReadOnly>
              <orientation>Horizontal</orientation>
              <!--Below is the list of items contained within this group-->
              <elementList>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lab</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Inspection Type:</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>initial</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Initial</englishTitle>
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>Full</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Full</englishTitle>
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>Followup</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Follow up</englishTitle>
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>Monitoring</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Monitoring</englishTitle>
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>Complaint</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
                <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                  <name>ComplaintNumber</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Complaint Number</englishTitle>
                  <orientation>Vertical</orientation>
                  <value>0</value>
                </ControlInteger>
              </elementList>
            </LayoutStackPanel>
          </GridElement>
          <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
            <name>body</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>reqDocs</name>
                <isReadOnly>false</isReadOnly>
                <row>0</row>
                <col>0</col>
                <rowSpan>1</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>reqDocs</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Documentation required:</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>due</name>
                <isReadOnly>false</isReadOnly>
                <row>0</row>
                <col>8</col>
                <rowSpan>1</rowSpan>
                <colSpan>3</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>due</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Due to Licensor</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met</name>
                <isReadOnly>false</isReadOnly>
                <row>0</row>
                <col>11</col>
                <rowSpan>1</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>met</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Due Met</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb2</name>
                <isReadOnly>false</isReadOnly>
                <row>1</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb2</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Resident Information:  Complete list of residents including their roommates 
, room number, and language spoken if not fluent in English (facility list of residents). *
(Attachment C - only required if no Resident Characteristic Roster provided</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb3</name>
                <isReadOnly>false</isReadOnly>
                <row>1</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb3</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within two(2)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met1</name>
                <isReadOnly>false</isReadOnly>
                <row>1</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met1</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>reqDocs2</name>
                <isReadOnly>false</isReadOnly>
                <row>3</row>
                <col>0</col>
                <rowSpan>1</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>reqDocs2</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Documentation required:</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>due2</name>
                <isReadOnly>false</isReadOnly>
                <row>3</row>
                <col>8</col>
                <rowSpan>1</rowSpan>
                <colSpan>3</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>due2</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Due to Licensor</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met2</name>
                <isReadOnly>false</isReadOnly>
                <row>3</row>
                <col>11</col>
                <rowSpan>1</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>met2</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Due Met</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb5</name>
                <isReadOnly>false</isReadOnly>
                <row>4</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb5</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Resident Information:  
Request for specific resident and staff records will occur during the inspection.</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb4</name>
                <isReadOnly>false</isReadOnly>
                <row>4</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb4</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within two(2)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met3</name>
                <isReadOnly>false</isReadOnly>
                <row>4</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met3</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb6</name>
                <isReadOnly>false</isReadOnly>
                <row>6</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb6</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Staff Information:  
Complete list of staff, position title, shift, hire date, and day and month of birth.  
Provide a copy for each inspection team member.  (Attachment K)</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb7</name>
                <isReadOnly>false</isReadOnly>
                <row>6</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb7</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within two(2)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met4</name>
                <isReadOnly>false</isReadOnly>
                <row>6</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met4</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb8</name>
                <isReadOnly>false</isReadOnly>
                <row>8</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb8</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Staff Information:  
Three weeks of staffing schedules including nursing, dietary staff, and housekeeping / laundry staff.</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb9</name>
                <isReadOnly>false</isReadOnly>
                <row>8</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb9</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within two(2)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met5</name>
                <isReadOnly>false</isReadOnly>
                <row>8</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met5</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb10</name>
                <isReadOnly>false</isReadOnly>
                <row>10</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb10</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Staff Information:  Location of personnel files, including orientation, CPR, First Aid 
training, TB testing, background inquiry information, basic or modified training, food 
handler cards, continuing education and specialty training as required.</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb11</name>
                <isReadOnly>false</isReadOnly>
                <row>10</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb11</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within two(2)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met6</name>
                <isReadOnly>false</isReadOnly>
                <row>10</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met6</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb12</name>
                <isReadOnly>false</isReadOnly>
                <row>12</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb12</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Staff Information:  
Name and phone numbers of administrator, designee, and/or nurse</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb13</name>
                <isReadOnly>false</isReadOnly>
                <row>12</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb13</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within two(2)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met7</name>
                <isReadOnly>false</isReadOnly>
                <row>12</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met7</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb14</name>
                <isReadOnly>false</isReadOnly>
                <row>14</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb14</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Admin Information:  
Disclosure of services provided. (Attachment L)</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb15</name>
                <isReadOnly>false</isReadOnly>
                <row>14</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb15</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within two(2)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met8</name>
                <isReadOnly>false</isReadOnly>
                <row>14</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met8</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb16</name>
                <isReadOnly>false</isReadOnly>
                <row>16</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb16</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Admin Information:  
Location of the resident records, including negotiated service agreements.</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb17</name>
                <isReadOnly>false</isReadOnly>
                <row>16</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb17</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within two(2)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met9</name>
                <isReadOnly>false</isReadOnly>
                <row>16</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met9</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb18</name>
                <isReadOnly>false</isReadOnly>
                <row>18</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb18</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Admin Information:  Copy of evidence of general and professional liability insurance 
coverage, must have name and address of the facility on the document. 
(Attachment L)</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb19</name>
                <isReadOnly>false</isReadOnly>
                <row>18</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb19</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within six(6)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met10</name>
                <isReadOnly>false</isReadOnly>
                <row>18</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met10</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb20</name>
                <isReadOnly>false</isReadOnly>
                <row>20</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb20</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Admin Information:  
Four weeks menus as planned that includes any changes in the menu.</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb21</name>
                <isReadOnly>false</isReadOnly>
                <row>20</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb21</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within six(6)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met11</name>
                <isReadOnly>false</isReadOnly>
                <row>20</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met11</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb22</name>
                <isReadOnly>false</isReadOnly>
                <row>22</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb22</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Admin Information:  
Pet records for all pets in the facility. </englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb23</name>
                <isReadOnly>false</isReadOnly>
                <row>22</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb23</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within six(6)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met12</name>
                <isReadOnly>false</isReadOnly>
                <row>22</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met12</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb24</name>
                <isReadOnly>false</isReadOnly>
                <row>24</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb24</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Admin Information:  
Changes in physical environment since last full inspection; 
Approved Construction Review projects since the last full inspection.  (Attachment P)</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb25</name>
                <isReadOnly>false</isReadOnly>
                <row>24</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb25</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within six(6)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met13</name>
                <isReadOnly>false</isReadOnly>
                <row>24</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met13</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb26</name>
                <isReadOnly>false</isReadOnly>
                <row>26</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb26</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Admin Information: 
Copies of any waivers/exceptions/exemptions to rules. (Attachment A)</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb27</name>
                <isReadOnly>false</isReadOnly>
                <row>26</row>
                <col>8</col>
                <rowSpan>2</rowSpan>
                <colSpan>2</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb27</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Within six(6)
 hours of entry of facility</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met14</name>
                <isReadOnly>false</isReadOnly>
                <row>26</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met14</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb28</name>
                <isReadOnly>false</isReadOnly>
                <row>28</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>12</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb28</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>If an issue is identified that directly relates to a specific resident no longer in the ALF, if no current residents 
reside in the ALF, or if there is a concern regarding discharge or transfers:</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>reqDocs3</name>
                <isReadOnly>false</isReadOnly>
                <row>30</row>
                <col>0</col>
                <rowSpan>1</rowSpan>
                <colSpan>11</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>reqDocs3</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Documentation required:</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met15</name>
                <isReadOnly>false</isReadOnly>
                <row>30</row>
                <col>11</col>
                <rowSpan>1</rowSpan>
                <colSpan>1</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>met15</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Met: </englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>lb29</name>
                <isReadOnly>false</isReadOnly>
                <row>31</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>lb29</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Resident Information:  
List of residents discharged in last six months with forwarding address and reason for 
discharge unless deceased, then just write deceased.</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>met16</name>
                <isReadOnly>false</isReadOnly>
                <row>31</row>
                <col>11</col>
                <rowSpan>2</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                  <name>met16</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle />
                  <orientation>Horizontal</orientation>
                  <value>false</value>
                </ControlBoolean>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>comm</name>
                <isReadOnly>false</isReadOnly>
                <row>33</row>
                <col>0</col>
                <rowSpan>1</rowSpan>
                <colSpan>12</colSpan>
                <isBordered>True</isBordered>
                <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                  <name>comm</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Notes</englishTitle>
                  <orientation>Vertical</orientation>
                  <content />
                </ControlLabel>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>notes</name>
                <isReadOnly>false</isReadOnly>
                <row>34</row>
                <col>0</col>
                <rowSpan>2</rowSpan>
                <colSpan>12</colSpan>
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
            </elementList>
          </LayoutGrid>
        </elementList>