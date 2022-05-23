<#powershell.exe -ExecutionPolicy Bypass -File C:\Users\Lewis\Desktop\Randomizer.ps1#>

[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

#Form Formatting

$Form_Picker = New-Object System.Windows.Forms.Form
    $Form_Picker.Text = "Challenge Randomizer"
    $Form_Picker.Size = New-Object System.Drawing.Size(450,300)
    $Form_Picker.FormBorderStyle = "FixedDialog"
    $Form_Picker.TopMost = $true
    $Form_Picker.MaximizeBox = $false
    $Form_Picker.MinimizeBox = $false
    $Form_Picker.StartPosition = "CenterScreen"
    $Form_Picker.Font = "Segoe UI"

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
    $label_Picker.Font = New-Object System.Drawing.Font("Bazooka",14,[System.Drawing.FontStyle]::Regular)
    $label_Picker.Text = "TEST YOUR FATE"
    $Form_Picker.Controls.Add($label_Picker)

#----------------------------------------------------------------------------------------------------------------

#PICK LABEL

 $label_PickField = New-Object System.Windows.Forms.Label
    $label_PickField.Location = New-Object System.Drawing.Size(8,50)
    $label_PickField.Size = New-Object System.Drawing.Size(50,32)
    $label_PickField.TextAlign = "MiddleCenter"
    $label_PickField.ForeColor = "White"
    $label_PickField.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
    $label_PickField.Text = "PICK"
    $Form_Picker.Controls.Add($label_PickField)

  $label_PickRandom = New-Object System.Windows.Forms.Label
    $label_PickRandom.Location = New-Object System.Drawing.Size(70,50)
    $label_PickRandom.Size = New-Object System.Drawing.Size(150,32)
    $label_PickRandom.TextAlign = "MiddleCenter"
    $label_PickRandom.ForeColor = "White"
    $label_PickRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
    $label_PickRandom.Text = ""
    $Form_Picker.Controls.Add($label_PickRandom)

#----------------------------------------------------------------------------------------------------------------

#BAN LABEL

$label_BanField = New-Object System.Windows.Forms.Label
    $label_BanField.Location = New-Object System.Drawing.Size(8,100)
    $label_BanField.Size = New-Object System.Drawing.Size(50,32)
    $label_BanField.TextAlign = "MiddleCenter"
    $label_BanField.ForeColor = "White"
    $label_BanField.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
    $label_BanField.Text = "BAN"
    $Form_Picker.Controls.Add($label_BanField)

$label_BanRandom = New-Object System.Windows.Forms.Label
    $label_BanRandom.Location = New-Object System.Drawing.Size(70,100)
    $label_BanRandom.Size = New-Object System.Drawing.Size(150,32)
    $label_BanRandom.TextAlign = "MiddleCenter"
    $label_BanRandom.ForeColor = "White"
    $label_BanRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
    $label_BanRandom.Text = ""
    $Form_Picker.Controls.Add($label_BanRandom)

#----------------------------------------------------------------------------------------------------------------

#Modifier Check Box

$objTypeCheckbox = New-Object System.Windows.Forms.Checkbox 
$objTypeCheckbox.Location = New-Object System.Drawing.Size(8,205) 
$objTypeCheckbox.Size = New-Object System.Drawing.Size(125,20)
$objTypeCheckbox.TextAlign = "MiddleCenter"
$objTypeCheckbox.Text = "Modifier Chance?"
$objTypeCheckbox.TabIndex = 4
$Form_Picker.Controls.Add($objTypeCheckbox)

#----------------------------------------------------------------------------------------------------------------


#Modifier Label

$label_modifier = New-Object System.Windows.Forms.Label
    $label_modifier.Location = New-Object System.Drawing.Size(8,150)
    $label_modifier.Size = New-Object System.Drawing.Size(50,32)
    $label_modifier.TextAlign = "MiddleCenter"
    $label_modifier.ForeColor = "White"
    $label_modifier.BackColor = [System.Drawing.Color]::FromArgb(0,[System.Drawing.Color]::FromName("White"))
    $label_modifier.Text = ""
    $Form_Picker.Controls.Add($label_modifier)

$label_ModifierRandom = New-Object System.Windows.Forms.Label
    $label_ModifierRandom.Location = New-Object System.Drawing.Size(70,150)
    $label_ModifierRandom.Size = New-Object System.Drawing.Size(150,32)
    $label_ModifierRandom.TextAlign = "MiddleCenter"
    $label_ModifierRandom.ForeColor = "White"
    $label_ModifierRandom.BackColor = [System.Drawing.Color]::FromArgb(0,[System.Drawing.Color]::FromName("White"))
    $label_ModifierRandom.Text = ""
    $Form_Picker.Controls.Add($label_ModifierRandom)

#----------------------------------------------------------------------------------------------------------------


#BUTTON

$button_ClickMe = New-Object System.Windows.Forms.Button
    $button_ClickMe.Location = New-Object System.Drawing.Size(150,200)
    $button_ClickMe.Size = New-Object System.Drawing.Size(150,32)
    $button_ClickMe.TextAlign = "MiddleCenter"
    $button_ClickMe.Text = "Hold on tight..."
    $button_ClickMe.Add_Click({$button_ClickMe.Text = "Calculating..."

    $button_ClickMe.Enabled = $false

    $label_PickRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
    $label_BanRandom.BackColor = [System.Drawing.Color]::FromArgb(60,[System.Drawing.Color]::FromName("White"))
    $label_PickRandom.Text = ""
    $label_BanRandom.Text = ""

    $label_modifier.BackColor = [System.Drawing.Color]::FromArgb(0,[System.Drawing.Color]::FromName("White"))
    $label_ModifierRandom.BackColor = [System.Drawing.Color]::FromArgb(0,[System.Drawing.Color]::FromName("White"))
    $label_modifier.Text = ""
    $label_ModifierRandom.Text = ""

    $label_PickRandom.BackColor = [System.Drawing.Color]::FromArgb(100,[System.Drawing.Color]::FromName("Yellow"))

    $pickArray = @(
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
        'Winter is coming - Freljord',
        'Void',
        'Zaun',
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
        'Zoomer'
    )

     $banArray = @(
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
        'Winter is over - Freljord',
        'Void',
        'Zaun',
        'Vastayan',
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
        'Star-Guardians'
        'Elemental using',
        'Boomer',
        'Zoomer'
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
    
    $pickArrayCount = ($pickArray.Count)
    $banArrayCount = ($banArray.Count)

    Foreach($pick in $pickArray){
    $label_PickRandom.Text = "$pick"
    start-sleep -Milliseconds 75
    }
    
    $pickChoice = Get-Random -InputObject $pickArray
    $label_PickRandom.Text = "$pickChoice Champions"
    $label_PickRandom.BackColor = [System.Drawing.Color]::FromArgb(200,[System.Drawing.Color]::FromName("Green"))

    $label_BanRandom.BackColor = [System.Drawing.Color]::FromArgb(100,[System.Drawing.Color]::FromName("Yellow"))




    Foreach($ban in $banArray){
    $label_BanRandom.Text = "$ban"
    start-sleep -Milliseconds 75
    }

     $banChoice = Get-Random -InputObject $banArray
    $label_BanRandom.Text = "$banChoice Champions"
    $label_BanRandom.BackColor = [System.Drawing.Color]::FromArgb(200,[System.Drawing.Color]::FromName("Green"))
 

    $modifierChance = Get-Random -minimum 1 -Maximum 4
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



    start-sleep -s 2
    $button_ClickMe.Text = "Put me in again, coach"
    $button_ClickMe.Enabled = $true
    
    })

    $Form_Picker.Controls.Add($button_ClickMe)


$Form_Picker.Add_Shown({$form_Picker.Activate()})
[void] $Form_Picker.ShowDialog()