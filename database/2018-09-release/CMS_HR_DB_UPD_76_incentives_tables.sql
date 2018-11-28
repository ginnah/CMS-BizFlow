--------------------------------------------------------
--  DDL for Table Incentives
--------------------------------------------------------
CREATE TABLE INCENTIVES_COM
(
    PROC_ID          NUMBER(10),
    INCEN_TYPE       VARCHAR2(10),
    REQ_NUM          VARCHAR2(15),
    REQ_TYPE         VARCHAR2(20),
    ADMIN_CODE       VARCHAR2(10),
    ORG_NAME         VARCHAR2(100),
    -- candidate
    CANDI_NAME       VARCHAR2(150),
    CANDI_FIRST      VARCHAR2(50),
    CANDI_MIDDLE     VARCHAR2(50),
    CANDI_LAST       VARCHAR2(50),
    -- selectingOfficial
    SO_NAME          VARCHAR2(100),
    SO_EMAIL         VARCHAR2(100),
    SO_ID            VARCHAR2(10),
    -- executiveOfficers
    XO1_NAME         VARCHAR2(100),
    XO1_EMAIL        VARCHAR2(100),
    XO1_ID           VARCHAR2(10),
    XO2_NAME         VARCHAR2(100),
    XO2_EMAIL        VARCHAR2(100),
    XO2_ID           VARCHAR2(10),
    XO3_NAME         VARCHAR2(100),
    XO3_EMAIL        VARCHAR2(100),
    XO3_ID           VARCHAR2(10),
    -- hrLiaisons
    HRL1_NAME        VARCHAR2(100),
    HRL1_EMAIL       VARCHAR2(100),
    HRL1_ID          VARCHAR2(10),
    HRL2_NAME        VARCHAR2(100),
    HRL2_EMAIL       VARCHAR2(100),
    HRL2_ID          VARCHAR2(10),
    HRL3_NAME        VARCHAR2(100),
    HRL3_EMAIL       VARCHAR2(100),
    HRL3_ID          VARCHAR2(10),
    -- hrSpecialist
    HRS1_NAME        VARCHAR2(100),
    HRS1_EMAIL       VARCHAR2(100),
    HRS1_ID          VARCHAR2(10),
    -- hrSpecialist2
    HRS2_NAME        VARCHAR2(100),
    HRS2_EMAIL       VARCHAR2(100),
    HRS2_ID          VARCHAR2(10),
    -- TABG Division Director
    DGHO_NAME        VARCHAR2(100),
    DGHO_EMAIL       VARCHAR2(100),
    DGHO_ID          VARCHAR2(10),
    -- TABG Director
    TABG_NAME        VARCHAR2(100),
    TABG_EMAIL       VARCHAR2(100),
    TABG_ID          VARCHAR2(10),
    -- Position
    POS_TITLE        VARCHAR2(140),
    PAY_PLAN         VARCHAR2(5),
    SERIES           VARCHAR2(140),
    GRADE            VARCHAR2(5),
    POS_DESC_NUM     VARCHAR2(20),
    TYPE_OF_APPT     VARCHAR2(20),
    -- dutyStation
    DS_STATE         VARCHAR2(2),
    DS_CITY          VARCHAR2(50),
    -- cancellation
    CANCEL_RESAON    VARCHAR2(25),
    CANCEL_USER_NAME VARCHAR2(100),
    CANCEL_USER_ID   VARCHAR2(10)
);

CREATE UNIQUE INDEX INCENTIVES_COM_UK1 ON INCENTIVES_COM (PROC_ID);
CREATE INDEX INCENTIVES_COM_IX1 ON INCENTIVES_COM (INCEN_TYPE);
CREATE INDEX INCENTIVES_COM_IX2 ON INCENTIVES_COM (REQ_NUM);


