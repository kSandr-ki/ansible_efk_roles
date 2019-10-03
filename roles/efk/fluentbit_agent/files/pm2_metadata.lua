function encrich_with_metadata(tag, timestamp, record)

  -- Add container_id to record
  new_record = record

  -- Metadata found in cache or got from disk, enrich record
--  if cached_data then
--    for key, regex in pairs(DOCKER_CONTAINER_METADATA) do
--    end
--  end
----
   new_record['stream'] = tag:match '^.+/.-(%a+).log$'
   new_record['service'] = tag:match '^.+/(.-).%a+.log$'
--   output = tag .. ":  [" .. string.format("%f", timestamp) .. ", { "
--
--   for key, val in pairs(new_record) do
--      output = output .. string.format(" %s => %s,", key, val)
--   end
--   
--   output = string.sub(output,1,-2) .. " }]"
--   print(output)
----
  return 1, timestamp, new_record
end

