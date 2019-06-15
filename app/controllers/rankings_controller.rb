class RankingsController < ApplicationController
  def middle
    @ranking_mr_counts = Mr.ranking
    @mrs = Mr.find(@ranking_mr_counts.keys)
    
    @ranking_surname_counts = Surname.ranking
    @surnames = Surname.find(@ranking_surname_counts.keys)
    
    @ranking_commonname_counts = Commonname.ranking
    @commonnames = Commonname.find(@ranking_commonname_counts.keys)
  end
end
