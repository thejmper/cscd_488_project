<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormD</name>
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
        <ControlInteger type="WpfApp1.FormItems.ControlInteger">
          <name>cencus</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>TOTAL CENSUS</englishTitle>
          <orientation>Vertical</orientation>
          <value>0</value>
        </ControlInteger>
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
      <name>residents</name>
      <isReadOnly>false</isReadOnly>
      <template>
        <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
          <name>resident</name>
          <isReadOnly>false</isReadOnly>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>resRoom</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>resRoom</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>RESIDENT ROOM</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>admitDate</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>2</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="WpfApp1.FormItems.ControlDate">
                <name>admitDate</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>ADMIT DATE</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
              </ControlDate>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>resID</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>4</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                <name>resID</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>RESIDENT 
ID NUMBER</englishTitle>
                <orientation>Vertical</orientation>
                <value>0</value>
              </ControlInteger>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>resName</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>6</col>
              <rowSpan>1</rowSpan>
              <colSpan>6</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>resName</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Resident Name</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>moblile</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>2</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>moblile</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Mobility / Falls / 
Ambulation Devices</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>behave</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>1</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>behave</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Behavior / Psycho Social Issues</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>dem</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>2</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>dem</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Dementia / Alzheimer’s / Cognitive impairment</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>exit</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>3</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>exit</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Exit Seeking / Wandering</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>smoking</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>4</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>smoking</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Smoking</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>dd</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>5</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>dd</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>DD / Mental Health</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>lang</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>6</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>lang</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Language / Communication Issue / Deafness 
/ Hearing issues</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>vision</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>7</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>vision</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Vision Deficit / Blindness</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>diabetic</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>8</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>diabetic</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Diabetic:  Insulin/Non-Insulin</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>adl</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>9</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>adl</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Assist with ADL’s</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>wounds</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>10</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>wounds</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Wounds / Skin Issue</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>dialysis</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>dialysis</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Incontinent / Appliance (catheter) Dialysis</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>diet</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>1</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>diet</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Special Dietary Needs / Scheduled Snacks</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>weight</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>2</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>weight</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Weight Loss / Weight Gain</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>devices</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>3</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>devices</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Medical Devices </englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>pay</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>4</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>pay</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Pay Status:  Private = P  State = S</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>hospital</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>5</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>hospital</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Recent Hospitalization</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>oxy</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>6</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>oxy</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Oxygen / Respiratory Therapy</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>home</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>7</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>home</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Home Health / Hospice / Private Caregiver</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>other</name>
              <isReadOnly>false</isReadOnly>
              <row>2</row>
              <col>8</col>
              <rowSpan>1</rowSpan>
              <colSpan>1</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>other</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Other</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
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
                <height>10</height>
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
              <name>resident</name>
              <isReadOnly>false</isReadOnly>
              <!--Below is the list of items contained within this group-->
              <elementList>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>resRoom</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>0</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>resRoom</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>RESIDENT ROOM</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>admitDate</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>2</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlDate type="WpfApp1.FormItems.ControlDate">
                    <name>admitDate</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>ADMIT DATE</englishTitle>
                    <orientation>Vertical</orientation>
                    <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                  </ControlDate>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>resID</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>4</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                    <name>resID</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>RESIDENT 
ID NUMBER</englishTitle>
                    <orientation>Vertical</orientation>
                    <value>0</value>
                  </ControlInteger>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>resName</name>
                  <isReadOnly>false</isReadOnly>
                  <row>0</row>
                  <col>6</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>6</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>resName</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Resident Name</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>moblile</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>0</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>2</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>moblile</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Mobility / Falls / 
Ambulation Devices</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>behave</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>1</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>behave</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Behavior / Psycho Social Issues</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>dem</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>2</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>dem</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Dementia / Alzheimer’s / Cognitive impairment</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>exit</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>3</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>exit</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Exit Seeking / Wandering</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>smoking</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>4</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>smoking</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Smoking</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>dd</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>5</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>dd</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>DD / Mental Health</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>lang</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>6</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>lang</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Language / Communication Issue / Deafness 
/ Hearing issues</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>vision</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>7</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>vision</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Vision Deficit / Blindness</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>diabetic</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>8</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>diabetic</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Diabetic:  Insulin/Non-Insulin</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>adl</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>9</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>adl</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Assist with ADL’s</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>wounds</name>
                  <isReadOnly>false</isReadOnly>
                  <row>1</row>
                  <col>10</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>wounds</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Wounds / Skin Issue</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>dialysis</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>0</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>dialysis</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Incontinent / Appliance (catheter) Dialysis</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>diet</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>1</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>diet</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Special Dietary Needs / Scheduled Snacks</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>weight</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>2</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>weight</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Weight Loss / Weight Gain</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>devices</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>3</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>devices</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Medical Devices </englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>pay</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>4</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>pay</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Pay Status:  Private = P  State = S</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>hospital</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>5</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>hospital</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Recent Hospitalization</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>oxy</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>6</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>oxy</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Oxygen / Respiratory Therapy</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>home</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>7</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>home</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Home Health / Hospice / Private Caregiver</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
                </GridElement>
                <GridElement type="WpfApp1.FormItems.GridElement">
                  <name>other</name>
                  <isReadOnly>false</isReadOnly>
                  <row>2</row>
                  <col>8</col>
                  <rowSpan>1</rowSpan>
                  <colSpan>1</colSpan>
                  <isBordered>True</isBordered>
                  <ControlText type="WpfApp1.FormItems.ControlText">
                    <name>other</name>
                    <isReadOnly>false</isReadOnly>
                    <englishTitle>Other</englishTitle>
                    <orientation>Vertical</orientation>
                    <acceptsNewLine>false</acceptsNewLine>
                    <text />
                  </ControlText>
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
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>footer</name>
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
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Coding:	In order to assist in more accurate communication of resident characteristics, the following coding legend has been provided.  
If characteristics do not apply, leave box blank.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Nursing Services
(services only a licensed nurse can provide)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>O - resident receiving Ostomy care; T - resident receiving Tube feeding; I – resident receiving Injections; 
ND – resident receiving Nurse Delegation.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Medication:	Independent	Administration
    Assistance  Family Assistance</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>I – resident assessed as Independent with their medication; A – resident assessed as needing medication assistance;
