module MembersHelper
 def grade(addmission_year)
   (Date.today << 3).year - addmission_year + 1
 end
end
