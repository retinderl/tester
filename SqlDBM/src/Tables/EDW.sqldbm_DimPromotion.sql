-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Snowflake Demo, v43 by retinder.labana@sqldbm.com *


-- ************************************** EDW.sqldbm_DimPromotion
CREATE TABLE EDW.sqldbm_DimPromotion
(
 PromotionKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Promotion identifier',
 PromotionAlternateKey    number(38,0) COMMENT 'Promotion alternate key',
 EnglishPromotionName     varchar(255) COMMENT 'Promotion name in English',
 SpanishPromotionName     varchar(255) COMMENT 'Promotion name in Spanish',
 FrenchPromotionName      varchar(255) COMMENT 'Promotion name in French',
 DiscountPct              float COMMENT 'The percentage of the discount',
 EnglishPromotionType     varchar(50) COMMENT 'Promotion type in English',
 SpanishPromotionType     varchar(50) COMMENT 'Promotion type in Spanish',
 FrenchPromotionType      varchar(50) COMMENT 'Promotion type in French',
 EnglishPromotionCategory varchar(50) COMMENT 'Promotion category in French',
 SpanishPromotionCategory varchar(50) COMMENT 'Promotion category in French',
 FrenchPromotionCategory  varchar(50) COMMENT 'Promotion category in French',
 MinQty                   number(38,0),
 MaxQty                   number(38,0),

 CONSTRAINT PK_DimPromotion_sqldbm_DimPromotion PRIMARY KEY ( PromotionKey )
);
