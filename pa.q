url:"http://www.pathofexile.com/api/trade/exchange/Expedition";
fetch:"http://www.pathofexile.com/api/trade/fetch/";
exchaosask:"{\"exchange\":{\"want\":[\"chaos\"],\"have\":[\"exalted\"],\"status\":\"online\"}}";
exchaosbid:"{\"exchange\":{\"want\":[\"exalted\"],\"have\":[\"chaos\"],\"status\":\"online\"}}";

poeAPI:{[json]
	v:$[`;(raze/)value[.j.k json]`want`have];
	res:system"curl -X POST '",url,"' -H 'Content-Type:application/json' -d '",json,"'";
	pl:.j.k[raze res]`result;
	res:system peach"curl ",/:fetch,/:16#pl;
	//removing invalid entries due to rate limiting
	data:valid where 98h=type each first each valid:{.j.k raze x}each res;
	var set flip `price`depth!flip d[`listing][`price][`amount],'(d:raze[first each data])[`item]`stackSize	
		};
