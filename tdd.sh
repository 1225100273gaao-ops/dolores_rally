#!/usr/bin/env bash
modo="$1"
ronda="$2"

case "$ronda" in
  2)  archivos="lib/dominio/geo.dart";                                  prueba="test/geo_test.dart" ;;
  4)  archivos="lib/dominio/aparicion.dart";                            prueba="test/aparicion_test.dart" ;;
  5)  archivos="lib/dominio/radar.dart";                                prueba="test/radar_test.dart" ;;
  6)  archivos="lib/dominio/motor_ar.dart";                             prueba="test/motor_ar_test.dart" ;;
  7)  archivos="lib/dominio/partida.dart lib/dominio/excepciones.dart"; prueba="test/partida_test.dart" ;;
  10) archivos="lib/presentacion/rally_viewmodel.dart";                 prueba="test/rally_viewmodel_test.dart" ;;
  *)  echo "Uso: ./tdd.sh rojo|verde 2|4|5|6|7|10"; exit 1 ;;
esac

case "$modo" in
  rojo)
    for f in $archivos; do
      if [ -f "$f" ]; then
        mkdir -p ".oculto/$(dirname "$f")"
        mv "$f" ".oculto/$f"
      fi
    done
    ;;
  verde)
    for f in $archivos; do
      if [ -f ".oculto/$f" ]; then
        mkdir -p "$(dirname "$f")"
        mv ".oculto/$f" "$f"
      fi
    done
    ;;
  *)
    echo "Uso: ./tdd.sh rojo|verde 2|4|5|6|7|10"
    exit 1
    ;;
esac

flutter test "$prueba"
