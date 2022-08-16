CREATE MIGRATION m1pnrwshceclyu6k4j4m222enli7dl7yzbmh73nloj22av2ojf4rsa
    ONTO m1zoyhyjnbb2gnxgbwbnjsfmt3xyvg6djh2v7vtstdmealuuvbq53q
{
  ALTER TYPE default::Person {
      DROP PROPERTY knownForTitles;
  };
  ALTER TYPE default::Person {
      CREATE MULTI LINK knownForTitles -> default::Movie;
  };
};
