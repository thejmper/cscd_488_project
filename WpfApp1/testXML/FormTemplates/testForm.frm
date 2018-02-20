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
    <LayoutRepeatGrid type="WpfApp1.FormItems.LayoutRepeatGrid">
      <name>rptGrid</name>
      <isReadOnly>false</isReadOnly>
      <template>
        <ControlLabel type="WpfApp1.FormItems.ControlLabel">
          <name>lbl1</name>
          <isReadOnly>false</isReadOnly>
          <labelText>A Label</labelText>
        </ControlLabel>
        <ControlText type="WpfApp1.FormItems.ControlText">
          <name>trlText</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Some Text</englishTitle>
          <orientation>Vertical</orientation>
          <acceptsNewLine>false</acceptsNewLine>
          <text />
        </ControlText>
        <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
          <name>btn</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Check Box</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
      </template>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
          <name>row0</name>
          <isReadOnly>false</isReadOnly>
          <orientation>Horizontal</orientation>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <ControlLabel type="WpfApp1.FormItems.ControlLabel">
              <name>lbl1</name>
              <isReadOnly>false</isReadOnly>
              <labelText>A Label</labelText>
            </ControlLabel>
            <ControlText type="WpfApp1.FormItems.ControlText">
              <name>trlText</name>
              <isReadOnly>false</isReadOnly>
              <englishTitle>Some Text</englishTitle>
              <orientation>Vertical</orientation>
              <acceptsNewLine>false</acceptsNewLine>
              <text />
            </ControlText>
            <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
              <name>btn</name>
              <isReadOnly>false</isReadOnly>
              <englishTitle>Check Box</englishTitle>
              <orientation>Vertical</orientation>
              <value>true</value>
            </ControlBoolean>
          </elementList>
        </LayoutStackPanel>
        <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
          <name>row1</name>
          <isReadOnly>false</isReadOnly>
          <orientation>Horizontal</orientation>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <ControlLabel type="WpfApp1.FormItems.ControlLabel">
              <name>lbl1</name>
              <isReadOnly>false</isReadOnly>
              <labelText>A Label</labelText>
            </ControlLabel>
            <ControlText type="WpfApp1.FormItems.ControlText">
              <name>trlText</name>
              <isReadOnly>false</isReadOnly>
              <englishTitle>Some Text</englishTitle>
              <orientation>Vertical</orientation>
              <acceptsNewLine>false</acceptsNewLine>
              <text />
            </ControlText>
            <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
              <name>btn</name>
              <isReadOnly>false</isReadOnly>
              <englishTitle>Check Box</englishTitle>
              <orientation>Vertical</orientation>
              <value>false</value>
            </ControlBoolean>
          </elementList>
        </LayoutStackPanel>
        <LayoutStackPanel type="WpfApp1.FormItems.LayoutStackPanel">
          <name>row2</name>
          <isReadOnly>false</isReadOnly>
          <orientation>Horizontal</orientation>
          <!--Below is the list of items contained within this group-->
          <elementList>
            <ControlLabel type="WpfApp1.FormItems.ControlLabel">
              <name>lbl1</name>
              <isReadOnly>false</isReadOnly>
              <labelText>A Label</labelText>
            </ControlLabel>
            <ControlText type="WpfApp1.FormItems.ControlText">
              <name>trlText</name>
              <isReadOnly>false</isReadOnly>
              <englishTitle>Some Text</englishTitle>
              <orientation>Vertical</orientation>
              <acceptsNewLine>false</acceptsNewLine>
              <text />
            </ControlText>
            <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
              <name>btn</name>
              <isReadOnly>false</isReadOnly>
              <englishTitle>Check Box</englishTitle>
              <orientation>Vertical</orientation>
              <value>false</value>
            </ControlBoolean>
          </elementList>
        </LayoutStackPanel>
      </elementList>
    </LayoutRepeatGrid>
  </elementList>
</Form>