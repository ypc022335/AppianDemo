/*
Data Store: CC_Datastore
Created: 2016-11-18T09:31:56.703Z
By: YogeshC
Appian Version: 16.2.0.0
Target Database: MySQL 5.6.22
Database Driver: MySQL Connector Java mysql-connector-java-5.1.38 ( Revision: fe541c166cec739c74cc727c5da96c1028b4834a )
*/

/* UPDATE DDL */
/* DROP AND CREATE DDL */
/* WARNING: The DDL commented out below will drop and re-create all tables.
    alter table `issuecc` 
        drop 
        foreign key issuecc_constituentinfo;

    drop table if exists `agencycc`;

    drop table if exists `constituentcc`;

    drop table if exists `faqcc`;

    drop table if exists `issuecc`;
*/
    create table `agencycc` (
        `email` varchar(255) not null,
        `name` varchar(255),
        `phone` varchar(255),
        `type` varchar(255),
        primary key (`email`)
    ) ENGINE=InnoDB;

    create table `constituentcc` (
        `constituentssn` integer not null,
        `firstname` varchar(255),
        `lastname` varchar(255),
        `district` varchar(255),
        `state` varchar(255),
        `email` varchar(255),
        `phoneno` varchar(255),
        primary key (`constituentssn`)
    ) ENGINE=InnoDB;

    create table `faqcc` (
        `faqidint` integer not null auto_increment,
        `questiontxt` varchar(255),
        `answertxt` varchar(255),
        primary key (`faqidint`)
    ) ENGINE=InnoDB;

    create table `issuecc` (
        `issueid` integer not null auto_increment,
        `issuedate` date,
        `communicationmethod` varchar(255),
        `federalagency` varchar(255),
        `cnsttntc_cnsttntn_cnsttnts` integer,
        `type` varchar(255),
        `status` varchar(255),
        `flag` integer,
        `caseworker` varchar(255),
        `closuredate` date,
        `attachment` integer,
        `summary` varchar(255),
        `monetaryaward` integer,
        `responseletter` varchar(255),
        primary key (`issueid`)
    ) ENGINE=InnoDB;

    alter table `issuecc` 
        add index issuecc_constituentinfo (`cnsttntc_cnsttntn_cnsttnts`), 
        add constraint issuecc_constituentinfo 
        foreign key (`cnsttntc_cnsttntn_cnsttnts`) 
        references `constituentcc` (`constituentssn`);

