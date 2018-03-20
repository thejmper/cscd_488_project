<?xml version="1.0" encoding="utf-8"?>
<Form type="ALInspectionApp.CaseObject.Form">
  <name>FormO</name>
  <isReadOnly>false</isReadOnly>
  <formID></formID>
  <ControlDate type="ALInspectionApp.FormItems.Controls.ControlDate">
    <name>inspectionDate</name>
    <isReadOnly>false</isReadOnly>
    <englishTitle>INSPECTION DATE</englishTitle>
    <orientation>Vertical</orientation>
    <SelectedDateProperty />
  </ControlDate>
  <verboseName>Enviromental Observations-Contract Requirements</verboseName>
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
          <name>QoL</name>
          <isReadOnly>false</isReadOnly>
          <row>0</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>QoL</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Quality of Life/Resident Rights:  WAC 3288-110-140(5)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>QoL1</name>
          <isReadOnly>false</isReadOnly>
          <row>1</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>QoL1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Assisted Living Contract 
•   Homelike, smoke free common areas with sufficient space for socialization to meet residents:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE</name>
          <isReadOnly>false</isReadOnly>
          <row>2</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>PE</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Physical Environment – Interior:</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE1</name>
          <isReadOnly>false</isReadOnly>
          <row>3</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Assisted Living Contract:  WAC 388-110-140 
• 	Meeting space outside apartment: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE2</name>
          <isReadOnly>false</isReadOnly>
          <row>4</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Access by resident to on-site washing machine and dryer:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE3</name>
          <isReadOnly>false</isReadOnly>
          <row>5</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Private apartment – note roommate situation (no exemption required if spouse): :</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>P4</name>
          <isReadOnly>false</isReadOnly>
          <row>6</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>P4</name>
            <isReadOnly>false</isReadOnly>
            <labelText>•	Resident room – meeting the requirements of a type “B” dwelling:</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE5</name>
          <isReadOnly>false</isReadOnly>
          <row>7</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>1.	180 square feet in an existing ALF:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE6</name>
          <isReadOnly>false</isReadOnly>
          <row>8</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>	220 square feet in a new ALF:  </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE7</name>
          <isReadOnly>false</isReadOnly>
          <row>9</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>2.	Separate bathroom with sink, toilet, and shower or bathtub:  </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE8</name>
          <isReadOnly>false</isReadOnly>
          <row>10</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>3.	Lockable entry door:  </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE9</name>
          <isReadOnly>false</isReadOnly>
          <row>11</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE9</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>4.	Kitchen with refrigerator, microwave or stove top, counter or table, kitchen sink: </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE10</name>
          <isReadOnly>false</isReadOnly>
          <row>12</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE10</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>5.	New ALF (CRS project number issued09/01/2004 or after) includes storage for utensils / supplies,
