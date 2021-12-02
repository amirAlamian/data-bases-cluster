-- creating replica for version below 8.0.27
CHANGE MASTER TO MASTER_HOST = "host",MASTER_PORT = 3306,MASTER_USER = "user",MASTER_PASSWORD = "pass",MASTER_AUTO_POSITION = 1 FOR CHANNEL "channel name";


-- creating replica for version higher 8.0.27
CHANGE REPLICATION SOURCE TO SOURCE_HOST = "host", SOURCE_PORT = "3306", SOURCE_USER = "user", SOURCE_PASSWORD = "pass", SOURCE_AUTO_POSITION = 1 FOR CHANNEL "channel name";


-- starting replica
START REPLICA


CHANGE REPLICATION FILTER REPLICATE_DO_TABLE= (db.table1 , db.table2) FOR CHANNEL "channel name" -- replicate only these tables



-- if you want bidirectional replication, you should make each server replicates one another
