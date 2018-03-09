<?xml version="1.0" encoding="utf-8"?>
<Form type="ALInspectionApp.CaseObject.Form">
  <name>FormP</name>
  <isReadOnly>false</isReadOnly>
  <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <!--Below is the list of items contained within this group-->
  <elementList>
    <LayoutStackPanel type="ALInspectionApp.FormItems.Layout.LayoutStackPanel">
      <name>inspectionType</name>
      <isReadOnly>false</isReadOnly>
      <orientation>Horizontal</orientation>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <labelText>Inspection Type</labelText>
        </ControlLabel>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>initial</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Initial</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>full</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Full</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>followup</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Follow up</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>monitering</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Monitoring</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
          <name>complaint</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Complaint</englishTitle>
          <orientation>Vertical</orientation>
          <value>false</value>
        </ControlBoolean>
        <ControlInteger type="ALInspectionApp.FormItems.Controls.ControlInteger">
          <name>number</name>
          <isReadOnly>false</isReadOnly>
          <englishTitle>Number</englishTitle>
          <orientation>Vertical</orientation>
          <value>0</value>
        </ControlInteger>
      </elementList>
    </LayoutStackPanel>
    <LayoutGrid type="ALInspectionApp.FormItems.Layout.LayoutGrid">
      <name>body</name>
      <isReadOnly>false</isReadOnly>
      <!--Below is the list of items contained within this group-->
      <elementList>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab1</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Food Services:  General observation of kitchen and staff (wear a hair restraint per regulation and facility policy).</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Overall cleanliness of kitchen area (6505)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab2</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Proper hand hygiene and glove use (02305 and 02310) during food preparation and service</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS3</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab3</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Staff cleanliness, use of hair restraints and hygienic practices (02325, 02335, 02410)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS4</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab4</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Food stored with proper temperature controls (for example, no potentially hazardous foods, such as beef, chicken, pork  thawing 
at room temperature) (03510) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS5</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab5</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Food from approved sources (03200) (for example food from known providers, no home prepared items) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS6</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab6</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>No ill food workers present  (02220)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS7</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab7</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Chemicals labeled and properly stored (07200)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS8</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab8</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab8</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Person in charge to provide a copy of the food handlers’ cards for meal preparation staff observed during the meal observed in this 
inspection. (02120)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS9</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS9</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab9</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab9</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Person in Charge describes process for staff to report illnesses and procedures used when an ill food workers reports an illness 
(02205, 02220, 02225)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS10</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS10</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab10</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab10</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Person in Charge or designee describes proper dishwashing procedure that follow manufacture guidelines for temperature or 
chemical controls (04555, 04560) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FS11</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FS11</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSLab11</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSLab11</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Person in Charge or designee describes steps taken to prevent cross-contamination of food items (03306)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>notes1</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>notes1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab2</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Food Preparation and Service:  Observe for proper food preparation, thawing of frozen items, areas used for food preparation, and 
proper temperature controls, for example.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS1</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab1</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Person in Charge or designee describes how food contact surfaces are thoroughly cleaned/rinsed/sanitized 
(4640 washing, 04645 rinsing, 04700 sanitization) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS2</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab2</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Person in Charge describes process to check food temperatures   </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS3</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab3</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Person in Charge or designee identifies proper cooking time and temperatures for potentially hazardous foods 
(for example, poultry 165°F, ground meat at least 155°F, fish and other meats 145°F) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS4</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab4</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Person in Charge or designee describes how food items are properly reheated (03400)  </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS5</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab5</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>No bare hand contact with ready to eat foods, except during the washing of fruits and vegetables (03300) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS6</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab6</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Proper hand hygiene and glove use (see above)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS7</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab7</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Fruits and vegetables are thoroughly rinsed (washed) (03318) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS8</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab8</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab8</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Hot foods held at ≥135°F prior to serving  (03525) 
(facility can check food temperature in your presence or you can check temperature of food with your sanitized thermometer)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPS9</name>
          <isReadOnly>false</isReadOnly>
          <row>22</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FPS9</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FPSLab9</name>
          <isReadOnly>false</isReadOnly>
          <row>22</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FPSLab9</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Cold foods held at ≤41°F prior to serving (03525) 
