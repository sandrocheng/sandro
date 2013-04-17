.class public final Lcom/tencent/tmsecure/module/wupsession/WupConfig;
.super Ljava/lang/Object;


# static fields
.field public static final HOST_URL:Ljava/lang/String; = null

.field public static final KEY_GUID:Ljava/lang/String; = "guid"

.field public static REDIRECT_URL:Ljava/lang/String; = null

.field public static final RQ_BROWSER_CHECK:I = 0x29

.field public static final RQ_CHECK_LICENCE:I = 0x2a

.field public static final RQ_CHECK_URL:I = 0x27

.field public static final RQ_CHECK_URL_EX:I = 0x28

.field public static final RQ_GET_ADS:I = 0x11

.field public static final RQ_GET_ANALYSE_INFO:I = 0xb

.field public static final RQ_GET_BIND_PHONE_LIST:I = 0x2d

.field public static final RQ_GET_CATEGORY_LIST:I = 0x8

.field public static final RQ_GET_CHANGE_URL:I = 0x16

.field public static final RQ_GET_CONFIG:I = 0x17

.field public static final RQ_GET_CONFIG_V3:I = 0x18

.field public static final RQ_GET_CONFIG_V3_CPT:I = 0x19

.field public static final RQ_GET_GUID:I = 0x12

.field public static final RQ_GET_HOT_WORD:I = 0x13

.field public static final RQ_GET_MARK:I = 0x2b

.field public static final RQ_GET_MY_SOFT_LIST:I = 0xa

.field public static final RQ_GET_ORDER_FOR_REACT:I = 0x26

.field public static final RQ_GET_PK_USER_INFO:I = 0x30

.field public static final RQ_GET_QUERY_INFO:I = 0x21

.field public static final RQ_GET_QUERY_INFO_MULTI:I = 0x25

.field public static final RQ_GET_SOFT_INFO:I = 0x0

.field public static final RQ_GET_SOFT_LIST:I = 0x9

.field public static final RQ_GET_TIME:I = 0x10

.field public static final RQ_GET_TRAFFIC_CMD:I = 0x22

.field public static final RQ_GET_TRAFFIC_TEMPLATE:I = 0x20

.field public static final RQ_GET_UPDATES_V2:I = 0xc

.field public static final RQ_GET_VIRUS_INFOS:I = 0x7

.field public static final RQ_REPORT_ANTI_THEFT:I = 0x2c

.field public static final RQ_REPORT_CHANNEL_INFO:I = 0x5

.field public static final RQ_REPORT_DOWN_SOFT:I = 0xe

.field public static final RQ_REPORT_ERROR_MSG:I = 0x23

.field public static final RQ_REPORT_FBILLEGA_REASON:I = 0x4

.field public static final RQ_REPORT_LOCAL_NET:I = 0x24

.field public static final RQ_REPORT_MOBILE:I = 0x1a

.field public static final RQ_REPORT_NOTIFY_INFO:I = 0x15

.field public static final RQ_REPORT_PK_POSITION:I = 0x2f

.field public static final RQ_REPORT_PK_RESULT:I = 0x31

.field public static final RQ_REPORT_SMS:I = 0x1c

.field public static final RQ_REPORT_SOFT_ACTION:I = 0x14

.field public static final RQ_REPORT_SOFT_DESC:I = 0xf

.field public static final RQ_REPORT_SOFT_FEATURE:I = 0x1e

.field public static final RQ_REPORT_SOFT_TYPE:I = 0x1

.field public static final RQ_REPORT_SOFT_USAGE_INFO:I = 0x1f

.field public static final RQ_REPORT_TEL:I = 0x1d

.field public static final RQ_REPORT_TIPS_RES:I = 0xd

.field public static final RQ_REPORT_UNKNOW_SOFT_INFO:I = 0x3

.field public static final RQ_REPORT_USER_COMMENT:I = 0x2

.field public static final RQ_REPORT_VIRUS_LIB_UPDATE:I = 0x6

.field public static final RQ_REPORT_WBLIST:I = 0x1b

.field public static final RQ_SET_URGENT_INFO:I = 0x2e

.field private static a:Ljava/lang/String;

.field public static final gQua:Ljava/lang/String;

