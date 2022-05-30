<#powershell.exe -ExecutionPolicy Bypass -File C:\Users\Lewis\Desktop\Randomizer.ps1#>

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

#Form Formatting

$Form_Picker = New-Object System.Windows.Forms.Form
    $Form_Picker.Text = "Challenge Randomizer"
    $Form_Picker.Size = New-Object System.Drawing.Size(500,400)
    $Form_Picker.FormBorderStyle = "FixedDialog"
    $Form_Picker.TopMost = $true
    $Form_Picker.MaximizeBox = $false
    $Form_Picker.MinimizeBox = $false
    $Form_Picker.StartPosition = "CenterScreen"
    $Form_Picker.Font = "Segoe UI"
	#You can add your own Image for the background by hardcoding the filepath below
    $objBackgroundImage = [system.drawing.image]::FromFile("C:\temp\randomizerFiles\background.PNG")
    $Form_Picker.BackgroundImage = $objBackgroundImage
    $Form_Picker.BackgroundImageLayout = "Stretch"


#----------------------------------------------------------------------------------------------------------------

#TITLE LABEL

$label_Picker = New-Object System.Windows.Forms.Label
    $label_Picker.Location = New-Object System.Drawing.Size(100,8)
    $label_Picker.Size = New-Object System.Drawing.Size(240,32)
    $label_Picker.TextAlign = "MiddleCenter"
    $label_Picker.ForeColor = "White"
    $label_Picker.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
    $label_Picker.Font = New-Object System.Drawing.Font("Arial",14,[System.Drawing.FontStyle]::Bold)
    $label_Picker.Text = "Test Your Worthiness"
    $Form_Picker.Controls.Add($label_Picker)

#----------------------------------------------------------------------------------------------------------------

#PICK LABEL

 $label_PickField = New-Object System.Windows.Forms.Label
    $label_PickField.Location = New-Object System.Drawing.Size(8,50)
    $label_PickField.Size = New-Object System.Drawing.Size(65,50)
    $label_PickField.TextAlign = "MiddleCenter"
    $label_PickField.ForeColor = "White"
    $label_PickField.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
	$label_PickField.Font = New-Object System.Drawing.Font("Ariel",12,[System.Drawing.FontStyle]::Bold)
    $label_PickField.Text = "PICK"
    $Form_Picker.Controls.Add($label_PickField)

#PICK LABEL TEXT BOX
  $label_PickRandom = New-Object System.Windows.Forms.Label
    $label_PickRandom.Location = New-Object System.Drawing.Size(90,50)
    $label_PickRandom.Size = New-Object System.Drawing.Size(250,50)
    $label_PickRandom.TextAlign = "MiddleCenter"
    $label_PickRandom.ForeColor = "White"
    $label_PickRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
	$label_PickRandom.Font = New-Object System.Drawing.Font("Arial",14,[System.Drawing.FontStyle]::Bold)
    $label_PickRandom.Text = ""
    $Form_Picker.Controls.Add($label_PickRandom)

#----------------------------------------------------------------------------------------------------------------

#BAN LABEL

$label_BanField = New-Object System.Windows.Forms.Label
    $label_BanField.Location = New-Object System.Drawing.Size(8,120)
    $label_BanField.Size = New-Object System.Drawing.Size(65,50)
    $label_BanField.TextAlign = "MiddleCenter"
    $label_BanField.ForeColor = "White"
    $label_BanField.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
	$label_BanField.Font = New-Object System.Drawing.Font("Ariel",12,[System.Drawing.FontStyle]::Bold)
    $label_BanField.Text = "BAN"
    $Form_Picker.Controls.Add($label_BanField)

#BAN LABEL TEXT BOX
$label_BanRandom = New-Object System.Windows.Forms.Label
    $label_BanRandom.Location = New-Object System.Drawing.Size(90,120)
    $label_BanRandom.Size = New-Object System.Drawing.Size(250,50)
    $label_BanRandom.TextAlign = "MiddleCenter"
    $label_BanRandom.ForeColor = "White"
    $label_BanRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
	$label_BanRandom.Font = New-Object System.Drawing.Font("Arial",14,[System.Drawing.FontStyle]::Bold)
    $label_BanRandom.Text = ""
    $Form_Picker.Controls.Add($label_BanRandom)

#----------------------------------------------------------------------------------------------------------------

#Modifier Check Box

$objTypeCheckbox = New-Object System.Windows.Forms.Checkbox 
	$objTypeCheckbox.Location = New-Object System.Drawing.Size(8,295)
	$objTypeCheckbox.Size = New-Object System.Drawing.Size(150,30)
	$objTypeCheckbox.Font = New-Object System.Drawing.Font("Ariel",10,[System.Drawing.FontStyle]::Bold)
	$objTypeCheckbox.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
	$objTypeCheckbox.ForeColor = "White"
	$objTypeCheckbox.TextAlign = "MiddleCenter"
	$objTypeCheckbox.Text = "Include Modifier"
	$objTypeCheckbox.TabIndex = 4
	$Form_Picker.Controls.Add($objTypeCheckbox)

