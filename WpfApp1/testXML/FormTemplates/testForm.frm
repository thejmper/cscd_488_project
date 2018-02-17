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
    <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
      <name>spacer1</name>
      <isReadOnly>false</isReadOnly>
      <height>25</height>
    </ElementSpacer>
    <ControlText type="WpfApp1.FormItems.ControlText">
      <name>txtcontrol</name>
      <isReadOnly>false</isReadOnly>
      <englishTitle>Text Control</englishTitle>
      <orientation>Vertical</orientation>
      <acceptsNewLine>false</acceptsNewLine>
      <text />
    </ControlText>
    <ElementSpacer type="WpfApp1.FormItems.ElementSpacer">
      <name>spacer2</name>
      <isReadOnly>false</isReadOnly>
      <height>150</height>
    </ElementSpacer>
    <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
      <name>boolcontrol</name>
      <isReadOnly>false</isReadOnly>
      <englishTitle>Check me</englishTitle>
      <orientation>Horizontal</orientation>
      <value>false</value>
    </ControlBoolean>
  </elementList>
</Form>