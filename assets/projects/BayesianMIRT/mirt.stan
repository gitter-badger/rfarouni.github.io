
data {
  int<lower=1> J;                // number of students
  int<lower=1> K;                // number of questions
  int<lower=1> N;                // number of observations
  int<lower=1,upper=J> jj[N];    // student for observation n
  int<lower=1,upper=K> kk[N];    // question for observation n
  int<lower=0,upper=1> y[N];     // correctness of observation n
  int<lower=1> D;   	         // number of latent dimensions
  
}

transformed data {
  int<lower=1> L;
  L<- D*(K-D)+D*(D+1)/2;  // number of non-zero loadings
}


parameters {    
  matrix[J,D] theta; 	      //person parameter matrix
  vector<lower=0>[L] alpha_l;   //first column discrimination matrix
  vector[K] beta;	       // vector of thresholds
  real<lower=0> mu_alpha;      // scale prior 
  real mu_beta;                 //location prior
  real<lower=0> sigma_beta;     //scale prior
}


transformed parameters{
  
  matrix[D,K] alpha; // connstrain the upper traingular elements to zero 
  for(i in 1:K){
    for(j in (i+1):D){
      alpha[j,i] <- 0;
    }
  } 
{
  int index;
  for (j in 1:D) {
    for (i in j:K) {
      index <- index + 1;
      alpha[j,i] <- alpha_l[index];
    } 
  }
}

}
model {

// the hyperpriors 
   mu_alpha~ cauchy(0,.5);
   mu_beta ~ cauchy(0, 2);
   sigma_beta ~ cauchy(0,1);
 
//the priors 
  to_vector(theta) ~ normal(0,1); 
  alpha_l ~ lognormal(mu_alpha,.3);
  beta ~ normal(mu_beta,sigma_beta);

//The likelihood 
{
  vector[N] nu;  //vector of predictor terms
  for (i in 1:N) 
    nu[i] <- theta[jj[i]]*col(alpha,kk[i])+ beta[kk[i]]; 
  
  y ~ bernoulli_logit(nu); 
}
}

