data {
  int<lower=0> nb_sujets;                   // nombre de patients
  array[nb_sujets] int<lower=0, upper=1> y; // résultats
}

parameters {
  real<lower=0, upper=1> theta;   // chances de guérison
}

model {
  theta ~ beta(1, 1);             // a priori
  y ~ bernoulli(theta);           // vraisemblance
}
