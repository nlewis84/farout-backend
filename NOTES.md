select("\*").joins(:vote).order("count DESC").limit(5)
