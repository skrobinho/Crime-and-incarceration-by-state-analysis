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
*stat wstepne
tabstat prisoner violent murder rape_rev rob agg property burglar larceny, statistics( mean sd cv)
helw prisoner violent murder rape_rev rob agg property burglar larceny vehicle, mm

*stymulacja

stym prisoner, stdi gen(prisoners)
egen prisonerST = std (prisoners)
norm prisoners, unip gen(prisoner_up)
norm prisoner_up, wu gen(prisonerewu)

stym violent, stdi gen(violents)
egen violentST = std (violents)
norm violents, unip gen(violent_up)
norm violent_up, wu gen(violentewu)

stym murder, stdi gen(murders)
egen murderST = std (murders)
norm murders, unip gen(murder_up)
norm murder_up, wu gen(murderewu)

stym rape_rev, stdi gen(rape_revs)
egen rape_revST = std (rape_revs)
norm rape_revs, unip gen(rape_rev_up)
norm rape_rev_up, wu gen(rape_revewu)

stym rob, stdi gen(robs)
egen robST = std (robs)
norm robs, unip gen(rob_up)
norm rob_up, wu gen(robewu)

stym agg, stdi gen(aggs)
egen aggST = std (aggs)
norm aggs, unip gen(agg_up)
norm agg_up, wu gen(aggewu)

stym property, stdi gen(propertys)
egen propertyST = std (propertys)
norm propertys, unip gen(property_up)
norm property_up, wu gen(propertyewu)

stym burglar, stdi gen(burglars)
egen burglarST = std (burglars)
norm burglars, unip gen(burglar_up)
norm burglar_up, wu gen(burglarewu)

stym larceny, stdi gen(larcenys)
egen larcenyST = std (larcenys)
norm larcenys, unip gen(larceny_up)
norm larceny_up, wu gen(larcenyewu)

stym vehicle, stdi gen(vehicles)
egen vehicleST = std (vehicles)
norm vehicles, unip gen(vehicle_up)
norm vehicle_up, wu gen(vehicleewu)

*metody bezwzorcowe
*metoda rang
synt prisonerewu violentewu murderewu rape_revewu robewu aggewu propertyewu burglarewu larcenyewu vehicleewu, mrang label(state)

*metoda sum
synt prisonerewu violentewu murderewu rape_revewu robewu aggewu propertyewu burglarewu larcenyewu vehicleewu, msum label(state)

*metoda szczotki
szczotka prisoner violent murder rape_rev rob agg property burglar larceny vehicle, label(state)

*metody gradientowe
grad prisoner violent murder rape_rev rob agg property burglar larceny vehicle, label(state)

*metoda wroclawska 
dwroc prisoner violent murder rape_rev rob agg property burglar larceny vehicle, label(state)
q

*metoda prima(+wykres)
dprima prisoner violent murder rape_rev rob agg property burglar larceny vehicle,det label(state)






*stym prisoner, stdr gen(prisonerS) max
*stym violent, stdr gen(violentS) max
*stym murder , stdr gen( murderS) max
*stym rape_rev , stdr gen( raperevS) max
*stym rob , stdr gen( robS) max
*stym agg , stdr gen( aggS) max
*stym property , stdr gen( propertyS) max
*stym burglar , stdr gen( burglarS) max
*stym larceny , stdr gen( larcenyS) max
*stym vehicle , stdr gen( vehicleS) max


* metoda rang 
*synt prisonerS violentS murderS raperevS robS aggS propertyS burglarS larcenyS vehicleS, mrang label(state)
*metoda sum
*synt prisonerS violentS murderS raperevS robS aggS propertyS burglarS larcenyS vehicleS, msum label(state)

*factor
factor violent prisoner murder rape_rev rob agg property burglar larceny vehicle, ml
