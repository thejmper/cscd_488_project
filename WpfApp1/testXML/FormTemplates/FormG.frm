<?xml version="1.0" encoding="utf-8"?>
<Form type="WpfApp1.Case.Form">
  <name>FormG</name>
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
      <name>Head</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>resName</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
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
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>True</isBordered>
          <ControlInteger type="WpfApp1.FormItems.ControlInteger">
            <name>resNum</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>RESIDENT NUMBER</englishTitle>
            <orientation>Vertical</orientation>
            <value>0</value>
          </ControlInteger>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>roomNum</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>roomNum</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>ROOM NUMBER</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>false</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>PAY STATUS</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>private</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>8</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>private</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Private</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>state</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>10</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>state</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>State</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>agreement</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>agreement</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Brief Review of Negotiated Service Agreement:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
    <LayoutGrid type="WpfApp1.FormItems.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>resInterview</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>resInterview</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Resident Interview</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>repInterview</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>2</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>repInterview</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Representative Interview</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>A.	The following are REQUIRED questions and MUST be asked during the interview.
Check “Y,” if the answer is yes; check “N,” if the answer is no and document the interviewee’s response; or 
check “D” if the interviewee declined to answer the question.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>question1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>question1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Can you make choices about the care and 
services you receive here at the facility?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>y1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>y1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Y</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>n1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>5</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>n1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>N</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>d1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>d1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>D</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes1</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>question2</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>question2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>If you have a roommate, were you informed 
you would have a roommate? 
Could you change roommates if you wanted to?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>y2</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>y2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Y</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>n2</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>5</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>n2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>N</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>d2</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>d2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>D</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes2</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>question3</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>question3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Do you have an opportunity to participate in 
community activities?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>y3</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>y3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Y</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>n3</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>5</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>n3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>N</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>d3</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>d3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>D</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes3</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>question4</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>question4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Can you choose who visits you and when?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>y4</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>y4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Y</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>n4</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>5</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>n4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>N</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>d4</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>d4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>D</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes4</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>question5</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>question5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Do they pay attention to what you have to say?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>y5</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>y5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Y</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>n5</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>5</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>n5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>N</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>d5</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>d5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>D</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes5</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>question6</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>question6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Can you choose to lock your door?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>y6</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>y6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Y</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>n6</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>5</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>n6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>N</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>d6</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>d6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>D</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes6</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>question7</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>question7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Do you have access to food anytime?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>y7</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>y7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Y</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>n7</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>5</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>n7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>N</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>d7</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>d7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>D</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes7</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>question8</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>4</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>question8</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Do you receive services in the community?</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>y8</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>4</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>y8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Y</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>n8</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>5</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>n8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>N</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>d8</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>d8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>D</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>notes8</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>7</col>
          <rowSpan>1</rowSpan>
          <colSpan>5</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>notes8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab3</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>B.	 Care and Service Needs</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>help3</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>help3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What kind of help do you get from the staff?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext1</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>needs</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>needs</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>How well does staff meet your needs?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC1</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab4</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>C.	 Support of Personal Relationships (if the resident has family or significant others)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>c1</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>c1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Does staff give you time and space to meet / visit 
with friends and family who come to visit?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext2</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>c2</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>c2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Are you able to make personal phone calls without 
being overheard?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC2</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>lab5</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>lab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>D.	 Reasonable House Rules</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>D1</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>D1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Tell me about the rules of the facility.</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext3</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>D2</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>D2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What have you been told about how long you can stay 
up at night or how early or late you can watch TV?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC3</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>E</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>E</name>
            <isReadOnly>false</isReadOnly>
            <labelText>E.	Respect of Individuality, Independence, Personal Choice, Dignity</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>E1</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>E1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Does the staff here know about your preferences?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext4</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>E2</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>E2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What kinds of things do you make choices about?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC4</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>E3</name>
          <isReadOnly>false</isReadOnly>
          <row>23</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>E3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>How does the staff treat you?  Speak to you?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>E4</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>E4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Do you have any concerns about how you are treated?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>F</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>F</name>
            <isReadOnly>false</isReadOnly>
            <labelText>F.	 Homelike Environment</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>F1</name>
          <isReadOnly>false</isReadOnly>
          <row>26</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>F1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What is your room like?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext5</name>
          <isReadOnly>false</isReadOnly>
          <row>26</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>F2</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>F2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Are you comfortable there?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC5</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>F3</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>F3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What personal items were you allowed to bring when 
