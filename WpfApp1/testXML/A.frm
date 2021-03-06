<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormA</name>
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
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>header</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>facilityName</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>facilityName</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Facility Name</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>LicenserNumber</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlInteger type="WpfApp1.FormItems.ControlInteger">
            <name>LicenserNumber</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Licenser Number</englishTitle>
            <orientation>Vertical</orientation>
            <value>0</value>
          </ControlInteger>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>inDate</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="WpfApp1.FormItems.ControlDate">
            <name>inDate</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Inspection Date</englishTitle>
            <orientation>Vertical</orientation>
            <text>1/1/0001</text>
          </ControlDate>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>LicensorName</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>9</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>LicensorName</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Licensor Name</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>headerChkBoxs</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
            <name>headerChkBoxs</name>
            <isReadOnly>false</isReadOnly>
            <orientation>Horizontal</orientation>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>label</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Inspection Type: </englishTitle>
                <orientation>Vertical</orientation>
                <content />
              </ControlLabel>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>FullChkBox</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Full</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </LayoutStackPanel>
        </GridElement>
        <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
          <name>info</name>
          <isReadOnly>false</isReadOnly>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>review</name>
              <isReadOnly>false</isReadOnly>
              <row>4</row>
              <col>0</col>
              <rowSpan>3</rowSpan>
              <colSpan>6</colSpan>
              <isBordered>False</isBordered>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>review</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Review licensing file for: 
•	Current state contract – if applicable
•	Past and current complaint investigations
•	Past SOD’s and uncorrected deficiencies(list on back of form)
•	Past three consecutive years compliance with
                all inspections and investigations
•	Resident and staff list from last licensing inspection
•	Current exemptions</englishTitle>
                <orientation>Vertical</orientation>
                <content />
              </ControlLabel>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>confer</name>
              <isReadOnly>false</isReadOnly>
              <row>4</row>
              <col>6</col>
              <rowSpan>3</rowSpan>
              <colSpan>6</colSpan>
              <isBordered>False</isBordered>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>confer</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Confer regarding concerns about facility with:
