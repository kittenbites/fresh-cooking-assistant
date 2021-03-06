<?php

include_once '_helpers.php';
$link = get_db_link();

if ($request['method'] === 'GET') {
  if (!isset($request['query']['produceName'])) {throw new ApiError('Produce name required.', 400); }
  $produce_name = $request['query']['produceName'];
  $produce_id = get_produce_id($link, $produce_name);
  $produce_details = get_produce_details($link, $produce_id);
  $seasons = get_produce_seasons($link, $produce_id);
  $is_in_season = check_in_season($link, $seasons);
  $response['body'] = [
    'details' => $produce_details,
    'isInSeason' => $is_in_season
  ];
  send($response);
}

function get_produce_id($link, $produce_name) {
  $sql = "
    SELECT `id`
    FROM `produce`
    WHERE `name` = ?
    ";
  $stmt = mysqli_prepare($link, $sql);
  mysqli_stmt_bind_param($stmt, 's', $produce_name);
  mysqli_stmt_execute($stmt);
  $result = mysqli_stmt_get_result($stmt);
  if (!mysqli_num_rows($result)) {throw new ApiError('Page not found.', 404); }
  $data = mysqli_fetch_assoc($result);
  return $data['id'];
}

function get_produce_details($link, $produce_id) {
  $sql = "
    SELECT `name`, `selection`, `storage`, `nutrition`, `produceImg`
    FROM `produce`
    WHERE `id` = ?
  ";
  $stmt = mysqli_prepare($link, $sql);
  mysqli_stmt_bind_param($stmt, 'd', $produce_id);
  mysqli_stmt_execute($stmt);
  $result = mysqli_stmt_get_result($stmt);
  if (!mysqli_num_rows($result)) {throw new ApiError('Produce details not found', 404); }
  $produce = mysqli_fetch_assoc($result);
  return $produce;
}

function get_produce_seasons($link, $produce_id) {
  $sql = "
    SELECT `seasons`.`id`
    FROM `seasons`
    JOIN `produceSeasons`
      ON `seasons`.`id` = `produceSeasons`.`seasonId`
    WHERE `produceId` = ?
  ";
  $stmt = mysqli_prepare($link, $sql);
  mysqli_stmt_bind_param($stmt, 'd', $produce_id);
  mysqli_stmt_execute($stmt);
  $result = mysqli_stmt_get_result($stmt);
  if (!mysqli_num_rows($result)) {
    mysqli_stmt_close($stmt);
    throw new ApiError('Seasonal data not found', 404);
  }
  $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
  $seasons = [];
  foreach ($data as $season) { $seasons[] = $season['id']; }
  mysqli_stmt_close($stmt);
  return $seasons;
}
