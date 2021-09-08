CREATE TABLE `portfolio`.`illegal_logs`
(
    `index`       INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    `datetime`    DATETIME(3)   NOT NULL DEFAULT NOW(3),
    `ip`          NVARCHAR(50)  NOT NULL,
    `user_agent`  NVARCHAR(500) NOT NULL,
    `request_uri` NVARCHAR(500) NOT NULL,
    `result`      NVARCHAR(50)  NOT NULL,
    CONSTRAINT PRIMARY KEY (`index`)
);

CREATE TABLE `portfolio`.`blocked_ips`
(
    `index`        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `created_at`   DATETIME     NOT NULL DEFAULT NOW(),
    `expires_at`   DATETIME     NOT NULL,
    `expired_flag` BOOLEAN      NOT NULL DEFAULT FALSE,
    `ip`           NVARCHAR(50) NOT NULL,
    CONSTRAINT PRIMARY KEY (`index`)
);