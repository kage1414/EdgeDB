CREATE MIGRATION m1pmixq5ozmye34zswxxmnhvd4d4hsxtbzgt6b5du5c3byll3o35na
    ONTO m1pnrwshceclyu6k4j4m222enli7dl7yzbmh73nloj22av2ojf4rsa
{
  CREATE SCALAR TYPE default::AkaAttribute EXTENDING enum<str>;
  CREATE SCALAR TYPE default::AkaType EXTENDING enum<alternative, alternativeu0002dvd, alternativeu0002festival, alternativeu0002tv, alternativeu0002video, alternativeu0002working, dvd, dvdu0002imdbDisplay, dvdu0002video, festival, festivalu0002imdbDisplay, festivalu0002working, imdbDisplay, imdbDisplayu0002tv, imdbDisplayu0002video, imdbDisplayu0002working, original, tv, tvu0002video, tvu0002working, video, videou0002working, working>;
  CREATE TYPE default::Aka {
      CREATE REQUIRED LINK titleId -> default::Movie;
      CREATE MULTI PROPERTY attributes -> default::AkaAttribute;
      CREATE PROPERTY isOriginalTitle -> std::bool;
      CREATE PROPERTY language -> std::str;
      CREATE REQUIRED PROPERTY ordering -> std::int64;
      CREATE PROPERTY region -> std::str;
      CREATE REQUIRED PROPERTY title -> std::str;
      CREATE MULTI PROPERTY types -> default::AkaType;
  };
};