•	Complaint Nurse, licensor
•	Case Managers: HCS, DDD</englishTitle>
                <orientation>Vertical</orientation>
                <content />
              </ControlLabel>
            </GridElement>
          </elementList>
          <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
            <name>manager</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>managerName</name>
                <isReadOnly>false</isReadOnly>
                <row>0</row>
                <col>0</col>
                <rowSpan>1</rowSpan>
                <colSpan>8</colSpan>
                <isBordered>True</isBordered>
                <ControlText type="WpfApp1.FormItems.ControlText">
                  <name>managerName</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>CASE MANAGER DDD / HCS</englishTitle>
                  <orientation>Vertical</orientation>
                  <acceptsNewLine>false</acceptsNewLine>
                  <text />
                </ControlText>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>contactDate</name>
                <isReadOnly>false</isReadOnly>
                <row>0</row>
                <col>8</col>
                <rowSpan>1</rowSpan>
                <colSpan>4</colSpan>
                <isBordered>True</isBordered>
                <ControlDate type="WpfApp1.FormItems.ControlDate">
                  <name>contactDate</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>Contact Date</englishTitle>
                  <orientation>Vertical</orientation>
                  <text>1/1/0001</text>
                </ControlDate>
              </GridElement>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>ManagerComments</name>
                <isReadOnly>false</isReadOnly>
                <row>2</row>
                <col>0</col>
                <rowSpan>4</rowSpan>
                <colSpan>12</colSpan>
                <isBordered>False</isBordered>
                <ControlText type="WpfApp1.FormItems.ControlText">
                  <name>ManagerComments</name>
                  <isReadOnly>false</isReadOnly>
                  <englishTitle>COMMENTS / CONCERNS</englishTitle>
                  <orientation>Vertical</orientation>
                  <acceptsNewLine>false</acceptsNewLine>
                  <text />
                </ControlText>
              </GridElement>
            </elementList>
            <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
              <name>OMBUDS</name>
              <isReadOnly>false</isReadOnly>
              <!--Below is the list of items contained within this group-->
              <elementList>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>ombudsname</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>0</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>12</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>ombudsname</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>OMBUDS</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>Comments</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>0</col>
                  <rowSpan>4</rowSpan>
                  <colSpan>12</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>Comments</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>COMMENTS / CONCERNS</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
              </elementList>
              <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
                <name>other</name>
                <isReadOnly>false</isReadOnly>
                <!--Below is the list of items contained within this group-->
                <elementList>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>otherPeople</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>0</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>8</colSpan>
                    <isBordered>True</isBordered>
                    <ControlText type="WpfApp1.FormItems.ControlText">
                      <name>otherPeople</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>OTHER OUTSIDE AGENCY</englishTitle>
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
                      <text />
                    </ControlText>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>otherDate</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>8</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>4</colSpan>
                    <isBordered>True</isBordered>
                    <ControlDate type="WpfApp1.FormItems.ControlDate">
                      <name>otherDate</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>Contact Date</englishTitle>
                      <orientation>Vertical</orientation>
                      <text>1/1/0001</text>
                    </ControlDate>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>otherComments</name>
                    <isReadOnly>false</isReadOnly>
                    <row>2</row>
                    <col>0</col>
                    <rowSpan>4</rowSpan>
                    <colSpan>12</colSpan>
                    <isBordered>False</isBordered>
                    <ControlText type="WpfApp1.FormItems.ControlText">
                      <name>otherComments</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>COMMENTS / CONCERNS</englishTitle>
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
                      <text />
                    </ControlText>
                  </GridElement>
                </elementList>
                <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
                  <name>contracts</name>
                  <isReadOnly>false</isReadOnly>
                  <!--Below is the list of items contained within this group-->
                  <elementList>
                    <GridElement type="WpfApp1.FormItems.GridElement">
                      <name>boxes</name>
                      <isReadOnly>false</isReadOnly>
                      <row>0</row>
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
                            <name>label</name>
                            <isReadOnly>false</isReadOnly>
                            <englishTitle>Contracts: </englishTitle>
                            <orientation>Vertical</orientation>
                            <content />
                          </ControlLabel>
                          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                            <name>ALChkBox</name>
                            <isReadOnly>false</isReadOnly>
                            <englishTitle>AL</englishTitle>
                            <orientation>Horizontal</orientation>
                            <value>false</value>
                          </ControlBoolean>
                          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                            <name>EARCChkBox</name>
                            <isReadOnly>false</isReadOnly>
                            <englishTitle>EARC</englishTitle>
                            <orientation>Horizontal</orientation>
                            <value>false</value>
                          </ControlBoolean>
                          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                            <name>ARCChkBox</name>
                            <isReadOnly>false</isReadOnly>
                            <englishTitle>ARC</englishTitle>
                            <orientation>Horizontal</orientation>
                            <value>false</value>
                          </ControlBoolean>
                          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                            <name>DementiaChkBox</name>
                            <isReadOnly>false</isReadOnly>
                            <englishTitle>Dementia</englishTitle>
                            <orientation>Horizontal</orientation>
                            <value>false</value>
                          </ControlBoolean>
                          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                            <name>DDDChkBox</name>
                            <isReadOnly>false</isReadOnly>
                            <englishTitle>DDD</englishTitle>
                            <orientation>Horizontal</orientation>
                            <value>false</value>
                          </ControlBoolean>
                          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                            <name>AdultDayCarehkBox</name>
                            <isReadOnly>false</isReadOnly>
                            <englishTitle>Adult Day Care</englishTitle>
                            <orientation>Horizontal</orientation>
                            <value>false</value>
                          </ControlBoolean>
                          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                            <name>NoneChkBox</name>
                            <isReadOnly>false</isReadOnly>
                            <englishTitle>None</englishTitle>
                            <orientation>Horizontal</orientation>
                            <value>false</value>
                          </ControlBoolean>
                        </elementList>
                      </LayoutStackPanel>
                    </GridElement>
                    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
                      <name>NOTES</name>
                      <isReadOnly>false</isReadOnly>
                      <!--Below is the list of items contained within this group-->
                      <elementList>
                        <GridElement type="WpfApp1.FormItems.GridElement">
                          <name>note</name>
                          <isReadOnly>false</isReadOnly>
                          <row>0</row>
                          <col>0</col>
                          <rowSpan>4</rowSpan>
                          <colSpan>12</colSpan>
                          <isBordered>True</isBordered>
                          <ControlText type="WpfApp1.FormItems.ControlText">
                            <name>note</name>
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