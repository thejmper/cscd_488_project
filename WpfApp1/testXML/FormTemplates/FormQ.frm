<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormQ</name>
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
            <labelText>This form is completed only after a problem with medications has been identified.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab2</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>RESIDENT NAME AND ID NUMBER</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab3</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>3</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>DRUG PRESCRIPTION NAME,
DOSE AND FORM</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab4</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>OBSERVATION OF 
ADMINISTRATION</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab5</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>9</col>
          <rowSpan>1</rowSpan>
          <colSpan>3</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>DRUG ORDER WRITTEN 
AS (WHEN DIFFERENT 
FROM OBSERVATION</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>drug</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <LayoutRepeatGrid type="WpfApp1.FormItems.LayoutRepeatGrid">
            <name>drug</name>
            <isReadOnly>false</isReadOnly>
            <template>
              <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
                <name>medicationPass</name>
                <isReadOnly>false</isReadOnly>
                <!--Below is the list of items contained within this group-->
                <elementList>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>resname</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>0</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>3</colSpan>
                    <isBordered>False</isBordered>
                    <ControlText type="WpfApp1.FormItems.ControlText">
                      <name>resname</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>RESIDENT NAME</englishTitle>
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
                      <text />
                    </ControlText>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>id</name>
                    <isReadOnly>false</isReadOnly>
                    <row>1</row>
                    <col>0</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>3</colSpan>
                    <isBordered>False</isBordered>
                    <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                      <name>id</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle>ID NUMBER</englishTitle>
                      <orientation>Vertical</orientation>
                      <value>0</value>
                    </ControlInteger>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>drugname</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>3</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>3</colSpan>
                    <isBordered>False</isBordered>
                    <ControlText type="WpfApp1.FormItems.ControlText">
                      <name>drugname</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle />
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
                      <text />
                    </ControlText>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>observation</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>6</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>3</colSpan>
                    <isBordered>False</isBordered>
                    <ControlText type="WpfApp1.FormItems.ControlText">
                      <name>observation</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle />
                      <orientation>Vertical</orientation>
                      <acceptsNewLine>false</acceptsNewLine>
                      <text />
                    </ControlText>
                  </GridElement>
                  <GridElement type="WpfApp1.FormItems.GridElement">
                    <name>drugOrder</name>
                    <isReadOnly>false</isReadOnly>
                    <row>0</row>
                    <col>9</col>
                    <rowSpan>1</rowSpan>
                    <colSpan>3</colSpan>
                    <isBordered>False</isBordered>
                    <ControlText type="WpfApp1.FormItems.ControlText">
                      <name>drugOrder</name>
                      <isReadOnly>false</isReadOnly>
                      <englishTitle />
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
                    <name>medicationPass</name>
                    <isReadOnly>false</isReadOnly>
                    <!--Below is the list of items contained within this group-->
                    <elementList>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>resname</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>0</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>3</colSpan>
                        <isBordered>False</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>resname</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>RESIDENT NAME</englishTitle>
                          <orientation>Vertical</orientation>
                          <acceptsNewLine>false</acceptsNewLine>
                          <text />
                        </ControlText>
                      </GridElement>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>id</name>
                        <isReadOnly>false</isReadOnly>
                        <row>1</row>
                        <col>0</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>3</colSpan>
                        <isBordered>False</isBordered>
                        <ControlInteger type="WpfApp1.FormItems.ControlInteger">
                          <name>id</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle>ID NUMBER</englishTitle>
                          <orientation>Vertical</orientation>
                          <value>0</value>
                        </ControlInteger>
                      </GridElement>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>drugname</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>3</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>3</colSpan>
                        <isBordered>False</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>drugname</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle />
                          <orientation>Vertical</orientation>
                          <acceptsNewLine>false</acceptsNewLine>
                          <text />
                        </ControlText>
                      </GridElement>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>observation</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>6</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>3</colSpan>
                        <isBordered>False</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>observation</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle />
                          <orientation>Vertical</orientation>
                          <acceptsNewLine>false</acceptsNewLine>
                          <text />
                        </ControlText>
                      </GridElement>
                      <GridElement type="WpfApp1.FormItems.GridElement">
                        <name>drugOrder</name>
                        <isReadOnly>false</isReadOnly>
                        <row>0</row>
                        <col>9</col>
                        <rowSpan>1</rowSpan>
                        <colSpan>3</colSpan>
                        <isBordered>False</isBordered>
                        <ControlText type="WpfApp1.FormItems.ControlText">
                          <name>drugOrder</name>
                          <isReadOnly>false</isReadOnly>
                          <englishTitle />
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
          <name>notes</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>