#----------------------------------------------------------------------------------------------------------------

#Modifier Chance Drop Box

$ChanceDropDownBox = New-Object System.Windows.Forms.ComboBox
$ChanceDropDownBox.Location = New-Object System.Drawing.Size(8,325)
$ChanceDropDownBox.Size = New-Object System.Drawing.Size(150,50)
$ChanceDropDownBox.DropDownHeight = 150
$Form_Picker.Controls.Add($ChanceDropDownBox)

$modifierChanceArray = @(
	'25%',
	'50%',
	'100%'
)

#populates the drop down menu from the above array
Foreach($modifierChancePick in $modifierChanceArray){
	$ChanceDropDownBox.Items.Add($modifierChancePick)
}

#----------------------------------------------------------------------------------------------------------------

#MODIFIER LABEL

$label_modifier = New-Object System.Windows.Forms.Label
    $label_modifier.Location = New-Object System.Drawing.Size(8,190)
    $label_modifier.Size = New-Object System.Drawing.Size(65,50)
    $label_modifier.TextAlign = "MiddleCenter"
    $label_modifier.ForeColor = "White"
    $label_modifier.BackColor = [System.Drawing.Color]::FromArgb(0,[System.Drawing.Color]::FromName("White"))
    $label_modifier.Text = ""
    $Form_Picker.Controls.Add($label_modifier)

#MODIFIER LABEL CHECKBOX
$label_ModifierRandom = New-Object System.Windows.Forms.Label
    $label_ModifierRandom.Location = New-Object System.Drawing.Size(90,190)
    $label_ModifierRandom.Size = New-Object System.Drawing.Size(250,50)
    $label_ModifierRandom.TextAlign = "MiddleCenter"
    $label_ModifierRandom.ForeColor = "White"
    $label_ModifierRandom.BackColor = [System.Drawing.Color]::FromArgb(0,[System.Drawing.Color]::FromName("White"))
	$label_ModifierRandom.Font = New-Object System.Drawing.Font("Ariel",10,[System.Drawing.FontStyle]::Bold)
    $label_ModifierRandom.Text = ""
    $Form_Picker.Controls.Add($label_ModifierRandom)

#----------------------------------------------------------------------------------------------------------------

#No Regions Check Box

$objTypeRegionCheckbox = New-Object System.Windows.Forms.Checkbox  
	$objTypeRegionCheckbox.Location = New-Object System.Drawing.Size(8,260) 
	$objTypeRegionCheckbox.Size = New-Object System.Drawing.Size(150,30)
	$objTypeRegionCheckbox.Font = New-Object System.Drawing.Font("Ariel",10,[System.Drawing.FontStyle]::Bold)
	$objTypeRegionCheckbox.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
	$objTypeRegionCheckbox.ForeColor = "White"
	$objTypeRegionCheckbox.TextAlign = "MiddleCenter"
	$objTypeRegionCheckbox.Text = "Include Regions"
	$objTypeRegionCheckbox.TabIndex = 4
	$Form_Picker.Controls.Add($objTypeRegionCheckbox)


#----------------------------------------------------------------------------------------------------------------



#BUTTON

