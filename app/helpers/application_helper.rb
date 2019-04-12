module ApplicationHelper
  #大学名の略称
  def get_college_initials(name)
    case name
    when "近畿大学男子部" then
      return "近　大"
    when "大阪体育大学男子部" then
      return "大体大"
    when "京都大学男子部" then
      return "京　大"
    when "京都産業大学" then
      return "京産大"
    when "天理大学男子部" then
      return "天理大"
    when "兵庫教育大学" then
      return "兵教大"
    end
  end

  #大学名の正式名称
  def get_college_formals
  end
end
