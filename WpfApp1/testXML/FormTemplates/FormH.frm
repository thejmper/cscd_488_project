<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormH</name>
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
    <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
      <name>spacer</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>resName</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>resName</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>RESIDENT NAME</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>resNum</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>resNum</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>RESIDENT NUMBER</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>date</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlDate type="WpfApp1.FormItems.ControlDate">
            <name>date</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>DATE OF INTERVIEW</englishTitle>
            <orientation>Vertical</orientation>
            <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
          </ControlDate>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>contactName</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>contactName</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>CONTACT NAME AND NUMBER</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>relationship</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>relationship</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>RELATIONSHIP TO RESIDENT</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
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
          <name>contacts</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <LayoutRepeatGrid type="WpfApp1.FormItems.LayoutRepeatGrid">
            <name>contacts</name>
            <isReadOnly>false</isReadOnly>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>spacer</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>12</colSpan>
              <isBordered>False</isBordered>
              <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
                <name>spacer</name>
                <isReadOnly>false</isReadOnly>
                <height>10</height>
              </ElementSpacer>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>Contact</name>
              <isReadOnly>false</isReadOnly>
              <row>3</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>6</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>Contact</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>CONTACT NAME AND NUMBER</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>date2</name>
              <isReadOnly>false</isReadOnly>
              <row>3</row>
              <col>6</col>
              <rowSpan>1</rowSpan>
              <colSpan>3</colSpan>
              <isBordered>True</isBordered>
              <ControlDate type="WpfApp1.FormItems.ControlDate">
                <name>date2</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>DATE OF INTERVIEW</englishTitle>
                <orientation>Vertical</orientation>
                <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
              </ControlDate>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>relationship2</name>
              <isReadOnly>false</isReadOnly>
              <row>3</row>
              <col>9</col>
              <rowSpan>1</rowSpan>
              <colSpan>3</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>relationship2</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>RELATIONSHIP TO RESIDENT</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>false</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>NOTES2</name>
              <isReadOnly>false</isReadOnly>
              <row>4</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>12</colSpan>
              <isBordered>True</isBordered>
              <ControlText type="WpfApp1.FormItems.ControlText">
                <name>NOTES2</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>NOTES</englishTitle>
                <orientation>Vertical</orientation>
                <acceptsNewLine>true</acceptsNewLine>
                <text />
              </ControlText>
            </GridElement>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <GridElement type="WpfApp1.FormItems.GridElement">
                <name>repeat0</name>
                <isReadOnly>false</isReadOnly>
                <row>0</row>
                <col>0</col>
                <rowSpan>1</rowSpan>
                <colSpan>12</colSpan>
                <isBordered>False</isBordered>
                <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
                  <name>repeat0</name>
                  <isReadOnly>false</isReadOnly>
                  <!--Below is the list of items contained within this group-->
                  <elementList>
                    <GridElement type="WpfApp1.FormItems.GridElement">
                      <name>spacer0</name>
                      <isReadOnly>false</isReadOnly>
                      <row>0</row>
                      <col>0</col>
                      <rowSpan>1</rowSpan>
                      <colSpan>12</colSpan>
                      <isBordered>False</isBordered>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>spacer0</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>0</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>12</colSpan>
                        <isBordered>False</isBordered>
                        <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
                          <name>spacer</name>
                          <isReadOnly>false</isReadOnly>
                          <height>25</height>
                        </ElementSpacer>
                      </GridElement>
                    </GridElement>
                    <GridElement type="WpfApp1.FormItems.GridElement">
                      <name>Contact0</name>
                      <isReadOnly>false</isReadOnly>
                      <row>3</row>
                      <col>0</col>
                      <rowSpan>1</rowSpan>
                      <colSpan>6</colSpan>
                      <isBordered>True</isBordered>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>Contact0</name>
                        <isReadOnly>false</isReadOnly>
                        <row>3</row>
                        <col>0</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>6</colSpan>
                        <isBordered>True</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>Contact</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>CONTACT NAME AND NUMBER</englishTitle>
                          <orientation>Vertical</orientation>
                          <acceptsNewLine>false</acceptsNewLine>
                          <text />
                        </ControlText>
                      </GridElement>
                    </GridElement>
                    <GridElement type="WpfApp1.FormItems.GridElement">
                      <name>date20</name>
                      <isReadOnly>false</isReadOnly>
                      <row>3</row>
                      <col>6</col>
                      <rowSpan>1</rowSpan>
                      <colSpan>3</colSpan>
                      <isBordered>True</isBordered>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>date20</name>
                        <isReadOnly>false</isReadOnly>
                        <row>3</row>
                        <col>6</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>3</colSpan>
                        <isBordered>True</isBordered>
                        <ControlDate type="WpfApp1.FormItems.ControlDate">
                          <name>date2</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>DATE OF INTERVIEW</englishTitle>
                          <orientation>Vertical</orientation>
                          <SelectedDateProperty>1/1/0001 12:00:00 AM</SelectedDateProperty>
                        </ControlDate>
                      </GridElement>
                    </GridElement>
                    <GridElement type="WpfApp1.FormItems.GridElement">
                      <name>relationship20</name>
                      <isReadOnly>false</isReadOnly>
                      <row>3</row>
                      <col>9</col>
                      <rowSpan>1</rowSpan>
                      <colSpan>3</colSpan>
                      <isBordered>True</isBordered>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>relationship20</name>
                        <isReadOnly>false</isReadOnly>
                        <row>3</row>
                        <col>9</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>3</colSpan>
                        <isBordered>True</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>relationship2</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>RELATIONSHIP TO RESIDENT</englishTitle>
                          <orientation>Vertical</orientation>
                          <acceptsNewLine>false</acceptsNewLine>
                          <text />
                        </ControlText>
                      </GridElement>
                    </GridElement>
                    <GridElement type="WpfApp1.FormItems.GridElement">
                      <name>NOTES20</name>
                      <isReadOnly>false</isReadOnly>
                      <row>4</row>
                      <col>0</col>
                      <rowSpan>1</rowSpan>
                      <colSpan>12</colSpan>
                      <isBordered>True</isBordered>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>NOTES20</name>
                        <isReadOnly>false</isReadOnly>
                        <row>4</row>
                        <col>0</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>12</colSpan>
                        <isBordered>True</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>NOTES2</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>NOTES</englishTitle>
                          <orientation>Vertical</orientation>
                          <acceptsNewLine>true</acceptsNewLine>
                          <text />
                        </ControlText>
                      </GridElement>
                    </GridElement>
                  </elementList>
                </LayoutGrid>
              </GridElement>
            </elementList>
          </LayoutRepeatGrid>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>spacer1</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
            <name>spacer1</name>
            <isReadOnly>false</isReadOnly>
            <height>25</height>
          </ElementSpacer>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>finalNotes</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>finalNotes</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Additional Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>