.field public static mWupParam:[Lbze;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Lbtl;

.field private f:LQQPIM/PhoneType;

.field private g:LQQPIM/SPhoneType;

.field private h:LQQPIM/UserInfo;

.field private i:LQQPIM/SUserInfo;

.field private j:LQQPIM/DeviceInfo;

.field private k:LQQPIM/MachineInfo;

.field private l:LQQPIM/SUIKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "host_url"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->HOST_URL:Ljava/lang/String;

    sput-object v2, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->REDIRECT_URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AQQSecure_GA_2_0/011201&ADR&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&V2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->gQua:Ljava/lang/String;

    sput-object v2, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    const/16 v0, 0x32

    new-array v0, v0, [Lbze;

    const/4 v1, 0x0

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getSoftInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportSoftType"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportUserComment"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportUnknowSoftInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportFBIllegaReason"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportChannelInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportVirusLibUpdate"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getVirusInfos"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getCategoryList"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getSoftList"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getMySoftList"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getAnalyseInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getUpdatesV2"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportTipsRes"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportDownSoft"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportSoftDesc"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getTime"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getADs"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getGuid"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getHotWord"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportSoftAction"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "reportNotifyInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "getChangeUrl"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lbze;

    const-string v3, "conf"

    const-string v4, "getConfig"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lbze;

    const-string v3, "conf"

    const-string v4, "getConfigV3"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lbze;

    const-string v3, "conf"

    const-string v4, "getConfigV3CPT"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lbze;

    const-string v3, "conf"

    const-string v4, "reportMobile"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lbze;

    const-string v3, "conf"

    const-string v4, "reportWBList"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lbze;

    const-string v3, "sms"

    const-string v4, "reportSms"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lbze;

    const-string v3, "sms"

    const-string v4, "reportTel"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lbze;

    const-string v3, "sms"

    const-string v4, "reportSoftFeature"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lbze;

    const-string v3, "report"

    const-string v4, "reportSoftUsageInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lbze;

    const-string v3, "traffic"

    const-string v4, "getTrafficTemplate"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lbze;

    const-string v3, "traffic"

    const-string v4, "getQueryInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lbze;

    const-string v3, "traffic"

    const-string v4, "getCloudOrder"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lbze;

    const-string v3, "traffic"

    const-string v4, "reportErrorMsg"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lbze;

    const-string v3, "traffic"

    const-string v4, "reportLocalNet"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lbze;

    const-string v3, "traffic"

    const-string v4, "getQueryInfo_Multi"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lbze;

    const-string v3, "traffic"

    const-string v4, "getOrderForReAct"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lbze;

    const-string v3, "check"

    const-string v4, "checkUrl"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lbze;

    const-string v3, "check"

    const-string v4, "checkUrlExt"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lbze;

    const-string v3, "info"

    const-string v4, "browerCheck"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lbze;

    const-string v3, "check"

    const-string v4, "getlicencedate"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lbze;

    const-string v3, "benchmark"

    const-string v4, "getMark"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lbze;

    const-string v3, "antitheft"

    const-string v4, "reportAntiTheft"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lbze;

    const-string v3, "antitheft"

    const-string v4, "getBindList"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lbze;

    const-string v3, "antitheft"

    const-string v4, "setUrgentInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lbze;

    const-string v3, "benchmark"

    const-string v4, "reportPKPosition"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lbze;

    const-string v3, "benchmark"

    const-string v4, "getPKUserInfo"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lbze;

    const-string v3, "benchmark"

    const-string v4, "reportPKResult"

    invoke-direct {v2, v3, v4}, Lbze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->mWupParam:[Lbze;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    new-instance v0, Lbtl;

    const-string v1, "wup"

    invoke-direct {v0, v1}, Lbtl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Lbtl;

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Lbtl;

    const-string v1, "guid"

    invoke-virtual {v0, v1, v2}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public static getFuncName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->mWupParam:[Lbze;

    aget-object v0, v0, p0

    iget-object v0, v0, Lbze;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getServantName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->mWupParam:[Lbze;

    aget-object v0, v0, p0

    iget-object v0, v0, Lbze;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final checkGuid()I
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Lbtl;

    const-string v4, "imei"

    invoke-virtual {v3, v4, v0}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Lbtl;

    const-string v4, "mac"

    invoke-virtual {v3, v4, v2}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_0
    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    if-nez v0, :cond_3

    new-instance v0, LQQPIM/DeviceInfo;

    invoke-direct {v0}, LQQPIM/DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setMac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setIccid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getAndoidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setAndroidid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setSdkversion(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setModel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setProduct(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/EnvUtil;->getDeviceInfoStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setNetfile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    sget-object v2, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setLguid(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getGuidFromServer(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/GUIDInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LQQPIM/GUIDInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const/16 v0, -0x7d1

    :goto_2
    if-eqz v0, :cond_4

    :goto_3
    return v0

    :cond_3
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    sget-object v2, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setLguid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->j:LQQPIM/DeviceInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, LQQPIM/DeviceInfo;->setMac(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Lbtl;

    const-string v2, "imei"

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Lbtl;

    const-string v2, "mac"

    iget-object v3, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Lbtl;

    const-string v2, "guid"

    sget-object v3, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->e:Lbtl;

    iget-object v0, v0, Lbtl;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public final getMachineInfo()LQQPIM/MachineInfo;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/MachineInfo;

    invoke-direct {v0}, LQQPIM/MachineInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    const-string v1, "lc"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getNetworkOperatorCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setSp(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    const-string v1, "product"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setProduct(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    const-string v1, "channel"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setChannelid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->getPhoneType()LQQPIM/PhoneType;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setPhonetype(LQQPIM/PhoneType;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setMachine(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/EnvUtil;->isBuildIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/MachineInfo;->setIsbuildin(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->k:LQQPIM/MachineInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/EnvUtil;->getRootStatus()I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/MachineInfo;->setIsroot(I)V

    goto :goto_1
.end method

.method public final getPhoneType()LQQPIM/PhoneType;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:LQQPIM/PhoneType;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/PhoneType;

    invoke-direct {v0}, LQQPIM/PhoneType;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:LQQPIM/PhoneType;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:LQQPIM/PhoneType;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/PhoneType;->setPhonetype(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:LQQPIM/PhoneType;

    const-string v1, "sub_platform"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/PhoneType;->setSubplatform(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->f:LQQPIM/PhoneType;

    return-object v0
.end method

.method public final getSPhoneType()LQQPIM/SPhoneType;
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:LQQPIM/SPhoneType;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SPhoneType;

    invoke-direct {v0}, LQQPIM/SPhoneType;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:LQQPIM/SPhoneType;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:LQQPIM/SPhoneType;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/SPhoneType;->setPhonetype(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->g:LQQPIM/SPhoneType;

    return-object v0
.end method

.method public final getSUIKey()LQQPIM/SUIKey;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/SUIKey;

    invoke-direct {v0}, LQQPIM/SUIKey;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    const-string v1, "lc"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    const-string v1, "product"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, LQQPIM/EProduct;->convert(I)LQQPIM/EProduct;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/EProduct;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    const-string v1, "softversion"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setType(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setOsversion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setMachineuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "screen="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, LQQPIM/SUIKey;->setMachineconf(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    const-string v1, "sub_platform"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setSubplatform(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    const-string v1, "channel"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setChannelid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/EnvUtil;->isBuildIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setIsbuildin(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->l:LQQPIM/SUIKey;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final getSUserInfo()LQQPIM/SUserInfo;
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rule_store.sys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getSmsCheckerConfInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    if-nez v1, :cond_1

    new-instance v1, LQQPIM/SUserInfo;

    invoke-direct {v1}, LQQPIM/SUserInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/SUserInfo;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, LQQPIM/SUserInfo;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    const-string v2, "lc"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/SUserInfo;->setLc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    const-string v2, "softversion"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/SUserInfo;->setVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    const-string v2, "build"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, LQQPIM/SUserInfo;->setBuildno(I)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    const-string v2, "product"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, LQQPIM/SUserInfo;->setProductid(I)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    invoke-virtual {v0}, LQQPIM/ConfInfo;->getTimestamp()I

    move-result v0

    invoke-virtual {v1, v0}, LQQPIM/SUserInfo;->setRuletime(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    iget-object v2, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, LQQPIM/SUserInfo;->setImei(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->i:LQQPIM/SUserInfo;

    invoke-virtual {v0}, LQQPIM/ConfInfo;->getTimestamp()I

    move-result v0

    invoke-virtual {v1, v0}, LQQPIM/SUserInfo;->setRuletime(I)V

    goto :goto_0
.end method

.method public final getUserInfo()LQQPIM/UserInfo;
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    if-nez v0, :cond_3

    new-instance v0, LQQPIM/UserInfo;

    invoke-direct {v0}, LQQPIM/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    const-string v1, "lc"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    const-string v1, "channel"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setChannelid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setUa(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    const-string v1, "product"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setProduct(I)V

    const-string v0, "pversion"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v2

    const-string v0, "cversion"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    const-string v0, "hotfix"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v0

    if-nez v2, :cond_0

    const-string v6, "softversion"

    invoke-static {v6}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[\\.]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    aget-object v0, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iget-object v6, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    new-instance v7, LQQPIM/ProductVersion;

    invoke-direct {v7, v2, v1, v0}, LQQPIM/ProductVersion;-><init>(III)V

    invoke-virtual {v6, v7}, LQQPIM/UserInfo;->setVersion(LQQPIM/ProductVersion;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v0

    sget-object v2, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-ne v0, v2, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setCt(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/EnvUtil;->isBuildIn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, LQQPIM/UserInfo;->setIsbuildin(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/EnvUtil;->getRootStatus()I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setIsroot(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setSdkversion(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    const-string v1, "build"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setBuildno(I)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    return-object v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    sget-object v1, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/EnvUtil;->getRootStatus()I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setIsroot(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupConfig;->h:LQQPIM/UserInfo;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v2, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-ne v1, v2, :cond_4

    :goto_3
    invoke-virtual {v0, v3}, LQQPIM/UserInfo;->setCt(I)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method
