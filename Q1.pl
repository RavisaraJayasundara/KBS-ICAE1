area(austria,83858).
area(france,547030).
area(germany,357021).
area(italy,301230).
area(liechtenstein,160).
area(spain,504851).
area(switzerland,41290).
area(unitedkingdom,244820).

population(austria,8169929).
population(france,63182000).
population(germany,357021).
population(italy,301230).
population(liechtenstein,32842).
population(spain,47059533).
population(switzerland,7507000).
population(unitedkingdom,61100835).


neighbor(austria,switzerland).
neighbor(france,germany).
neighbor(france,spain).
neighbor(france,switzerland).
neighbor(germany,switzerland).
neighbor(italy,switzerland).
neighbor(liechtenstein,switzerland).


density(Country,Density):-area(Country,Area),population(Country,Population),Density is Population/Area.


neighboring_countries(Country1,Country2):-neighbor(Country1,Country2);neighbor(Country2,Country1).


neighbouring_states_of_Switzerland(Country):-neighbor(switzerland,Country).

neighbouring_states_of_Switzerland(Country):-
   neighboring_countries(switzerland,Country).

larger_population_and_area_than_germany(Country):-
    neighboring_countries(germany,Country),
    population(germany,germany_population),
    population(Country,Country_population),
    Country_population>germany_population,
    area(germany,germany_area);
    area(Country,Country_area);
    Country_area>germany_area.


heigher_density_neighbors(Country):-
    neighboring_contries(switzerland,Country),
    density(Country,Country_density),
    density(switzerland,switzerland_density),
    Country_density>switzerland_density.