CREATE TABLE INCENTIVES_PCA
(
    PROC_ID              NUMBER(10),
    PCA_TYPE             VARCHAR2(10),
    CANDI_AGREE          VARCHAR2(5),
    -- Chief Physician
    CP_NAME              VARCHAR2(100),
    CP_EMAIL             VARCHAR2(100),
    CP_ID                VARCHAR2(10),
    -- OFM Director
    OFM_NAME             VARCHAR2(100),
    OFM_EMAIL            VARCHAR2(100),
    OFM_ID               VARCHAR2(10),
    --  Does the PCA require the Office of the Administrator approval?
    ADMIN_APPROVAL_REQ   VARCHAR2(5),
    -- OHC Director
    OHC_NAME             VARCHAR2(100),
    OHC_EMAIL            VARCHAR2(100),
    OHC_ID               VARCHAR2(10),
    -- Office Admin Director
    OADMIN_NAME          VARCHAR2(100),
    OADMIN_EMAIL         VARCHAR2(100),
    OADMIN_ID            VARCHAR2(10),
    -- Position
    WORK_SCHEDULE        VARCHAR2(15),
    HOURS_PER_WEEK       VARCHAR2(5),
    BD_CERT_REQ          VARCHAR2(5),
    LIC_INFO             VARCHAR2(140),
    -- licenseState
    LIC_STATE1_STATE     VARCHAR2(2),
    LIC_STATE1_NAME      VARCHAR2(50),
    LIC_STATE1_EXP_DATE  VARCHAR2(10),
    LIC_STATE2_STATE     VARCHAR2(2),
    LIC_STATE2_NAME      VARCHAR2(50),
    LIC_STATE2_EXP_DATE  VARCHAR2(10),
    -- boardCertSpecialty
    BD_CERT_SPEC1        VARCHAR2(30),
    BD_CERT_SPEC2        VARCHAR2(30),
    BD_CERT_SPEC3        VARCHAR2(30),
    BD_CERT_SPEC4        VARCHAR2(30),
    BD_CERT_SPEC5        VARCHAR2(30),
    BD_CERT_SPEC6        VARCHAR2(30),
    BD_CERT_SPEC7        VARCHAR2(30),
    BD_CERT_SPEC8        VARCHAR2(30),
    BD_CERT_SPEC9        VARCHAR2(30),
    BD_CERT_SPEC_OTHER   VARCHAR2(140),
    -- allowance
    LEN_SERVED           VARCHAR2(25),
    LEN_SERVICE          VARCHAR2(2),
    ALW_CATEGORY         VARCHAR2(15),
    ALW_BD_CERT          VARCHAR2(15),
    ALW_MULTI_YEAR_AGMT  VARCHAR2(15),
    ALW_MISSION_SC       VARCHAR2(15),
    ALW_TOTAL            VARCHAR2(15),
    ALW_TOTAL_PAYABLE    VARCHAR2(15),
    -- Remarks
    DETAIL_REMARKS       VARCHAR2(500),
    -- Review
    RVW_SO_NAME          VARCHAR2(100),
    RVW_SO_ID            VARCHAR2(10),
    RVW_SO_DATE          VARCHAR2(10),
    RVW_DGHO_NAME        VARCHAR2(100),
    RVW_DGHO_ID          VARCHAR2(10),
    RVW_DGHO_DATE        VARCHAR2(10),
    RVW_CP_NAME          VARCHAR2(100),
    RVW_CP_ID            VARCHAR2(10),
    RVW_CP_DATE          VARCHAR2(10),
    RVW_OFM_NAME         VARCHAR2(100),
    RVW_OFM_ID           VARCHAR2(10),
    RVW_OFM_DATE         VARCHAR2(10),
    RVW_TABG_NAME        VARCHAR2(100),
    RVW_TABG_ID          VARCHAR2(10),
    RVW_TABG_DATE        VARCHAR2(10),
    RVW_OHC_NAME         VARCHAR2(100),
    RVW_OHC_ID           VARCHAR2(10),
    RVW_OHC_DATE         VARCHAR2(10),
    -- Approvals
    APPROVAL_TABG_NAME   VARCHAR2(100),
    APPROVAL_TABG_ID     VARCHAR2(10),
    APPROVAL_TABG_DATE   VARCHAR2(10),
    APPROVAL_OADMIN_NAME VARCHAR2(100),
    APPROVAL_OADMIN_ID   VARCHAR2(10),
    APPROVAL_OADMIN_DATE VARCHAR2(10)
);


