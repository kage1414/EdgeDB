CREATE MIGRATION m1zoyhyjnbb2gnxgbwbnjsfmt3xyvg6djh2v7vtstdmealuuvbq53q
    ONTO m1zhnnkh32a7wrepm2lhlduele4flpjtqldxi2epeqtigzyprep6pa
{
  ALTER TYPE default::Movie {
      CREATE MULTI PROPERTY genres -> default::Genre;
  };
};
