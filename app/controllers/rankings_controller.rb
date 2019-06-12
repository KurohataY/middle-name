class RankingsController < ApplicationController
  def middle
    @ranking_mr_counts = Mr.ranking
    @ranking_surname_counts = Surname.ranking
    @ranking_commonname_counts = Commonname.ranking
    
    @mrs = Mr.find(@ranking_mr_counts.keys)
    @surnames = Surnames.find(@ranking_surname_counts.keys)
    @commonnames = Commonname.find(@ranking_commonname_counts.keys)
    
  end
end