CREATE UNIQUE INDEX INCENTIVES_PCA_UK1 ON INCENTIVES_PCA (PROC_ID);

CREATE TABLE INCENTIVES_SAM
(
    PROC_ID                        NUMBER(10),
    -- Details
    INIT_SALARY_GRADE              VARCHAR2(5),
    INIT_SALARY_STEP               VARCHAR2(5),
    INIT_SALARY_SALARY_PER_ANNUM   VARCHAR2(20),
    INIT_SALARY_LOCALITY_PAY_SCALE VARCHAR2(200),
    SUPPORT_SAM                    VARCHAR2(5),
    RCMD_SALARY_GRADE              VARCHAR2(5),
    RCMD_SALARY_STEP               VARCHAR2(5),
    RCMD_SALARY_SALARY_PER_ANNUM   VARCHAR2(20),
    RCMD_SALARY_LOCALITY_PAY_SCALE VARCHAR2(200),

    SELECTEE_SALARY_PER_ANNUM      VARCHAR2(20),
    SELECTEE_SALARY_TYPE           VARCHAR2(25),
    SELECTEE_BONUS                 VARCHAR2(20),
    SELECTEE_BENEFITS              VARCHAR2(500),
    SELECTEE_TOTAL_COMPENSATION    VARCHAR2(20),
    SUP_DOC_REQ_DATE               VARCHAR2(10),
    SUP_DOC_RCV_DATE               VARCHAR2(10),
    -- Justification
    JUSTIFICATION_SUPER_QUAL_DESC  VARCHAR2(4000),
    JUSTIFICATION_QUAL_COMP_DESC   VARCHAR2(4000),
    JUSTIFICATION_PAY_EQUITY_DESC  VARCHAR2(4000),
    JUSTIFICATION_EXIST_PKG_DESC   VARCHAR2(4000),
    JUSTIFICATION_EXPLAIN_CONSID   VARCHAR2(4000),
    -- Review
    SELECT_MEET_ELIGIBILITY        VARCHAR2(100),
    SELECT_MEET_CRITERIA           VARCHAR2(100),
    SUPERIOR_QUAL_REASON           VARCHAR2(100),
    OTHER_FACTORS                  VARCHAR2(140),
    SPL_AGENCY_NEED_RSN            VARCHAR2(140),
    SPL_AGENCY_NEED_RSN_ESS        VARCHAR2(140),
    QUAL_REAPPT                    VARCHAR2(50),
    OTHER_EXCEPTS                  VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR1          VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR2          VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR3          VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR4          VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR5          VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR6          VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR7         VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR8         VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR9         VARCHAR2(140),
    BASIC_PAY_RATE_FACTOR10          VARCHAR2(140),
    OTHER_RLVNT_FACTOR             VARCHAR2(140),
    OTHER_REQ_JUST_APVD            VARCHAR2(5),
    OTHER_REQ_SUFF_INFO_PRVD       VARCHAR2(5),
    OTHER_REQ_INCEN_REQD           VARCHAR2(5),
    OTHER_REQ_DOC_PRVD             VARCHAR2(5),
    HRS_RVW_CERT                   VARCHAR2(100),
    HRS_NOT_SPT_RSN                VARCHAR2(100),
    RVW_HRS                        VARCHAR2(100),
    HRS_RVW_DATE                   VARCHAR2(10),
    RCMD_GRADE                     VARCHAR2(5),
    RCMD_STEP                      VARCHAR2(5),
    RCMD_SALARY_PER_ANNUM          VARCHAR2(20),
    RCMD_LOCALITY_PAY_SCALE        VARCHAR2(200),
    RCMD_INC_DEC_AMOUNT            VARCHAR2(20),
    RCMD_PERC_DIFF                 VARCHAR2(10),
    OHC_APPRO_REQ                  VARCHAR2(5),
    RCMD_APPRO_OHC_NAME             VARCHAR2(100),
    RCMD_APPRO_OHC_EMAIL    VARCHAR2(100),
    RCMD_APPRO_OHC_ID   VARCHAR2(10),
    RVW_REMARKS                    VARCHAR2(500),
    -- Approvals
    APPROVAL_SO_VALUE              VARCHAR2(10),
    APPROVAL_SO                    VARCHAR2(100),
    APPROVAL_SO_RESP_DATE          VARCHAR2(10),
    APPROVAL_DGHO_VALUE            VARCHAR2(10),
    APPROVAL_DGHO                  VARCHAR2(100),
    APPROVAL_DGHO_RESP_DATE        VARCHAR2(10),
    APPROVAL_TABG_VALUE            VARCHAR2(10),
    APPROVAL_TABG                  VARCHAR2(100),
    APPROVAL_TABG_RESP_DATE        VARCHAR2(10),
    APPROVAL_OHC_VALUE             VARCHAR2(10),
    APPROVAL_OHC                   VARCHAR2(100),
    APPROVAL_OHC_RESP_DATE         VARCHAR2(10),
    APPROVER_NOTES                 VARCHAR2(500)
);