AD – resident assessed medication administration; F – resident receiving Family assistance with medications.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA3</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Mobility / Falls / Ambulation Devices</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB3</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>A – resident requires Assistance with transfers or cannot ambulate independently without assistance from staff or assistive 
devices; F – resident experienced a Fall within the last 30 days; D – resident uses a Device to assist with ambulation.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA4</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Behavior / Psycho Social Issues</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB4</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>X – resident shows or has behaviors such as those requiring special training or assistance increasing the amount of time staff 
needs to assist resident.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA5</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Dementia / Alzheimer’s / Cognitive impairment</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB5</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>X – resident shows or has behaviors requiring special training or assistance increasing the amount of time staff needs to 
assist resident.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA6</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Exit Seeking / Wandering</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB6</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>ES – resident has shown Exit Seeking behaviors; W – resident has shown Wandering behaviors</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA7</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Smoking</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB7</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>S – resident Smokes.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA8</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA8</name>
            <isReadOnly>false</isReadOnly>
            <labelText>DD / Mental Health</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB8</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB8</name>
            <isReadOnly>false</isReadOnly>
            <labelText>DD – resident has a Developmental Disability case manager; MH – resident receives Mental Health services and/or has a 
mental health case manager.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA9</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA9</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Language / Communication Issues / Deafness /
 Hearing Issues</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB9</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB9</name>
            <isReadOnly>false</isReadOnly>
            <labelText>X – resident has a language or communication issue which requires additional staff support; HI – resident is Hearing Impaired; 
D – resident is Deaf.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA10</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA10</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Vision Deficit / Blindness</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB10</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB10</name>
            <isReadOnly>false</isReadOnly>
            <labelText>X – resident if blind or has severe vision deficit which requires additional staff support</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA11</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA11</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Diabetic:  Insulin / Non-Insulin</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB11</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB11</name>
            <isReadOnly>false</isReadOnly>
            <labelText>I – resident if Insulin dependent; N – resident is Non-insulin dependent diabetic.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA12</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA12</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Assist with ADL’s</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB12</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB12</name>
            <isReadOnly>false</isReadOnly>
            <labelText>I – resident assessed as Independent; MIN – resident assessed as needing MINimal assistance with ADL’s such as curing reminders
, supervision, and/or encouragement; MOD – resident assessed as needing  MODerate assistance with ADL’s such 
as guiding, standby assistance for transfers, or ambulation, bathing and toileting; MAX – resident assessed as needing 
MAXimum assistance with ADL’s such as needing a one person or two person transfer, resident was incontinent of bowel or 
bladder and required staff to assist with care; resident needed assistance with turning, sitting up or laying down, staff must 
physically turn the resident every two hours.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA13</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA13</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Wounds / Skin Issue</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB13</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB13</name>
            <isReadOnly>false</isReadOnly>
            <labelText>P – resident has a Pressure ulcer; S – resident has a Stasis wound; W – resident has a Wound or skin issue other than 
pressure or stasis ulcer.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA14</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA14</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Incontinent / Appliance (catheter) / Dialysis</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB14</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB14</name>
            <isReadOnly>false</isReadOnly>
            <labelText>UI – resident Incontinent of bladder and/or bowel; C – resident has Catheter; D – resident requires Dialysis.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA15</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA15</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Special Dietary Needs / Scheduled Snacks</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB15</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB15</name>
            <isReadOnly>false</isReadOnly>
            <labelText>X – resident requires a special prescribed diet.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA16</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA16</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Weight Loss / Weight Gain</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB16</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB16</name>
            <isReadOnly>false</isReadOnly>
            <labelText>WL – resident has had more than a 3 – 5 pound Weight Loss within last 60 days; WG – resident has had more than a 3 – 5 
pound Weight Gain within the last 60 days.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA17</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA17</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Medical Devices</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB17</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB17</name>
            <isReadOnly>false</isReadOnly>
            <labelText>X – resident receives dialysis treatments; M – if part of a residents care is the use of side rails, transfer poles, chair / bed 
alarms / belt restraints.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA18</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA18</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Pay Status</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB18</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB18</name>
            <isReadOnly>false</isReadOnly>
            <labelText>P – all or part of a resident’s care is paid by the resident or their family; S – all of part of a resident care is paid for by the state.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA19</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA19</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Recent Hospitalization</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB19</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB19</name>
            <isReadOnly>false</isReadOnly>
            <labelText>X – resident has been hospitalized within the last 60 days.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA20</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA20</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Oxygen / Respiratory Therapy</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB20</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB20</name>
            <isReadOnly>false</isReadOnly>
            <labelText>X – resident receives oxygen and/or respiratory therapy or treatments.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labA21</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labA21</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Home Health / Hospice / Private Caregiver</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>labB21</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>8</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>labB21</name>
            <isReadOnly>false</isReadOnly>
            <labelText>HH – resident receives Home Health services; HOS – resident receives HOSpice services; P – resident receives care from 
Private caregiver.</labelText>
          </ControlLabel>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>