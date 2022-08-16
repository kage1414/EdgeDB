CREATE MIGRATION m1zhnnkh32a7wrepm2lhlduele4flpjtqldxi2epeqtigzyprep6pa
    ONTO initial
{
  CREATE TYPE default::Movie {
      CREATE PROPERTY endYear -> std::int64;
      CREATE PROPERTY isAdult -> std::bool;
      CREATE PROPERTY originalTitle -> std::str;
      CREATE PROPERTY primaryTitle -> std::str;
      CREATE PROPERTY runtimeMinutes -> std::int64;
      CREATE PROPERTY startYear -> std::int64;
      CREATE REQUIRED PROPERTY tconst -> std::str;
      CREATE PROPERTY titleType -> std::str;
  };
  CREATE TYPE default::Person {
      CREATE PROPERTY birthYear -> std::int64;
      CREATE PROPERTY deathYear -> std::int64;
      CREATE PROPERTY knownForTitles -> std::str;
      CREATE REQUIRED PROPERTY nconst -> std::str;
      CREATE REQUIRED PROPERTY primaryName -> std::str;
      CREATE PROPERTY primaryProfession -> std::str;
  };
  CREATE SCALAR TYPE default::Genre EXTENDING enum<Action, Adult, Adventure, Animation, Biography, Comedy, Crime, Documentary, Drama, Family, Fantasy, `Film-Noir`, `Game-Show`, History, Horror, Music, Musical, Mystery, News, `Reality-TV`, Romance, `Sci-Fi`, Short, Sport, `Talk-Show`, Thriller, War, Western>;
};
