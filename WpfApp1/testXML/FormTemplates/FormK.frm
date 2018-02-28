<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormK</name>
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
      <name>spacer</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutRepeatGrid type="WpfApp1.FormItems.LayoutRepeatGrid">
      <name>staffs</name>
      <isReadOnly>false</isReadOnly>
      <template>
        <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
          <name>staff</name>
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
                <englishTitle>Name</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>title</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>title</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Title</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>hire</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>3</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="WpfApp1.FormItems.ControlDate">
                <name>hire</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Hire Date</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
              </ControlDate>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>DOB</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>5</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="WpfApp1.FormItems.ControlDate">
                <name>DOB</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Birth Date</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
              </ControlDate>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>safety</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>7</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>safety</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>SAFETY
ORIENTA-
TION AND 
FACILITY 
ORIENTATION</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>background</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>8</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="WpfApp1.FormItems.ControlDate">
                <name>background</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Background 
Check Date</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
              </ControlDate>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>fingerprinting</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>10</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="WpfApp1.FormItems.ControlDate">
                <name>fingerprinting</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Fingerprinting
Date</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
              </ControlDate>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>firstaid</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>2</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>firstaid</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>FIRST 
AID 
AND 
CPR</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>training</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>3</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>training</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>TRAINIG 
EXEMPTION 
CNA, RN, ETC.</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>tb</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>4</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>tb</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>TB</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>food</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>5</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>food</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Food
Card</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>cert</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>6</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="WpfApp1.FormItems.ControlDate">
                <name>cert</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>BASIC 120 
DAYS CERT 
EFFECTIVE
 01/07/2012</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
              </ControlDate>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>nurse</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>7</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>nurse</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NURSE 
DELEGA-
TION</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>spec</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>8</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>spec</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>SPECIALITY:  
DDA / 
MH / 
DEMENTIA / 
MANAGER</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>admin</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>9</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>admin</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>ADMIN 
QUALS 
AND 
TRAINING</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>birth</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>10</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>birth</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>CE – 12 HR 
PER 
BIRTHDAY 
YEAR 
EFFECTIVE 
07/01/2012</englishTitle>
                <orientation>Vertical</orientation>
                <value>false</value>
              </ControlBoolean>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>space</name>
              <isReadOnly>false</isReadOnly>
              <row>3</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>12</colSpan>
              <isBordered>True</isBordered>
              <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
                <name>space</name>
                <isReadOnly>false</isReadOnly>
                <height>25</height>
              </ElementSpacer>
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
              <name>staff</name>
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
                    <englishTitle>Name</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>title</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>0</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>title</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Title</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>hire</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>3</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlDate type="WpfApp1.FormItems.ControlDate">
                    <name>hire</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Hire Date</englishTitle>
                    <orientation>Vertical</orientation>
                    <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                  </ControlDate>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>DOB</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>5</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlDate type="WpfApp1.FormItems.ControlDate">
                    <name>DOB</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Birth Date</englishTitle>
                    <orientation>Vertical</orientation>
                    <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                  </ControlDate>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>safety</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>7</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                    <name>safety</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>SAFETY
ORIENTA-
TION AND 
FACILITY 
ORIENTATION</englishTitle>
                    <orientation>Vertical</orientation>
                    <value>false</value>
                  </ControlBoolean>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>background</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>8</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlDate type="WpfApp1.FormItems.ControlDate">
                    <name>background</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Background 
Check Date</englishTitle>
                    <orientation>Vertical</orientation>
                    <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                  </ControlDate>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>fingerprinting</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>10</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlDate type="WpfApp1.FormItems.ControlDate">
                    <name>fingerprinting</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Fingerprinting
Date</englishTitle>
                    <orientation>Vertical</orientation>
                    <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                  </ControlDate>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>firstaid</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>2</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                    <name>firstaid</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>FIRST 
AID 
AND 
CPR</englishTitle>
                    <orientation>Vertical</orientation>
                    <value>false</value>
                  </ControlBoolean>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>training</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>3</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>training</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>TRAINIG 
EXEMPTION 
CNA, RN, ETC.</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>tb</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>4</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                    <name>tb</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>TB</englishTitle>
                    <orientation>Vertical</orientation>
                    <value>false</value>
                  </ControlBoolean>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>food</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>5</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                    <name>food</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Food
Card</englishTitle>
                    <orientation>Vertical</orientation>
                    <value>false</value>
                  </ControlBoolean>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>cert</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>6</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlDate type="WpfApp1.FormItems.ControlDate">
                    <name>cert</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>BASIC 120 
DAYS CERT 
EFFECTIVE
 01/07/2012</englishTitle>
                    <orientation>Vertical</orientation>
                    <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                  </ControlDate>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>nurse</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>7</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                    <name>nurse</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>NURSE 
DELEGA-
TION</englishTitle>
                    <orientation>Vertical</orientation>
                    <value>false</value>
                  </ControlBoolean>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>spec</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>8</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>spec</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>SPECIALITY:  
DDA / 
MH / 
DEMENTIA / 
MANAGER</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>admin</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>9</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                    <name>admin</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>ADMIN 
QUALS 
AND 
TRAINING</englishTitle>
                    <orientation>Vertical</orientation>
                    <value>false</value>
                  </ControlBoolean>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>birth</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>10</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                    <name>birth</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>CE – 12 HR 
PER 
BIRTHDAY 
YEAR 
EFFECTIVE 
07/01/2012</englishTitle>
                    <orientation>Vertical</orientation>
                    <value>false</value>
                  </ControlBoolean>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>space</name>
                  <isReadOnly>false</isReadOnly>
                  <row>3</row>
                  <col>0</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>12</colSpan>
                  <isBordered>True</isBordered>
                  <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
                    <name>space</name>
                    <isReadOnly>false</isReadOnly>
                    <height>25</height>
                  </ElementSpacer>
                </GridElement>
              </elementList>
            </LayoutGrid>
          </elementList>
        </LayoutStackPanel>
      </elementList>
    </LayoutRepeatGrid>
    <ControlText type="WpfApp1.FormItems.ControlText">
      <name>notes</name>
      <isReadOnly>false</isReadOnly>
      <englishTitle>Notes</englishTitle>
      <orientation>Vertical</orientation>
      <acceptsNewLine>true</acceptsNewLine>
      <text />
    </ControlText>
  </elementList>
</Form>