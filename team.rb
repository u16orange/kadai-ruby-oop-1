# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(team_name)
    self.name = team_name
    if name == "Giants"
      self.win = 67
      self.lose = 45
      self.draw = 8
    elsif name == "Tigers"
      self.win = 60
      self.lose = 53
      self.draw = 7
    elsif name == "Dragons"
      self.win = 60
      self.lose = 55
      self.draw = 5
    elsif name == "BayStars"
      self.win = 56
      self.lose = 58
      self.draw = 6
    elsif name == "Carp"
      self.win = 52
      self.lose = 56
      self.draw = 12
    elsif name == "Swallows"
      self.win = 41
      self.lose = 69
      self.draw = 10
    end
  end
  
    # インスタンスが持つメソッド（処理）
  def calc_win_rate
    self.win.to_f / (self.win.to_f + self.lose.to_f)
  end
  
  def show_team_result
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{self.calc_win_rate}す。"
  end
end

["Giants", "Tigers", "Dragons", "BayStars", "Carp", "Swallows"].each do |team|
  # インスタンスの生成と、変数への代入
  team_grades = Team.new(team)
  
  # インスタンスの使用
  team_grades.show_team_result
end
