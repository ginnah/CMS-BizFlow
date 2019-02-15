ALTER TABLE 
   ERLR_GEN
MODIFY 
(    
   GEN_CMS_PRIMARY_REP_ID  NVARCHAR2(255)   
);

COMMENT ON COLUMN ERLR_GEN.GEN_CMS_PRIMARY_REP_ID IS 'CMS Primary representative name';

ALTER TABLE 
   ERLR_CNDT_ISSUE
MODIFY 
(    
   CI_APPROVAL_NAME  NVARCHAR2(255),
   CI_APPROVAL_NAME_2  NVARCHAR2(255),
   CI_DECIDING_OFFCL  NVARCHAR2(255),
   CI_SUSP_DECIDING_OFFCL_NAME  NVARCHAR2(255),
   CI_DECIDING_OFFCL_NAME  NVARCHAR2(255)
);

COMMENT ON COLUMN ERLR_CNDT_ISSUE.CI_APPROVAL_NAME IS 'Approving Official name for admin leave investigatory';
COMMENT ON COLUMN ERLR_CNDT_ISSUE.CI_APPROVAL_NAME_2 IS 'Approving Official name for admin leave notice';
COMMENT ON COLUMN ERLR_CNDT_ISSUE.CI_DECIDING_OFFCL_NAME IS 'Deciding Official name';
COMMENT ON COLUMN ERLR_CNDT_ISSUE.CI_SUSP_DECIDING_OFFCL_NAME IS 'Deciding Official name';
COMMENT ON COLUMN ERLR_CNDT_ISSUE.CI_DECIDING_OFFCL IS 'Deciding Official name';

ALTER TABLE 
   ERLR_GRIEVANCE
MODIFY 
(    
   GI_IND_MANAGER  NVARCHAR2(255),
   GI_ADMIN_OFFCL_1  NVARCHAR2(255),
   GI_ADMIN_OFFCL_2  NVARCHAR2(255)
);

ALTER TABLE 
   ERLR_INFO_REQUEST
MODIFY 
(    
   IR_CMS_REQUESTER_NAME  NVARCHAR2(255)
);

ALTER TABLE 
   ERLR_PERF_ISSUE
MODIFY 
(    
   PI_RMV_FIN_DECIDING_OFC  NVARCHAR2(255),
   PI_PIP_DECIDING_OFFICAL  NVARCHAR2(255),
   PI_DMTN_FIN_DECIDING_OFC  NVARCHAR2(255)
);

ALTER TABLE 
   ERLR_PROB_ACTION
MODIFY 
(    
   PPA_DECIDING_OFFCL  NVARCHAR2(255),
   PPA_TERM_DECIDING_OFFCL_NAME  NVARCHAR2(255)   
);