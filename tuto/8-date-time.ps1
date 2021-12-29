cls

# Get system date
Get-Date
Get-Date -DisplayHint Date
Get-Date -DisplayHint Time
Get-Date -Format "dddd yyyy/MM/dd HH:mm K"

"`n"

$datetime = Get-Date
"Nous sommes le " + $datetime
"Date: "  + $datetime.Day +"."+ $datetime.Month+"." +$datetime.Year
"Heure: " + $datetime.Hour + ":" + $datetime.Minute+ ":" + $datetime.Second + "." + $datetime.Millisecond
"jour de l'année: " + (Get-Date -Year 2020 -Month 12 -Day 31).DayOfYear

"`n"

"nom du mois: " + (Get-Culture).DateTimeFormat.GetMonthName($datetime.Month)
"nom du mois (court): " + (Get-Culture).DateTimeFormat.GetAbbreviatedMonthName($datetime.Month)

"`n"

"Jour de la semaine: " + $datetime.DayOfWeek
"Jour de la semaine: " + $datetime.DayOfWeek.value__
"Jour de la semaine: " + (Get-Culture).DateTimeFormat.GetDayName($datetime.DayOfWeek)

"`n"

$Date2 = [DateTime]'2014-01-10'
$datetime.Date - $Date2

"Ajouter/Soustraire des jours : " + $datetime.AddDays(2)
$Time2 = [DateTime]'12:13'
"Ajouter/Soustraire des heures : " + $datetime.AddHours(-3)

# Set-Date to change time or date

