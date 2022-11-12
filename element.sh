#!/bin/bash

# Program to get data from Periodic table

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --tuples-only -c"

# The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
GET_DATA_1() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=1")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of $ATOMIC_MASS amu. Hydrogen has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_2() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=2")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 2 is Helium (He). It's a nonmetal, with a mass of $ATOMIC_MASS amu. Helium has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_3() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=3")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 3 is Lithium (Li). It's a metal, with a mass of $ATOMIC_MASS amu. Lithium has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_4() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=4")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 4 is Beryllium (Be). It's a metal, with a mass of $ATOMIC_MASS amu. Beryllium has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_5() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=5")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 5 is Boron (B). It's a metalloid, with a mass of $ATOMIC_MASS amu. Boron has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_6() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=6")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 6 is Carbon (C). It's a nonmetal, with a mass of $ATOMIC_MASS amu. Carbon has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_7() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=7")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 7 is Nitrogen (N). It's a nonmetal, with a mass of $ATOMIC_MASS amu. Nitrogen has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_8() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=8")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 8 is Oxygen (O). It's a nonmetal, with a mass of $ATOMIC_MASS amu. Oxygen has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_9() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=9")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 9 is Fluorine (F). It's a nonmetal, with a mass of $ATOMIC_MASS amu. Fluorine has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}
GET_DATA_10() {
  DATA=$($PSQL "SELECT atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties WHERE atomic_number=10")
  echo "$DATA" | while IFS=" |" read ATOMIC_MASS MELTING_POINT_CELSIUS BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number 10 is Neon (Ne). It's a nonmetal, with a mass of $ATOMIC_MASS amu. Neon has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
}

if [[ $1 ]]
then
  case $1 in
    1 | H | Hydrogen) GET_DATA_1 ;;
    2 | He | Helium) GET_DATA_2 ;;
    3 | Li | Lithium) GET_DATA_3 ;;
    4 | Be | Beryllium) GET_DATA_4 ;;
    5 | B | Boron) GET_DATA_5 ;;
    6 | C | Carbon) GET_DATA_6 ;;
    7 | N | Nitrogen) GET_DATA_7 ;;
    8 | O | Oxygen) GET_DATA_8 ;;
    9 | F | Fluorine) GET_DATA_9 ;;
    10 | Ne | Neon) GET_DATA_10 ;;
    *) echo "I could not find that element in the database." ;;
  esac
else
  echo Please provide an element as an argument.
fi
