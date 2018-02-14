<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>testForm</name>
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
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>ddd</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>Radio Control</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlRadio type="WpfApp1.FormItems.ControlRadio">
            <name>Radio Control</name>
            <isReadOnly>false</isReadOnly>
            <!--Below is the list of items contained within this group-->
            <elementList>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>a</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Option A</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>b</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Option B</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
              <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
                <name>c</name>
                <isReadOnly>false</isReadOnly>
                <englishTitle>Option C</englishTitle>
                <orientation>Horizontal</orientation>
                <value>false</value>
              </ControlBoolean>
            </elementList>
          </ControlRadio>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>