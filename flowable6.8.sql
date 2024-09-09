

-- ----------------------------
-- Table structure for act_co_content_item
-- ----------------------------
DROP TABLE IF EXISTS `act_co_content_item`;
CREATE TABLE `act_co_content_item`  (
  `ID_` varchar(255)  NOT NULL,
  `NAME_` varchar(255)  NOT NULL,
  `MIME_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(255)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(255)  NULL DEFAULT NULL,
  `CONTENT_STORE_ID_` varchar(255)  NULL DEFAULT NULL,
  `CONTENT_STORE_NAME_` varchar(255)  NULL DEFAULT NULL,
  `FIELD_` varchar(400)  NULL DEFAULT NULL,
  `CONTENT_AVAILABLE_` bit(1) NULL DEFAULT b'0',
  `CREATED_` timestamp(6) NULL DEFAULT NULL,
  `CREATED_BY_` varchar(255)  NULL DEFAULT NULL,
  `LAST_MODIFIED_` timestamp(6) NULL DEFAULT NULL,
  `LAST_MODIFIED_BY_` varchar(255)  NULL DEFAULT NULL,
  `CONTENT_SIZE_` bigint NULL DEFAULT 0,
  `TENANT_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `idx_contitem_taskid`(`TASK_ID_` ASC) USING BTREE,
  INDEX `idx_contitem_procid`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `idx_contitem_scope`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_co_content_item
-- ----------------------------

-- ----------------------------
-- Table structure for act_co_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `act_co_databasechangelog`;
CREATE TABLE `act_co_databasechangelog`  (
  `ID` varchar(255)  NOT NULL,
  `AUTHOR` varchar(255)  NOT NULL,
  `FILENAME` varchar(255)  NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10)  NOT NULL,
  `MD5SUM` varchar(35)  NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255)  NULL DEFAULT NULL,
  `COMMENTS` varchar(255)  NULL DEFAULT NULL,
  `TAG` varchar(255)  NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20)  NULL DEFAULT NULL,
  `CONTEXTS` varchar(255)  NULL DEFAULT NULL,
  `LABELS` varchar(255)  NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10)  NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_co_databasechangelog
