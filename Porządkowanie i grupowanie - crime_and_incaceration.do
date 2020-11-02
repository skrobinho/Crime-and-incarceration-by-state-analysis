rename prisoner_count_per_capita prisoner
rename violent_crime_total_per_capita violent
rename murder_manslaughter_per_capita murder
rename rape_revised_per_capita rape_rev
rename robbery_per_capita rob
rename agg_assault_per_capita agg
rename property_crime_total_per_capita property
rename burglary_per_capita burglar
rename larceny_per_capita larceny
rename vehicle_theft_per_capita vehicle
rename jurisdiction state

tabstat prisoner violent murder rape_rev rob agg property burglar larceny, statistics( mean sd cv)

stym prisoner, stdi gen(prisoners)
norm prisoners, uni gen(prisoner_u)
stym violent, stdi gen(violents)
norm violents, uni gen(violent_u)
stym murder, stdi gen(murders)
norm murders, uni gen(murder_u)
stym rape_rev, stdi gen(rape_revs)
norm rape_revs, uni gen(rape_rev_u)
stym rob, stdi gen(robs)
norm robs, uni gen(rob_u)
stym agg, stdi gen(aggs)
norm aggs, uni gen(agg_u)
stym property, stdi gen(propertys)
norm propertys, uni gen(property_u)
stym burglar, stdi gen(burglars)
norm burglars, uni gen(burglar_u)
stym larceny, stdi gen(larcenys)
norm larcenys, uni gen(larceny_u)
stym vehicle, stdi gen(vehicles)
norm vehicles, uni gen(vehicle_u)

norm prisoners, st gen(prisoner_st)
norm violents, st gen(violent_st)
norm murders, st gen(murder_st)
norm rape_revs, st gen(rape_rev_st)
norm robs, st gen(rob_st)
norm aggs, st gen(agg_st)
norm propertys, st gen(property_st)
norm burglars, st gen(burglar_st)
norm larcenys, st gen(larceny_st)
norm vehicles, st gen(vehicle_st)

czekan prisoner_u violent_u murder_u rape_rev_u rob_u agg_u property_u burglar_u larceny_u vehicle_u, label(state)

synt prisoner_u violent_u murder_u rape_rev_u rob_u agg_u property_u burglar_u larceny_u vehicle_u, mrang label(state)

synt prisoner_st violent_st murder_st rape_rev_st rob_st agg_st property_st burglar_st larceny_st vehicle_st, helw label(state)

szczotka prisoner_u violent_u murder_u rape_rev_u rob_u agg_u property_u burglar_u larceny_u vehicle_u, label(state)

grad prisoner_u violent_u murder_u rape_rev_u rob_u agg_u property_u burglar_u larceny_u vehicle_u, label(state)

czekan prisoner_u violent_u murder_u rape_rev_u rob_u agg_u property_u burglar_u larceny_u vehicle_u, lastonly label(state) g
czekan prisoner_u violent_u murder_u rape_rev_u rob_u agg_u property_u burglar_u larceny_u vehicle_u, lastonly label(state) g det

szczotka prisoner_u violent_u murder_u rape_rev_u rob_u agg_u property_u burglar_u larceny_u vehicle_u, label(state) g

synt prisoner_st violent_st murder_st rape_rev_st rob_st agg_st property_st burglar_st larceny_st vehicle_st, helw g l_grup(5) label(state)

synt prisoner_st violent_st murder_st rape_rev_st rob_st agg_st property_st burglar_st larceny_st vehicle_st, helw gsd label(state)