CREATE UNIQUE INDEX INCENTIVES_SAM_UK1 ON INCENTIVES_SAM (PROC_ID);


CREATE TABLE INCENTIVES_LE
(
    PROC_ID                   NUMBER(10),
    -- Details
    INIT_ANN_LA_RATE          VARCHAR2(10),
    SUPPORT_LE                VARCHAR2(5),
    PROPS_ANN_LA_RATE         VARCHAR2(10),
    -- Justification
    JUSTIFICATION_SKILL_EXP   VARCHAR2(4000),
    JUSTIFICATION_AGENCY_GOAL VARCHAR2(4000),
    -- Review
    SELECTEE_ELIGIBILITY      VARCHAR2(100),
    HRS_RVW_CERT              VARCHAR2(100),
    HRS_NOT_SPT_RSN           VARCHAR2(100),
    RVW_HRS                   VARCHAR2(100),
    HRS_RVW_DATE              VARCHAR2(10),
    RCMD_LA_RATE              VARCHAR2(10),
    -- Approvals
    APPROVAL_SO_VALUE         VARCHAR2(10),
    APPROVAL_SO               VARCHAR2(100),
    APPROVAL_SO_RESP_DATE     VARCHAR2(10),
    APPROVAL_DGHO_VALUE       VARCHAR2(10),
    APPROVAL_DGHO             VARCHAR2(100),
    APPROVAL_DGHO_RESP_DATE   VARCHAR2(10),
    APPROVAL_TABG_VALUE       VARCHAR2(10),
    APPROVAL_TABG             VARCHAR2(100),
    APPROVAL_TABG_RESP_DATE   VARCHAR2(10)
);

CREATE UNIQUE INDEX INCENTIVES_LE_UK1 ON INCENTIVES_LE (PROC_ID);


GRANT SELECT, INSERT, UPDATE, DELETE ON HHS_CMS_HR.INCENTIVES_COM TO HHS_CMS_HR_RW_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON HHS_CMS_HR.INCENTIVES_PCA TO HHS_CMS_HR_RW_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON HHS_CMS_HR.INCENTIVES_SAM TO HHS_CMS_HR_RW_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON HHS_CMS_HR.INCENTIVES_LE TO HHS_CMS_HR_RW_ROLE;

GRANT SELECT, INSERT, UPDATE, DELETE ON HHS_CMS_HR.INCENTIVES_COM TO HHS_CMS_HR_DEV_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON HHS_CMS_HR.INCENTIVES_PCA TO HHS_CMS_HR_DEV_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON HHS_CMS_HR.INCENTIVES_SAM TO HHS_CMS_HR_DEV_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON HHS_CMS_HR.INCENTIVES_LE TO HHS_CMS_HR_DEV_ROLE;
