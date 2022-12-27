#!/bin/bash

CONTENEDORES=(
    "webspoon_bigdata"
    "pentahosvr_bigdata"
    "mariaDB_bigdata"
    "jupyter_bigdata"
)

# ######################################################################################
# ## Automatización
# ######################################################################################

echo ""
echo "-----------------------------------------------------------------------"
echo "-- Parando contenedores"
echo "-----------------------------------------------------------------------"
for CONTENEDOR in ${CONTENEDORES[@]}; do
    docker stop ${CONTENEDOR}
done

echo ""
echo "-----------------------------------------------------------------------"
echo "-- Borrando contenedores"
echo "-----------------------------------------------------------------------"
for CONTENEDOR in ${CONTENEDORES[@]}; do
    docker rm ${CONTENEDOR}
done