you came here?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>F4</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>F4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Is the temperature here comfortable to you?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>G</name>
          <isReadOnly>false</isReadOnly>
          <row>30</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>G</name>
            <isReadOnly>false</isReadOnly>
            <labelText>G.	 Response to Concerns</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>G1</name>
          <isReadOnly>false</isReadOnly>
          <row>31</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>G1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Do you feel like you can tell someone if you don’t like 
it here?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext6</name>
          <isReadOnly>false</isReadOnly>
          <row>31</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>G2</name>
          <isReadOnly>false</isReadOnly>
          <row>32</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>G2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Who would you talk to if you had concerns?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC6</name>
          <isReadOnly>false</isReadOnly>
          <row>32</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>G3</name>
          <isReadOnly>false</isReadOnly>
          <row>33</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>G3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What do you think they would do about it?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>H</name>
          <isReadOnly>false</isReadOnly>
          <row>34</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>H</name>
            <isReadOnly>false</isReadOnly>
            <labelText>H.	 Sense of Well-Being and Safety</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>H1</name>
          <isReadOnly>false</isReadOnly>
          <row>35</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>H1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Do you feel safe here?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext7</name>
          <isReadOnly>false</isReadOnly>
          <row>35</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>H2</name>
          <isReadOnly>false</isReadOnly>
          <row>36</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>H2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Does anything make you feel uncomfortable here?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC7</name>
          <isReadOnly>false</isReadOnly>
          <row>36</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>I</name>
          <isReadOnly>false</isReadOnly>
          <row>37</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>I</name>
            <isReadOnly>false</isReadOnly>
            <labelText>I.	 Meals / Snacks / Preferences</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>I1</name>
          <isReadOnly>false</isReadOnly>
          <row>38</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>I1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>How is the food here?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext8</name>
          <isReadOnly>false</isReadOnly>
          <row>38</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>I2</name>
          <isReadOnly>false</isReadOnly>
          <row>39</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>I2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>If you can’t eat something or don’t like something, 
what kind of replacement does the home offer you?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>no8</name>
          <isReadOnly>false</isReadOnly>
          <row>39</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>no8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>I3</name>
          <isReadOnly>false</isReadOnly>
          <row>40</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>I3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>How often do you get the foods you like to eat?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>J</name>
          <isReadOnly>false</isReadOnly>
          <row>41</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>J</name>
            <isReadOnly>false</isReadOnly>
            <labelText>J.	 Activities</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>J1</name>
          <isReadOnly>false</isReadOnly>
          <row>42</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>J1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What activities are offered to you by the facility?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext9</name>
          <isReadOnly>false</isReadOnly>
          <row>42</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext9</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>J2</name>
          <isReadOnly>false</isReadOnly>
          <row>43</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>J2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What kinds of things did you do for fun and relaxation
 before you came here?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC9</name>
          <isReadOnly>false</isReadOnly>
          <row>43</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC9</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>J3</name>
          <isReadOnly>false</isReadOnly>
          <row>44</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>J3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Are there activities you would like to do that you are 
not offered?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>J4</name>
          <isReadOnly>false</isReadOnly>
          <row>45</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>J4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Is there anything you wanted to do and the facility 
helped you do it?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>K</name>
          <isReadOnly>false</isReadOnly>
          <row>46</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="WpfApp1.FormItems.ControlLabel">
            <name>K</name>
            <isReadOnly>false</isReadOnly>
            <labelText>K.	 Notice</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>K1</name>
          <isReadOnly>false</isReadOnly>
          <row>47</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>K1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Do you handle your own finances or does someone 
help you with that?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>othertext10</name>
          <isReadOnly>false</isReadOnly>
          <row>47</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>othertext10</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Other: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>K2</name>
          <isReadOnly>false</isReadOnly>
          <row>48</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>K2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>What were you told about paying for your care here 
and the facility’s policy about admitting and keeping 
residents whose stay is paid for by the state 
(Medicaid)?</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>noC10</name>
          <isReadOnly>false</isReadOnly>
          <row>48</row>
          <col>6</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>noC10</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>No Concerns</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>K3</name>
          <isReadOnly>false</isReadOnly>
          <row>49</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>6</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="WpfApp1.FormItems.ControlBoolean">
            <name>K3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>When and how were you told about this?	</englishTitle>
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="WpfApp1.FormItems.GridElement">
          <name>footnotes</name>
          <isReadOnly>false</isReadOnly>
          <row>50</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="WpfApp1.FormItems.ControlText">
            <name>footnotes</name>
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