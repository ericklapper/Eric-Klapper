 Winner<-function(var1,var2){
 attach (my.data)
 BigModel<-
 lm(Dependent_var~X2018Average.of.passing_yards_home+ X2017Average.of.score_home+ TOTAverage.of.turnovers_home+ X2017Average.of.score_away+ X2018Average.of.turnovers_home, data=my.data)
 Wins=fitted.values(BigModel)
 looktable1=cbind(Team, Wins)
 for (i in 1:length(Wins)) if (var1==looktable1[i,1]) varone=looktable1[i,2]
 for (i in 1:length(Wins)) if (var2==looktable1[i,1]) vartwo=looktable1[i,2]
 if (varone>vartwo) print(paste(var1, "WIN")) else if (vartwo>varone) print(paste(var2, "WIN")) else print ("TIE")
 detach (my.data)}
