<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormB</name>
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
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>ombuds</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>2</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>ombuds</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>The field office has contacted the Ombuds. (Attachment A)</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab2</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Documentation required:</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab3</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Due to Licensor</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab4</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Due met</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab5</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Resident Information:  Complete list of residents including their roommates, room number,
 and language spoken if not fluent in English (facility list of residents). 
* (Attachment C - only required if no Resident Characteristic Roster provided</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab6</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within two (2) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab7</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Resident Information:  A completed resident characteristic list Include all licensed
 rooms and all residents.  If a nonresident in a licensed room, indicate nonresident.
 Provide a copy for each inspection team member. (Attachment D)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab8</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab8</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within two (2) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool2</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab9</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab9</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Resident Information:  Request for specific resident and staff records will occur during the inspection.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab10</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab10</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within two (2) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool3</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab11</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab11</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Staff Information:  Complete list of staff, position title, shift, hire date, and day and month of birth.  
Provide a copy for each inspection team member.  (Attachment K)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab12</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab12</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within two (2) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool4</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab13</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab13</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Staff Information:  Three weeks of staffing schedules including nursing, 
dietary staff, and housekeeping / laundry staff.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab14</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab14</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within two (2) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool6</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab16</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab16</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Staff Information:  Location of personnel files, including orientation, CPR, First Aid
 training, TB testing, background inquiry information, basic or modified training, food
 handler cards, continuing education and specialty training as required.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab17</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab17</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within two (2) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool7</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab18</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab18</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Staff Information:  Name and phone numbers of administrator, designee, and/or nurse</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab19</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab19</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within two (2) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool8</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab20</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab20</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Admin Information:  Location of the resident records, including negotiated service agreements.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab21</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab21</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within two (2) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool9</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool9</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab22</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab22</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Admin Information:  Copy of evidence of general and professional liability 
insurance coverage, must have name and address of the facility on the document. 
(Attachment L)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab23</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab23</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within six (6) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool10</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool10</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab24</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab24</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Admin Information:  Four weeks menus as planned that includes any changes in the menu.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab25</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab25</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within six (6) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool11</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool11</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab26</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab26</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Admin Information:  Pet records for all pets in the facility.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab27</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab27</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within six (6) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool12</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool12</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab29</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab29</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Admin Information:  Changes in physical environment since last full inspection;
 Approved Construction Review projects since the last full inspection.  (Attachment P)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab28</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab28</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within six (6) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool13</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool13</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab30</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab30</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Admin Information: Copies of any waivers/exceptions/exemptions to rules. 
(Attachment A)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab31</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab31</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Within six (6) hours
 of entry of facility</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool14</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool14</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab32</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab32</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Resident Information:  List of residents discharged in last six months with forwarding address and reason for 
discharge unless deceased, then just write deceased.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>bool15</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>11</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>True</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>bool15</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes:  </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>