$button_ClickMe = New-Object System.Windows.Forms.Button

	$button_ClickMe.Location = New-Object System.Drawing.Size(250,275)
	$button_ClickMe.Size = New-Object System.Drawing.Size(200,50)
	$button_ClickMe.Font = New-Object System.Drawing.Font("Ariel",12,[System.Drawing.FontStyle]::Regular)
	$button_ClickMe.TextAlign = "MiddleCenter"
	$button_ClickMe.Text = "It's go time"
	$button_ClickMe.Add_Click({$button_ClickMe.Text = "Calculating..."
	#disables button click until script finishes
	$button_ClickMe.Enabled = $false

	#Resets the boxes after click
	$label_PickRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
	$label_BanRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
	$label_PickRandom.Text = ""
	$label_BanRandom.Text = ""

	$label_modifier.BackColor = [System.Drawing.Color]::FromArgb(0,[System.Drawing.Color]::FromName("White"))
	$label_ModifierRandom.BackColor = [System.Drawing.Color]::FromArgb(0,[System.Drawing.Color]::FromName("White"))
	$label_modifier.Text = ""
	$label_ModifierRandom.Text = ""
	#End Reset operation

#----------------------------------------------------------------------------------------------------------------

#ARRAYS
#This is where you can add your own options.
#Note - Picks and Bans both draw from the selectionArray and regionsArray.

	$regionsArray = @(
	    
		'Bandle City',
        'Bilgewater',
        'Demacia',
        'Ionia',
        'Ixtal',
        'Noxus',
        'Piltover',
        'Shadow Isles',
        'Shurima',
        'Targon',
        'Freljord',
        'Void',
        'Zaun'
	
	)

    $selectionArray = @(

        'Vastayan'
        'Support',
        'Top',
        'Mid',
        'ADC',
        'Jungle',
        '4-legged',
        'Female',
        'Male',
        'Creature',
        'Hard-CC',
        'KDA',
        'Thirst-Trap',
        'Ninja',
        'Tech-wielder',
        'Astral/Cosmic',
        'Sword',
        'Gun-wielder',
        'VIP',
        'Star-Guardian',
        'Blonde-haired',
        'Elemental using',
        'Boomer',
        'Zoomer',
		'Invisible',
		'Robot'
		
    )


    $modifierArray = @(
    
		'All Smite',
		'All Teleport',
		'All Ghost',
		'No Flash',
		'No Skin Exceptions',
		'Must Invade at start',
		'Get first drake or FF at 15',
		'AP items only',
		'AD items only',
		'Baron on spawn',
		'Earn 50 kills to win',
		'No Jungle',
		'1 kill - 1 upgrade point'
    
    )
 
#---------------------------------------------------------------------------------------------------------------- 
 
 #Start PICK Operation
 
      if($objTypeRegionCheckbox.Checked -eq $true){
			$resultantArray = $regionsArray + $selectionArray
	}
    elseif($objTypeRegionCheckbox.Checked -eq $false){
		$resultantArray = $selectionArray
	}
	
	
	$label_PickRandom.BackColor = [System.Drawing.Color]::FromArgb(100,[System.Drawing.Color]::FromName("Yellow"))
    Foreach($pick in $resultantArray){
    $label_PickRandom.Text = "$pick"
    start-sleep -Milliseconds 75
    }  
	
	
	$pickChoice = Get-Random -InputObject $resultantArray
	$label_PickRandom.Text = "$pickChoice Champions"
    $label_PickRandom.BackColor = [System.Drawing.Color]::FromArgb(200,[System.Drawing.Color]::FromName("Green"))

#----------------------------------------------------------------------------------------------------------------

#Start BAN Operation

    $label_BanRandom.BackColor = [System.Drawing.Color]::FromArgb(100,[System.Drawing.Color]::FromName("Yellow"))
    Foreach($ban in $resultantArray){
    $label_BanRandom.Text = "$ban"
    start-sleep -Milliseconds 75
    }  

	$banChoice = Get-Random -InputObject $resultantArray
   
	
    $label_BanRandom.Text = "$banChoice Champions"
    $label_BanRandom.BackColor = [System.Drawing.Color]::FromArgb(200,[System.Drawing.Color]::FromName("Green"))

#----------------------------------------------------------------------------------------------------------------

#Modifier Chance Parse + Randomization

	$modifierChanceVariable = 0
	$percentageModifierChance = $ChanceDropDownBox.SelectedItem.ToString()
	
	if($percentageModifierChance -like '25*'){
		$modifierChanceVariable = 5
	}
	elseif($percentageModifierChance -like '*50*'){
		$modifierChanceVariable = 3
	}
	elseif($percentageModifierChance -like '100*'){
		$modifierChanceVariable = 2
	}
	elseif($percentageModifierChance -eq $null){
		$modifierChanceVariable = 5
	}

	
    $modifierChance = Get-Random -minimum 1 -Maximum $modifierChanceVariable
    If($objTypeCheckbox.Checked -eq $true -and $modifierChance -eq 1){
    
		$label_modifier.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
		$label_modifier.Text = "Difficulty Modifier"
		$label_ModifierRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("Yellow"))

		Foreach($modifier in $modifierArray){
			$label_ModifierRandom.Text = "$modifier"
			start-sleep -Milliseconds 300
		}


		$label_ModifierRandom.Text = ""
		$modifierChoice = Get-Random -InputObject $modifierArray
		$label_ModifierRandom.Text = "$modifierChoice"
		$label_ModifierRandom.BackColor = [System.Drawing.Color]::FromArgb(200,[System.Drawing.Color]::FromName("Green"))

    }

#Button Reset
	clear-variable -name resultantArray
    start-sleep -s 2
    $button_ClickMe.Text = "Put me in again, coach"
    $button_ClickMe.Enabled = $true
    
    })
#Close Click
    $Form_Picker.Controls.Add($button_ClickMe)
#End Form

$Form_Picker.Add_Shown({$form_Picker.Activate()})
[void] $Form_Picker.ShowDialog()