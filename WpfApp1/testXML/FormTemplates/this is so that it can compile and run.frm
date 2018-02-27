<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>this is so that it can compile and run</name>
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
    <LayoutRepeatGrid type="WpfApp1.FormItems.LayoutRepeatGrid">
      <name>grid</name>
      <isReadOnly>false</isReadOnly>
      <template>
        <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
          <name>child</name>
          <isReadOnly>false</isReadOnly>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>lab1</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>8</colSpan>
              <isBordered>True</isBordered>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>lab1</name>
                <isReadOnly>false</isReadOnly>
                <labelText>label1</labelText>
              </ControlLabel>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>lab2</name>
              <isReadOnly>false</isReadOnly>
              <row>0</row>
              <col>8</col>
              <rowSpan>1</rowSpan>
              <colSpan>4</colSpan>
              <isBordered>True</isBordered>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>lab2</name>
                <isReadOnly>false</isReadOnly>
                <labelText>label2</labelText>
              </ControlLabel>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>lab3</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>0</col>
              <rowSpan>1</rowSpan>
              <colSpan>6</colSpan>
              <isBordered>True</isBordered>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>lab3</name>
                <isReadOnly>false</isReadOnly>
                <labelText>label3</labelText>
              </ControlLabel>
            </GridElement>
            <GridElement type="WpfApp1.FormItems.GridElement">
              <name>lab4</name>
              <isReadOnly>false</isReadOnly>
              <row>1</row>
              <col>6</col>
              <rowSpan>1</rowSpan>
              <colSpan>6</colSpan>
              <isBordered>True</isBordered>
              <ControlLabel type="WpfApp1.FormItems.ControlLabel">
                <name>lab4</name>
                <isReadOnly>false</isReadOnly>
                <labelText>label4</labelText>
              </ControlLabel>
            </GridElement>
          </elementList>
        </LayoutGrid>
      </template>
      <!--Below is the list of items contained within this group-->
      <elementList />
    </LayoutRepeatGrid>
  </elementList>
</Form>