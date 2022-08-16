CREATE MIGRATION m1ss2irviwsgu7ynqfkrsrzildmizkfg2uf5cedjictk2hlrqtcdoa
    ONTO m1b4c5r4vbycrjpm5hyngd2oe7frji5f3lha4lnsfyaconwyrcqmuq
{
  ALTER SCALAR TYPE default::Genre RENAME TO default::MovieGenre;
};