(facility can check food temperature in your presence or you can check temperature of food with your sanitized thermometer) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>notes2</name>
          <isReadOnly>false</isReadOnly>
          <row>23</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>notes2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab3</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Food Storage:  Observe for food storage to prevent contamination and to promote proper temperature controls.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST1</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab1</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Store rooms free from rodents and pests (06550)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2</name>
          <isReadOnly>false</isReadOnly>
          <row>26</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2</name>
          <isReadOnly>false</isReadOnly>
          <row>26</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Refrigerator temperature is maintained at ≤41°F (internal temperature of potentially hazardous food must be  at ≤41°F) (03525) </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST3</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab3</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Foods are frozen in freezer (no specific temperature requirement) (03500)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST4</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab4</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Raw meats stored below or away from ready to eat food  (03306)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST5</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab5</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Potentially hazardous foods are properly cooled (within two hours going from 135°F to  70°F and then to ≤41°F within a total of six 
hours or following the rapid cooling procedure of continuous cooling in a shallow layer of 2 inches or less, uncovered, protected 
from cross contamination, in cooling equipment maintaining an ambient air temperature of ≤41°F or other methods as described in 
regulation) (03515)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>notes3</name>
          <isReadOnly>false</isReadOnly>
          <row>30</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>notes3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab4</name>
          <isReadOnly>false</isReadOnly>
          <row>31</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Food Storage:  Observe for food storage to prevent contamination and to promote proper temperature controls.</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab4a</name>
          <isReadOnly>false</isReadOnly>
          <row>32</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab4a</name>
            <isReadOnly>false</isReadOnly>
            <labelText>•	Menus:</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2m1</name>
          <isReadOnly>false</isReadOnly>
          <row>33</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2m1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2m1</name>
          <isReadOnly>false</isReadOnly>
          <row>33</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2m1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Provide Variety</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2m2</name>
          <isReadOnly>false</isReadOnly>
          <row>34</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2m2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2m2</name>
          <isReadOnly>false</isReadOnly>
          <row>34</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2m2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Are nutritious, meets the residents’ dietary needs</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2m3</name>
          <isReadOnly>false</isReadOnly>
          <row>35</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2m3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2m3</name>
          <isReadOnly>false</isReadOnly>
          <row>35</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2m3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Are palatable and served at proper temperature (if issues with food palatability temperature and/or palatability, consider 
obtaining a meal sample)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2m4</name>
          <isReadOnly>false</isReadOnly>
          <row>36</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2m4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2m4</name>
          <isReadOnly>false</isReadOnly>
          <row>36</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2m4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Are attractively served</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2m5</name>
          <isReadOnly>false</isReadOnly>
          <row>37</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2m5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2m5</name>
          <isReadOnly>false</isReadOnly>
          <row>37</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2m5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Alternate choices for entrees are available</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2m6</name>
          <isReadOnly>false</isReadOnly>
          <row>38</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2m6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2m6</name>
          <isReadOnly>false</isReadOnly>
          <row>38</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2m6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Prescribed diets available per diet manual</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2m7</name>
          <isReadOnly>false</isReadOnly>
          <row>39</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2m7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2m7</name>
          <isReadOnly>false</isReadOnly>
          <row>39</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2m7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Menus are posted</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>lab4b</name>
          <isReadOnly>false</isReadOnly>
          <row>40</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>lab4b</name>
            <isReadOnly>false</isReadOnly>
            <labelText>•	Dining Observation:</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d1</name>
          <isReadOnly>false</isReadOnly>
          <row>41</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d1</name>
          <isReadOnly>false</isReadOnly>
          <row>41</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d1</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Residents who need assistance for eating or swallowing concerns receive it timely, appropriately and in a dignified manner</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d2</name>
          <isReadOnly>false</isReadOnly>
          <row>42</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d2</name>
          <isReadOnly>false</isReadOnly>
          <row>42</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d2</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Meals are distributed in a timely manner</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d3</name>
          <isReadOnly>false</isReadOnly>
          <row>43</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d3</name>
          <isReadOnly>false</isReadOnly>
          <row>43</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d3</name>
            <isReadOnly>false</isReadOnly>
            <labelText>For each sampled resident being observed, identify any special needs and interventions planned to meet their needs</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d4</name>
          <isReadOnly>false</isReadOnly>
          <row>44</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d4</name>
          <isReadOnly>false</isReadOnly>
          <row>44</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Tables adjusted to accommodate wheelchairs</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d5</name>
          <isReadOnly>false</isReadOnly>
          <row>45</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d5</name>
          <isReadOnly>false</isReadOnly>
          <row>45</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d5</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Residents prepared for meals, dentures, glasses and/or hearing aides are in place</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d6</name>
          <isReadOnly>false</isReadOnly>
          <row>46</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d6</name>
          <isReadOnly>false</isReadOnly>
          <row>46</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d6</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Adaptive equipment is available per need</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d7</name>
          <isReadOnly>false</isReadOnly>
          <row>47</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d7</name>
          <isReadOnly>false</isReadOnly>
          <row>47</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d7</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Residents at the same table are served and assisted concurrently</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d8</name>
          <isReadOnly>false</isReadOnly>
          <row>48</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d8</name>
          <isReadOnly>false</isReadOnly>
          <row>48</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d8</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Sufficient staff are available for the distribution of meals and assistance</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d9</name>
          <isReadOnly>false</isReadOnly>
          <row>49</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d9</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d9</name>
          <isReadOnly>false</isReadOnly>
          <row>49</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d9</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Sufficient time is allowed for residents to eat</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d10</name>
          <isReadOnly>false</isReadOnly>
          <row>50</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d10</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d10</name>
          <isReadOnly>false</isReadOnly>
          <row>50</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d10</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Sufficient  dining space available in all dining areas</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d11</name>
          <isReadOnly>false</isReadOnly>
          <row>51</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d11</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d11</name>
          <isReadOnly>false</isReadOnly>
          <row>51</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d11</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Dining atmosphere is pleasant</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d12</name>
          <isReadOnly>false</isReadOnly>
          <row>52</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d12</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d12</name>
          <isReadOnly>false</isReadOnly>
          <row>52</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d12</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Family members are accommodated for dining with their resident</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d13</name>
          <isReadOnly>false</isReadOnly>
          <row>53</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d13</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d13</name>
          <isReadOnly>false</isReadOnly>
          <row>53</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d13</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Meals are provided as written on posted menu</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FST2d14</name>
          <isReadOnly>false</isReadOnly>
          <row>54</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>1</colSpan>
          <isBordered>False</isBordered>
          <ControlBoolean type="ALInspectionApp.FormItems.Controls.ControlBoolean">
            <name>FST2d14</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle />
            <orientation>Horizontal</orientation>
            <value>false</value>
          </ControlBoolean>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>FSTLab2d14</name>
          <isReadOnly>false</isReadOnly>
          <row>54</row>
          <col>2</col>
          <rowSpan>1</rowSpan>
          <colSpan>10</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>FSTLab2d14</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Meals provided in resident rooms are served promptly to ensure proper</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>notes4</name>
          <isReadOnly>false</isReadOnly>
          <row>55</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>notes4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Notes</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>notes5</name>
          <isReadOnly>false</isReadOnly>
          <row>56</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>notes5</name>
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