# encoding: utf-8
class Profile
  def intialize(birthday, name, favorite)
    @birthday = birthday
    @name = name
    @favorite = favorite
  end
  def prof_print
    print(@birthday)
    print(@name)
    print(@favorite)
  end

end
