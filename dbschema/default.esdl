module default {
  type Person {
    required property nconst -> str;
    required property primaryName -> str;
    property birthYear -> int64;
    property deathYear -> int64;
    property primaryProfession -> str;
    multi link knownForTitles -> Movie;
  }

  scalar type MovieGenre extending enum<"Action","Adult","Adventure","Animation","Biography","Comedy","Crime","Documentary","Drama","Family","Fantasy","Film-Noir","Game-Show","History","Horror","Music","Musical","Mystery","News","Reality-TV","Romance","Sci-Fi","Short","Sport","Talk-Show","Thriller","War","Western">;

  type Movie {
    required property tconst -> str;
    property titleType -> str;
    property primaryTitle -> str;
    property originalTitle -> str;
    property isAdult -> bool;
    property startYear -> int64;
    property endYear -> int64;
    property runtimeMinutes -> int64;
    multi property genres -> MovieGenre;
  }

  scalar type AkaType extending enum<"alternative","alternativeu0002dvd","alternativeu0002festival","alternativeu0002tv","alternativeu0002video","alternativeu0002working","dvd","dvdu0002imdbDisplay","dvdu0002video","festival","festivalu0002imdbDisplay","festivalu0002working","imdbDisplay","imdbDisplayu0002tv","imdbDisplayu0002video","imdbDisplayu0002working","original","tv","tvu0002video","tvu0002working","video","videou0002working","working">;

  scalar type AkaAttribute extending enum <str>;

  type Aka {
    required link titleId -> Movie;
    required property ordering -> int64;
    required property title -> str;
    property region -> str;
    property language -> str;
    multi property types -> AkaType;
    multi property attributes -> AkaAttribute;
    property isOriginalTitle -> bool;
  }

  type Crew {
    required link titleId -> Movie;
    multi link directors -> Person;
    multi link writers -> Person;
  }
}