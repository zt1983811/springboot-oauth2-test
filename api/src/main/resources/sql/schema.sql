CREATE TABLE user (
  username VARCHAR(50) NOT NULL PRIMARY KEY,
  email VARCHAR(50),
  password VARCHAR(500),
  activated BOOLEAN DEFAULT FALSE,
  activationkey VARCHAR(50) DEFAULT NULL,
  resetpasswordkey VARCHAR(50) DEFAULT NULL
);

CREATE TABLE authority (
  name VARCHAR(50) NOT NULL PRIMARY KEY
);

CREATE TABLE user_authority (
    username VARCHAR(50) NOT NULL,
    authority VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES user (username),
    FOREIGN KEY (authority) REFERENCES authority (name),
    UNIQUE INDEX user_authority_idx_1 (username, authority)
);

CREATE TABLE oauth_access_token (
  token_id VARCHAR(256) DEFAULT NULL,
  token BLOB,
  authentication_id VARCHAR(256) DEFAULT NULL,
  user_name VARCHAR(256) DEFAULT NULL,
  client_id VARCHAR(256) DEFAULT NULL,
  authentication BLOB,
  refresh_token VARCHAR(256) DEFAULT NULL
);

CREATE TABLE oauth_refresh_token (
  token_id VARCHAR(256) DEFAULT NULL,
  token BLOB,
  authentication BLOB
);

CREATE TABLE `AGENCIES` (
  `AGID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  `REP_NAME` varchar(50) DEFAULT NULL,
  `GST` varchar(50) DEFAULT NULL,
  `QST` varchar(50) DEFAULT NULL,
  `IATA` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `CITY` varchar(200) DEFAULT NULL,
  `REGION` varchar(50) DEFAULT NULL,
  `COUNTRY` varchar(50) DEFAULT NULL,
  `ZIP` varchar(20) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AGID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
