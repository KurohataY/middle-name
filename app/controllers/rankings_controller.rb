#ランキングクラス
class RankingsController < ApplicationController
  def middle
    #氏の使われた回数
    @ranking_mr_counts = Mr.ranking
    @mrs = Mr.find(@ranking_mr_counts.keys)
    
    #カバネの使われた回数
    @ranking_surname_counts = Surname.ranking
    @surnames = Surname.find(@ranking_surname_counts.keys)
    
    #俗称の使われた回数
    @ranking_commonname_counts = Commonname.ranking
    @commonnames = Commonname.find(@ranking_commonname_counts.keys)
  end
end