-- ----------------------------
INSERT INTO `act_co_databasechangelog` VALUES ('1', 'activiti', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', '2024-09-09 14:29:38', 1, 'EXECUTED', '8:7644d7165cfe799200a2abdd3419e8b6', 'createTable tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_taskid, tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_procid, tableName=ACT_CO_CONTENT_ITEM', '', NULL, '4.9.0', NULL, NULL, '5863377986');
INSERT INTO `act_co_databasechangelog` VALUES ('2', 'flowable', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', '2024-09-09 14:29:38', 2, 'EXECUTED', '8:fe7b11ac7dbbf9c43006b23bbab60bab', 'addColumn tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_scope, tableName=ACT_CO_CONTENT_ITEM', '', NULL, '4.9.0', NULL, NULL, '5863377986');

-- ----------------------------
-- Table structure for act_co_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `act_co_databasechangeloglock`;
CREATE TABLE `act_co_databasechangeloglock`  (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_co_databasechangeloglock
-- ----------------------------
INSERT INTO `act_co_databasechangeloglock` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for act_evt_log
-- ----------------------------
DROP TABLE IF EXISTS `act_evt_log`;
CREATE TABLE `act_evt_log`  (
  `LOG_NR_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255)  NULL DEFAULT NULL,
  `DATA_` longblob NULL,
  `LOCK_OWNER_` varchar(255)  NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`LOG_NR_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_evt_log
-- ----------------------------

-- ----------------------------
-- Table structure for act_fo_databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `act_fo_databasechangelog`;
CREATE TABLE `act_fo_databasechangelog`  (
  `ID` varchar(255)  NOT NULL,
  `AUTHOR` varchar(255)  NOT NULL,
  `FILENAME` varchar(255)  NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10)  NOT NULL,
  `MD5SUM` varchar(35)  NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255)  NULL DEFAULT NULL,
  `COMMENTS` varchar(255)  NULL DEFAULT NULL,
  `TAG` varchar(255)  NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20)  NULL DEFAULT NULL,
  `CONTEXTS` varchar(255)  NULL DEFAULT NULL,
  `LABELS` varchar(255)  NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10)  NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_fo_databasechangelog
-- ----------------------------
INSERT INTO `act_fo_databasechangelog` VALUES ('1', 'activiti', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2024-09-09 14:29:37', 1, 'EXECUTED', '8:033ebf9380889aed7c453927ecc3250d', 'createTable tableName=ACT_FO_FORM_DEPLOYMENT; createTable tableName=ACT_FO_FORM_RESOURCE; createTable tableName=ACT_FO_FORM_DEFINITION; createTable tableName=ACT_FO_FORM_INSTANCE', '', NULL, '4.9.0', NULL, NULL, '5863377312');
INSERT INTO `act_fo_databasechangelog` VALUES ('2', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2024-09-09 14:29:37', 2, 'EXECUTED', '8:986365ceb40445ce3b27a8e6b40f159b', 'addColumn tableName=ACT_FO_FORM_INSTANCE', '', NULL, '4.9.0', NULL, NULL, '5863377312');
INSERT INTO `act_fo_databasechangelog` VALUES ('3', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2024-09-09 14:29:37', 3, 'EXECUTED', '8:abf482518ceb09830ef674e52c06bf15', 'dropColumn columnName=PARENT_DEPLOYMENT_ID_, tableName=ACT_FO_FORM_DEFINITION', '', NULL, '4.9.0', NULL, NULL, '5863377312');
INSERT INTO `act_fo_databasechangelog` VALUES ('4', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2024-09-09 14:29:37', 4, 'EXECUTED', '8:2087829f22a4b2298dbf530681c74854', 'modifyDataType columnName=DEPLOY_TIME_, tableName=ACT_FO_FORM_DEPLOYMENT; modifyDataType columnName=SUBMITTED_DATE_, tableName=ACT_FO_FORM_INSTANCE', '', NULL, '4.9.0', NULL, NULL, '5863377312');
INSERT INTO `act_fo_databasechangelog` VALUES ('5', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2024-09-09 14:29:37', 5, 'EXECUTED', '8:b4be732b89e5ca028bdd520c6ad4d446', 'createIndex indexName=ACT_IDX_FORM_DEF_UNIQ, tableName=ACT_FO_FORM_DEFINITION', '', NULL, '4.9.0', NULL, NULL, '5863377312');
INSERT INTO `act_fo_databasechangelog` VALUES ('6', 'flowable', 'org/flowable/form/db/liquibase/flowable-form-db-changelog.xml', '2024-09-09 14:29:37', 6, 'EXECUTED', '8:384bbd364a649b67c3ca1bcb72fe537f', 'createIndex indexName=ACT_IDX_FORM_TASK, tableName=ACT_FO_FORM_INSTANCE; createIndex indexName=ACT_IDX_FORM_PROC, tableName=ACT_FO_FORM_INSTANCE; createIndex indexName=ACT_IDX_FORM_SCOPE, tableName=ACT_FO_FORM_INSTANCE', '', NULL, '4.9.0', NULL, NULL, '5863377312');

-- ----------------------------
-- Table structure for act_fo_databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `act_fo_databasechangeloglock`;
CREATE TABLE `act_fo_databasechangeloglock`  (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_fo_databasechangeloglock
-- ----------------------------
INSERT INTO `act_fo_databasechangeloglock` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for act_fo_form_definition
-- ----------------------------
DROP TABLE IF EXISTS `act_fo_form_definition`;
CREATE TABLE `act_fo_form_definition`  (
  `ID_` varchar(255)  NOT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `VERSION_` int NULL DEFAULT NULL,
  `KEY_` varchar(255)  NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255)  NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_IDX_FORM_DEF_UNIQ`(`KEY_` ASC, `VERSION_` ASC, `TENANT_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_fo_form_definition
-- ----------------------------

-- ----------------------------
-- Table structure for act_fo_form_deployment
-- ----------------------------
DROP TABLE IF EXISTS `act_fo_form_deployment`;
CREATE TABLE `act_fo_form_deployment`  (
  `ID_` varchar(255)  NOT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `DEPLOY_TIME_` datetime(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_fo_form_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for act_fo_form_instance
-- ----------------------------
DROP TABLE IF EXISTS `act_fo_form_instance`;
CREATE TABLE `act_fo_form_instance`  (
  `ID_` varchar(255)  NOT NULL,
  `FORM_DEFINITION_ID_` varchar(255)  NOT NULL,
  `TASK_ID_` varchar(255)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(255)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUBMITTED_DATE_` datetime(3) NULL DEFAULT NULL,
  `SUBMITTED_BY_` varchar(255)  NULL DEFAULT NULL,
  `FORM_VALUES_ID_` varchar(255)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_FORM_TASK`(`TASK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_FORM_PROC`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_FORM_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_fo_form_instance
-- ----------------------------

-- ----------------------------
-- Table structure for act_fo_form_resource
-- ----------------------------
DROP TABLE IF EXISTS `act_fo_form_resource`;
CREATE TABLE `act_fo_form_resource`  (
  `ID_` varchar(255)  NOT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `RESOURCE_BYTES_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_fo_form_resource
-- ----------------------------

-- ----------------------------
-- Table structure for act_ge_bytearray
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_bytearray`;
CREATE TABLE `act_ge_bytearray`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64)  NULL DEFAULT NULL,
  `BYTES_` longblob NULL,
  `GENERATED_` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_BYTEARR_DEPL`(`DEPLOYMENT_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ge_bytearray
-- ----------------------------

-- ----------------------------
-- Table structure for act_ge_property
-- ----------------------------
DROP TABLE IF EXISTS `act_ge_property`;
CREATE TABLE `act_ge_property`  (
  `NAME_` varchar(64)  NOT NULL,
  `VALUE_` varchar(300)  NULL DEFAULT NULL,
  `REV_` int NULL DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ge_property
-- ----------------------------
INSERT INTO `act_ge_property` VALUES ('batch.schema.version', '6.8.1.0', 1);
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count', 'true', 1);
INSERT INTO `act_ge_property` VALUES ('cfg.task-related-entities-count', 'true', 1);
INSERT INTO `act_ge_property` VALUES ('common.schema.version', '6.8.1.0', 1);
INSERT INTO `act_ge_property` VALUES ('entitylink.schema.version', '6.8.1.0', 1);
INSERT INTO `act_ge_property` VALUES ('eventsubscription.schema.version', '6.8.1.0', 1);
INSERT INTO `act_ge_property` VALUES ('identitylink.schema.version', '6.8.1.0', 1);
INSERT INTO `act_ge_property` VALUES ('job.schema.version', '6.8.1.0', 1);
INSERT INTO `act_ge_property` VALUES ('next.dbid', '1', 1);
INSERT INTO `act_ge_property` VALUES ('schema.history', 'create(6.8.1.0)', 1);
INSERT INTO `act_ge_property` VALUES ('schema.version', '6.8.1.0', 1);
INSERT INTO `act_ge_property` VALUES ('task.schema.version', '6.8.1.0', 1);
INSERT INTO `act_ge_property` VALUES ('variable.schema.version', '6.8.1.0', 1);

-- ----------------------------
-- Table structure for act_hi_actinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_actinst`;
CREATE TABLE `act_hi_actinst`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT 1,
  `PROC_DEF_ID_` varchar(64)  NOT NULL,
  `PROC_INST_ID_` varchar(64)  NOT NULL,
  `EXECUTION_ID_` varchar(64)  NOT NULL,
  `ACT_ID_` varchar(255)  NOT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `ACT_NAME_` varchar(255)  NULL DEFAULT NULL,
  `ACT_TYPE_` varchar(255)  NOT NULL,
  `ASSIGNEE_` varchar(255)  NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `TRANSACTION_ORDER_` int NULL DEFAULT NULL,
  `DURATION_` bigint NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_START`(`START_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_END`(`END_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_PROCINST`(`PROC_INST_ID_` ASC, `ACT_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_EXEC`(`EXECUTION_ID_` ASC, `ACT_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_actinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_attachment
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_attachment`;
CREATE TABLE `act_hi_attachment`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `USER_ID_` varchar(255)  NULL DEFAULT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000)  NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `URL_` varchar(4000)  NULL DEFAULT NULL,
  `CONTENT_ID_` varchar(64)  NULL DEFAULT NULL,
  `TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_comment
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_comment`;
CREATE TABLE `act_hi_comment`  (
  `ID_` varchar(64)  NOT NULL,
  `TYPE_` varchar(255)  NULL DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `ACTION_` varchar(255)  NULL DEFAULT NULL,
  `MESSAGE_` varchar(4000)  NULL DEFAULT NULL,
  `FULL_MSG_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_comment
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_detail
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_detail`;
CREATE TABLE `act_hi_detail`  (
  `ID_` varchar(64)  NOT NULL,
  `TYPE_` varchar(255)  NOT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `ACT_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `NAME_` varchar(255)  NOT NULL,
  `VAR_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `REV_` int NULL DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64)  NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint NULL DEFAULT NULL,
  `TEXT_` varchar(4000)  NULL DEFAULT NULL,
  `TEXT2_` varchar(4000)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_PROC_INST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_ACT_INST`(`ACT_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TIME`(`TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_NAME`(`NAME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TASK_ID`(`TASK_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_detail
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_entitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_entitylink`;
CREATE TABLE `act_hi_entitylink`  (
  `ID_` varchar(64)  NOT NULL,
  `LINK_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ENT_LNK_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC, `LINK_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ENT_LNK_REF_SCOPE`(`REF_SCOPE_ID_` ASC, `REF_SCOPE_TYPE_` ASC, `LINK_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ENT_LNK_ROOT_SCOPE`(`ROOT_SCOPE_ID_` ASC, `ROOT_SCOPE_TYPE_` ASC, `LINK_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_ENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC, `LINK_TYPE_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_entitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_identitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_identitylink`;
CREATE TABLE `act_hi_identitylink`  (
  `ID_` varchar(64)  NOT NULL,
  `GROUP_ID_` varchar(255)  NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NULL DEFAULT NULL,
  `USER_ID_` varchar(255)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_USER`(`USER_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_TASK`(`TASK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_identitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_procinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_procinst`;
CREATE TABLE `act_hi_procinst`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT 1,
  `PROC_INST_ID_` varchar(64)  NOT NULL,
  `BUSINESS_KEY_` varchar(255)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint NULL DEFAULT NULL,
  `START_USER_ID_` varchar(255)  NULL DEFAULT NULL,
  `START_ACT_ID_` varchar(255)  NULL DEFAULT NULL,
  `END_ACT_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64)  NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `CALLBACK_ID_` varchar(255)  NULL DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `REFERENCE_ID_` varchar(255)  NULL DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255)  NULL DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `PROC_INST_ID_`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_INST_END`(`END_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_I_BUSKEY`(`BUSINESS_KEY_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_SUPER_PROCINST`(`SUPER_PROCESS_INSTANCE_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_procinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_taskinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_taskinst`;
CREATE TABLE `act_hi_taskinst`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT 1,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255)  NULL DEFAULT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000)  NULL DEFAULT NULL,
  `OWNER_` varchar(255)  NULL DEFAULT NULL,
  `ASSIGNEE_` varchar(255)  NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) NULL DEFAULT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000)  NULL DEFAULT NULL,
  `PRIORITY_` int NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) NULL DEFAULT NULL,
  `FORM_KEY_` varchar(255)  NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_INST_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_taskinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_tsk_log
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_tsk_log`;
CREATE TABLE `act_hi_tsk_log`  (
  `ID_` bigint NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NOT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL,
  `USER_ID_` varchar(255)  NULL DEFAULT NULL,
  `DATA_` varchar(4000)  NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_tsk_log
-- ----------------------------

-- ----------------------------
-- Table structure for act_hi_varinst
-- ----------------------------
DROP TABLE IF EXISTS `act_hi_varinst`;
CREATE TABLE `act_hi_varinst`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT 1,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `NAME_` varchar(255)  NOT NULL,
  `VAR_TYPE_` varchar(100)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64)  NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint NULL DEFAULT NULL,
  `TEXT_` varchar(4000)  NULL DEFAULT NULL,
  `TEXT2_` varchar(4000)  NULL DEFAULT NULL,
  `META_INFO_` varchar(4000)  NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_NAME_TYPE`(`NAME_` ASC, `VAR_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_VAR_SCOPE_ID_TYPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_VAR_SUB_ID_TYPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_PROC_INST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_TASK_ID`(`TASK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_EXE`(`EXECUTION_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_hi_varinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_procdef_info
-- ----------------------------
DROP TABLE IF EXISTS `act_procdef_info`;
CREATE TABLE `act_procdef_info`  (
  `ID_` varchar(64)  NOT NULL,
  `PROC_DEF_ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_INFO_PROCDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_INFO_PROCDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_INFO_JSON_BA`(`INFO_JSON_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_procdef_info
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_deployment
-- ----------------------------
DROP TABLE IF EXISTS `act_re_deployment`;
CREATE TABLE `act_re_deployment`  (
  `ID_` varchar(64)  NOT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `KEY_` varchar(255)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64)  NULL DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64)  NULL DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_deployment
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_model
-- ----------------------------
DROP TABLE IF EXISTS `act_re_model`;
CREATE TABLE `act_re_model`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `KEY_` varchar(255)  NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int NULL DEFAULT NULL,
  `META_INFO_` varchar(4000)  NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64)  NULL DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64)  NULL DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE`(`EDITOR_SOURCE_VALUE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE_EXTRA`(`EDITOR_SOURCE_EXTRA_VALUE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_MODEL_DEPLOYMENT`(`DEPLOYMENT_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_model
-- ----------------------------

-- ----------------------------
-- Table structure for act_re_procdef
-- ----------------------------
DROP TABLE IF EXISTS `act_re_procdef`;
CREATE TABLE `act_re_procdef`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `KEY_` varchar(255)  NOT NULL,
  `VERSION_` int NOT NULL,
  `DEPLOYMENT_ID_` varchar(64)  NULL DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000)  NULL DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000)  NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000)  NULL DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint NULL DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  `ENGINE_VERSION_` varchar(255)  NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64)  NULL DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64)  NULL DEFAULT NULL,
  `DERIVED_VERSION_` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PROCDEF`(`KEY_` ASC, `VERSION_` ASC, `DERIVED_VERSION_` ASC, `TENANT_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_re_procdef
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_actinst
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_actinst`;
CREATE TABLE `act_ru_actinst`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT 1,
  `PROC_DEF_ID_` varchar(64)  NOT NULL,
  `PROC_INST_ID_` varchar(64)  NOT NULL,
  `EXECUTION_ID_` varchar(64)  NOT NULL,
  `ACT_ID_` varchar(255)  NOT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `ACT_NAME_` varchar(255)  NULL DEFAULT NULL,
  `ACT_TYPE_` varchar(255)  NOT NULL,
  `ASSIGNEE_` varchar(255)  NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint NULL DEFAULT NULL,
  `TRANSACTION_ORDER_` int NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_START`(`START_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_END`(`END_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_PROC`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_PROC_ACT`(`PROC_INST_ID_` ASC, `ACT_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_EXEC`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_EXEC_ACT`(`EXECUTION_ID_` ASC, `ACT_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_RU_ACTI_TASK`(`TASK_ID_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_actinst
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_deadletter_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_deadletter_job`;
CREATE TABLE `act_ru_deadletter_job`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NOT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255)  NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000)  NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000)  NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64)  NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_CORRELATION_ID`(`CORRELATION_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_DJOB_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_DJOB_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_DJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_EXECUTION`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_PROC_DEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_deadletter_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_entitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_entitylink`;
CREATE TABLE `act_ru_entitylink`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `LINK_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_ENT_LNK_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC, `LINK_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_ENT_LNK_REF_SCOPE`(`REF_SCOPE_ID_` ASC, `REF_SCOPE_TYPE_` ASC, `LINK_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_ENT_LNK_ROOT_SCOPE`(`ROOT_SCOPE_ID_` ASC, `ROOT_SCOPE_TYPE_` ASC, `LINK_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_ENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC, `LINK_TYPE_` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_entitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_event_subscr
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_event_subscr`;
CREATE TABLE `act_ru_event_subscr`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `EVENT_TYPE_` varchar(255)  NOT NULL,
  `EVENT_NAME_` varchar(255)  NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64)  NULL DEFAULT NULL,
  `CONFIGURATION_` varchar(255)  NULL DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64)  NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EVENT_SUBSCR_CONFIG_`(`CONFIGURATION_` ASC) USING BTREE,
  INDEX `ACT_IDX_EVENT_SUBSCR_SCOPEREF_`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_FK_EVENT_EXEC`(`EXECUTION_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_event_subscr
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_execution
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_execution`;
CREATE TABLE `act_ru_execution`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255)  NULL DEFAULT NULL,
  `PARENT_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `SUPER_EXEC_` varchar(64)  NULL DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `ACT_ID_` varchar(255)  NULL DEFAULT NULL,
  `IS_ACTIVE_` tinyint NULL DEFAULT NULL,
  `IS_CONCURRENT_` tinyint NULL DEFAULT NULL,
  `IS_SCOPE_` tinyint NULL DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint NULL DEFAULT NULL,
  `IS_MI_ROOT_` tinyint NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int NULL DEFAULT NULL,
  `CACHED_ENT_STATE_` int NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `START_ACT_ID_` varchar(255)  NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NULL DEFAULT NULL,
  `START_USER_ID_` varchar(255)  NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255)  NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint NULL DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int NULL DEFAULT NULL,
  `TASK_COUNT_` int NULL DEFAULT NULL,
  `JOB_COUNT_` int NULL DEFAULT NULL,
  `TIMER_JOB_COUNT_` int NULL DEFAULT NULL,
  `SUSP_JOB_COUNT_` int NULL DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int NULL DEFAULT NULL,
  `EXTERNAL_WORKER_JOB_COUNT_` int NULL DEFAULT NULL,
  `VAR_COUNT_` int NULL DEFAULT NULL,
  `ID_LINK_COUNT_` int NULL DEFAULT NULL,
  `CALLBACK_ID_` varchar(255)  NULL DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `REFERENCE_ID_` varchar(255)  NULL DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255)  NULL DEFAULT NULL,
  `BUSINESS_STATUS_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EXEC_BUSKEY`(`BUSINESS_KEY_` ASC) USING BTREE,
  INDEX `ACT_IDC_EXEC_ROOT`(`ROOT_PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_EXEC_REF_ID_`(`REFERENCE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_EXE_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_EXE_PARENT`(`PARENT_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_EXE_SUPER`(`SUPER_EXEC_` ASC) USING BTREE,
  INDEX `ACT_FK_EXE_PROCDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_execution
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_external_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_external_job`;
CREATE TABLE `act_ru_external_job`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255)  NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255)  NULL DEFAULT NULL,
  `RETRIES_` int NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000)  NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000)  NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64)  NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EXTERNAL_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_EXTERNAL_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_EXTERNAL_JOB_CORRELATION_ID`(`CORRELATION_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_EJOB_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_EJOB_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_EJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXTERNAL_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_external_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_history_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_history_job`;
CREATE TABLE `act_ru_history_job`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255)  NULL DEFAULT NULL,
  `RETRIES_` int NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000)  NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000)  NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64)  NULL DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64)  NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_history_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_identitylink
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_identitylink`;
CREATE TABLE `act_ru_identitylink`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `GROUP_ID_` varchar(255)  NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NULL DEFAULT NULL,
  `USER_ID_` varchar(255)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_USER`(`USER_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_GROUP`(`GROUP_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_ATHRZ_PROCEDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_TSKASS_TASK`(`TASK_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_IDL_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_identitylink
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_job`;
CREATE TABLE `act_ru_job`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255)  NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255)  NULL DEFAULT NULL,
  `RETRIES_` int NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000)  NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000)  NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64)  NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_JOB_CORRELATION_ID`(`CORRELATION_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_JOB_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_JOB_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_JOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_FK_JOB_EXECUTION`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_JOB_PROC_DEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_suspended_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_suspended_job`;
CREATE TABLE `act_ru_suspended_job`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NOT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255)  NULL DEFAULT NULL,
  `RETRIES_` int NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000)  NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000)  NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64)  NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_CORRELATION_ID`(`CORRELATION_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_SJOB_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_SJOB_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_SJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_EXECUTION`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_PROC_DEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_suspended_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_task
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_task`;
CREATE TABLE `act_ru_task`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255)  NULL DEFAULT NULL,
  `NAME_` varchar(255)  NULL DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000)  NULL DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255)  NULL DEFAULT NULL,
  `OWNER_` varchar(255)  NULL DEFAULT NULL,
  `ASSIGNEE_` varchar(255)  NULL DEFAULT NULL,
  `DELEGATION_` varchar(64)  NULL DEFAULT NULL,
  `PRIORITY_` int NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  `FORM_KEY_` varchar(255)  NULL DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint NULL DEFAULT NULL,
  `VAR_COUNT_` int NULL DEFAULT NULL,
  `ID_LINK_COUNT_` int NULL DEFAULT NULL,
  `SUB_TASK_COUNT_` int NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TASK_CREATE`(`CREATE_TIME_` ASC) USING BTREE,
  INDEX `ACT_IDX_TASK_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_TASK_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_TASK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_FK_TASK_EXE`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_TASK_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_TASK_PROCDEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_task
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_timer_job
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_timer_job`;
CREATE TABLE `act_ru_timer_job`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `CATEGORY_` varchar(255)  NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255)  NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64)  NULL DEFAULT NULL,
  `ELEMENT_ID_` varchar(255)  NULL DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255)  NULL DEFAULT NULL,
  `CORRELATION_ID_` varchar(255)  NULL DEFAULT NULL,
  `RETRIES_` int NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64)  NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000)  NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000)  NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64)  NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_CORRELATION_ID`(`CORRELATION_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_DUEDATE`(`DUEDATE_` ASC) USING BTREE,
  INDEX `ACT_IDX_TJOB_SCOPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_TJOB_SUB_SCOPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_TJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_EXECUTION`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_PROC_DEF`(`PROC_DEF_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_timer_job
-- ----------------------------

-- ----------------------------
-- Table structure for act_ru_variable
-- ----------------------------
DROP TABLE IF EXISTS `act_ru_variable`;
CREATE TABLE `act_ru_variable`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `TYPE_` varchar(255)  NOT NULL,
  `NAME_` varchar(255)  NOT NULL,
  `EXECUTION_ID_` varchar(64)  NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64)  NULL DEFAULT NULL,
  `TASK_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255)  NULL DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64)  NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint NULL DEFAULT NULL,
  `TEXT_` varchar(4000)  NULL DEFAULT NULL,
  `TEXT2_` varchar(4000)  NULL DEFAULT NULL,
  `META_INFO_` varchar(4000)  NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_VAR_SCOPE_ID_TYPE`(`SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_IDX_RU_VAR_SUB_ID_TYPE`(`SUB_SCOPE_ID_` ASC, `SCOPE_TYPE_` ASC) USING BTREE,
  INDEX `ACT_FK_VAR_BYTEARRAY`(`BYTEARRAY_ID_` ASC) USING BTREE,
  INDEX `ACT_IDX_VARIABLE_TASK_ID`(`TASK_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_VAR_EXE`(`EXECUTION_ID_` ASC) USING BTREE,
  INDEX `ACT_FK_VAR_PROCINST`(`PROC_INST_ID_` ASC) USING BTREE,
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act_ru_variable
-- ----------------------------

-- ----------------------------
-- Table structure for flw_ru_batch
-- ----------------------------
DROP TABLE IF EXISTS `flw_ru_batch`;
CREATE TABLE `flw_ru_batch`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `TYPE_` varchar(64)  NOT NULL,
  `SEARCH_KEY_` varchar(255)  NULL DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255)  NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) NULL DEFAULT NULL,
  `STATUS_` varchar(255)  NULL DEFAULT NULL,
  `BATCH_DOC_ID_` varchar(64)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_ru_batch
-- ----------------------------

-- ----------------------------
-- Table structure for flw_ru_batch_part
-- ----------------------------
DROP TABLE IF EXISTS `flw_ru_batch_part`;
CREATE TABLE `flw_ru_batch_part`  (
  `ID_` varchar(64)  NOT NULL,
  `REV_` int NULL DEFAULT NULL,
  `BATCH_ID_` varchar(64)  NULL DEFAULT NULL,
  `TYPE_` varchar(64)  NOT NULL,
  `SCOPE_ID_` varchar(64)  NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64)  NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64)  NULL DEFAULT NULL,
  `SEARCH_KEY_` varchar(255)  NULL DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255)  NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NOT NULL,
  `COMPLETE_TIME_` datetime(3) NULL DEFAULT NULL,
  `STATUS_` varchar(255)  NULL DEFAULT NULL,
  `RESULT_DOC_ID_` varchar(64)  NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255)  NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `FLW_IDX_BATCH_PART`(`BATCH_ID_` ASC) USING BTREE,
  CONSTRAINT `FLW_FK_BATCH_PART_PARENT` FOREIGN KEY (`BATCH_ID_`) REFERENCES `flw_ru_batch` (`ID_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flw_ru_batch_part
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
