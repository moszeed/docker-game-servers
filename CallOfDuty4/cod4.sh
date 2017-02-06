#! bin\bash

docker run -d \
	-p 28960:28960 \
	-p 28960:28960/udp \
	--name cod4 \
	cod4 ./cod4_lnxded +set dedicated 1 +set sv_hostname "Webnexx" +set rcon_password "CarCopy" \
		+map mp_killhouse \
		+set sv_mapRotation "gametype dm mp_killhouse gametype dom map mp_cargoship \
				     	gametype sab map mp_bloc gametype war map mp_bog gametype war map mp_cargoship \
				    	gametype war map mp_citystreets gametype dom map mp_convoy \
				    	gametype war map mp_countdown gametype war map mp_crash \
					gametype war map mp_crossfire gametype war map mp_farm \
					gametype war map mp_overgrown gametype war dom mp_pipeline gametype \
					war map mp_shipment gametype sab map mp_showdown gametype war \
					map mp_strike gametype war map mp_vacant"
