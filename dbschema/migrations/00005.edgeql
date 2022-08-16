CREATE MIGRATION m1b4c5r4vbycrjpm5hyngd2oe7frji5f3lha4lnsfyaconwyrcqmuq
    ONTO m1pmixq5ozmye34zswxxmnhvd4d4hsxtbzgt6b5du5c3byll3o35na
{
  CREATE TYPE default::Crew {
      CREATE MULTI LINK directors -> default::Person;
      CREATE REQUIRED LINK titleId -> default::Movie;
      CREATE MULTI LINK writers -> default::Person;
  };
};