counter surface with knee space and wired for phone:  </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PE11</name>
          <isReadOnly>false</isReadOnly>
          <row>13</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PE11</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>6.	New ALF must also have a private mailbox:  </englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARCa</name>
          <isReadOnly>false</isReadOnly>
          <row>14</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>EARCa</name>
            <isReadOnly>false</isReadOnly>
            <labelText>EARC:  WAC 388-110-220(1)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARC1</name>
          <isReadOnly>false</isReadOnly>
          <row>15</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>EARC1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Resident apartment – no more than two residents per room:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARCb</name>
          <isReadOnly>false</isReadOnly>
          <row>16</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>EARCb</name>
            <isReadOnly>false</isReadOnly>
            <labelText>EARC – Specialty Dementia Care Contract:  WAC 388-110-220(2)(3)</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARC2</name>
          <isReadOnly>false</isReadOnly>
          <row>17</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>EARC2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Residential atmosphere:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARCc</name>
          <isReadOnly>false</isReadOnly>
          <row>18</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>EARCc</name>
            <isReadOnly>false</isReadOnly>
            <labelText>•	Area for privacy and socialization:</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARC3</name>
          <isReadOnly>false</isReadOnly>
          <row>19</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>EARC3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>1.	Opportunity for wandering:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARC4</name>
          <isReadOnly>false</isReadOnly>
          <row>20</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>EARC4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>2.	Resident room is furnished / decorated with personal items based on needs and preferences:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARC5</name>
          <isReadOnly>false</isReadOnly>
          <row>21</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>EARC5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>3.	Resident has access to room at all times without staff assistance:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARC6</name>
          <isReadOnly>false</isReadOnly>
          <row>22</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>EARC6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Multiple common areas – varying in size and arrangement:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARC7</name>
          <isReadOnly>false</isReadOnly>
          <row>23</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>EARC7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Environmental cues to stimulate activity:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>EARC8</name>
          <isReadOnly>false</isReadOnly>
          <row>24</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>EARC8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Communication System:  if public address system (used only for emergencies)</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE</name>
          <isReadOnly>false</isReadOnly>
          <row>25</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>PEE</name>
            <isReadOnly>false</isReadOnly>
            <labelText>Physical Environment – Exterior </labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE1</name>
          <isReadOnly>false</isReadOnly>
          <row>26</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE1</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>Assisted Living Contract: WAC 388-110-140 (5) 
•	Access to outdoor areas available to all residents.</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE2</name>
          <isReadOnly>false</isReadOnly>
          <row>27</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE2</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>EARC – Specialty Dementia Care Contract:
Outdoor area – at least one outdoor area.WAC 388 - 110 - 220(3)
•	Accessible to residents without staff assistance:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE3</name>
          <isReadOnly>false</isReadOnly>
          <row>28</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE3</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Garden area:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE4</name>
          <isReadOnly>false</isReadOnly>
          <row>29</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE4</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Surrounded by walls and fences  at least 72 inches high:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE5</name>
          <isReadOnly>false</isReadOnly>
          <row>30</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE5</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Outdoor area protected from sun or rain throughout day:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE6</name>
          <isReadOnly>false</isReadOnly>
          <row>31</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE6</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>•	Suitable outdoor furniture:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEEa</name>
          <isReadOnly>false</isReadOnly>
          <row>32</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>False</isBordered>
          <ControlLabel type="ALInspectionApp.FormItems.Controls.ControlLabel">
            <name>PEEa</name>
            <isReadOnly>false</isReadOnly>
            <labelText>•	Paths and walkways</labelText>
          </ControlLabel>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE7</name>
          <isReadOnly>false</isReadOnly>
          <row>33</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE7</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>1.	Encourage exploration and walking:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE8</name>
          <isReadOnly>false</isReadOnly>
          <row>34</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE8</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>2.	Walking surfaces are firm, stable, slip-resistant, and free from abrupt changes, suitable for wheelchairs 
and walkers:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>PEE9</name>
          <isReadOnly>false</isReadOnly>
          <row>35</row>
          <col>1</col>
          <rowSpan>1</rowSpan>
          <colSpan>11</colSpan>
          <isBordered>False</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>PEE9</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>3.	Plants are non-toxic, non-poisonous, non- thorny, and not covering the walkway:</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
        <GridElement type="ALInspectionApp.FormItems.Layout.GridElement">
          <name>notes</name>
          <isReadOnly>false</isReadOnly>
          <row>36</row>
          <col>0</col>
          <rowSpan>1</rowSpan>
          <colSpan>12</colSpan>
          <isBordered>True</isBordered>
          <ControlText type="ALInspectionApp.FormItems.Controls.ControlText">
            <name>notes</name>
            <isReadOnly>false</isReadOnly>
            <englishTitle>NOTES</englishTitle>
            <orientation>Vertical</orientation>
            <acceptsNewLine>true</acceptsNewLine>
            <text />
          </ControlText>
        </GridElement>
      </elementList>
    </LayoutGrid>
  </elementList>
</Form>