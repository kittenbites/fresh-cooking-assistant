<?php

require_once '_api-keys.php';

if ($request['method'] === "GET") {
  $location;
  if (!isset($request['query']['location'])) { $location = '32.956423,-117.040781'; }
  else { $location = $request['query']['location']; }
  $data = get_farmers_market_list($maps_api_key, $location);
  $response['body'] = [];
  foreach ($data -> results as $place) {
    array_push($response['body'], [
      'placeId' => $place -> place_id,
      'name' => $place -> name,
      'address' => $place -> vicinity
    ]);
  }
  send($response);
}

function get_farmers_market_list($maps_api_key, $location) {
  $ch = curl_init();
  $options = [
    CURLOPT_URL => 'https://maps.googleapis.com/maps/api/place/nearbysearch/json'
      ."?key=$maps_api_key&location=$location&rankby=distance&name=farmers+market",
    CURLOPT_HTTPGET => true,
    CURLOPT_CONNECTTIMEOUT => 10,
    CURLOPT_TIMEOUT => 10,
    CURLOPT_RETURNTRANSFER => true
  ];
  curl_setopt_array($ch,$options);
  $data = curl_exec($ch);
  $error = curl_error($ch);
  curl_close($ch);
  return $error ? $error : json_decode($data);
}
