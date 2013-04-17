.class public final Lge;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:[Lgf;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lex;

.field private h:LQQPIM/PhoneType;

.field private i:LQQPIM/UserInfo;

.field private j:LQQPIM/DeviceInfo;

.field private k:LQQPIM/SUIKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "host_url"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lge;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AQQSecure_GA_2_0/011201&ADR&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&V2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lge;->b:Ljava/lang/String;

    const/16 v0, 0x32

    new-array v0, v0, [Lgf;

    const/4 v1, 0x0

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getSoftInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportSoftType"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportUserComment"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportUnknowSoftInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportFBIllegaReason"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportChannelInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportVirusLibUpdate"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getVirusInfos"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getCategoryList"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getSoftList"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getMySoftList"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getAnalyseInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getUpdatesV2"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportTipsRes"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportDownSoft"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportSoftDesc"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getTime"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getADs"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getGuid"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getHotWord"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportSoftAction"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "reportNotifyInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "getChangeUrl"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lgf;

    const-string v3, "conf"

    const-string v4, "getConfig"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lgf;

    const-string v3, "conf"

    const-string v4, "getConfigV3"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lgf;

    const-string v3, "conf"

    const-string v4, "getConfigV3CPT"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lgf;

    const-string v3, "conf"

    const-string v4, "reportMobile"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lgf;

    const-string v3, "conf"

    const-string v4, "reportWBList"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lgf;

    const-string v3, "sms"

    const-string v4, "reportSms"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lgf;

    const-string v3, "sms"

    const-string v4, "reportTel"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lgf;

    const-string v3, "sms"

    const-string v4, "reportSoftFeature"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lgf;

    const-string v3, "report"

    const-string v4, "reportSoftUsageInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lgf;

    const-string v3, "traffic"

    const-string v4, "getTrafficTemplate"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lgf;

    const-string v3, "traffic"

    const-string v4, "getQueryInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lgf;

    const-string v3, "traffic"

    const-string v4, "getCloudOrder"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lgf;

    const-string v3, "traffic"

    const-string v4, "reportErrorMsg"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lgf;

    const-string v3, "traffic"

    const-string v4, "reportLocalNet"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lgf;

    const-string v3, "traffic"

    const-string v4, "getQueryInfo_Multi"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lgf;

    const-string v3, "traffic"

    const-string v4, "getOrderForReAct"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lgf;

    const-string v3, "check"

    const-string v4, "checkUrl"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lgf;

    const-string v3, "check"

    const-string v4, "checkUrlExt"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lgf;

    const-string v3, "info"

    const-string v4, "browerCheck"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lgf;

    const-string v3, "check"

    const-string v4, "getlicencedate"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lgf;

    const-string v3, "benchmark"

    const-string v4, "getMark"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lgf;

    const-string v3, "antitheft"

    const-string v4, "reportAntiTheft"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lgf;

    const-string v3, "antitheft"

    const-string v4, "getBindList"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lgf;

    const-string v3, "antitheft"

    const-string v4, "setUrgentInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lgf;

    const-string v3, "benchmark"

    const-string v4, "reportPKPosition"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lgf;

    const-string v3, "benchmark"

    const-string v4, "getPKUserInfo"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lgf;

    const-string v3, "benchmark"

    const-string v4, "reportPKResult"

    invoke-direct {v2, v3, v4}, Lgf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lge;->c:[Lgf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lge;->d:Ljava/lang/String;

    iput-object v1, p0, Lge;->e:Ljava/lang/String;

    iput-object p1, p0, Lge;->f:Landroid/content/Context;

    new-instance v0, Lex;

    const-string v2, "wup"

    invoke-direct {v0, v2}, Lex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lge;->g:Lex;

    sget-object v0, Lge;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lge;->g:Lex;

    const-string v2, "guid"

    invoke-virtual {v0, v2, v1}, Lex;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lge;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lge;->d:Ljava/lang/String;

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iput-object v0, p0, Lge;->e:Ljava/lang/String;

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lge;->c:[Lgf;

    aget-object v0, v0, p0

    iget-object v0, v0, Lgf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lge;->c:[Lgf;

    aget-object v0, v0, p0

    iget-object v0, v0, Lgf;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()LQQPIM/PhoneType;
    .locals 2

    iget-object v0, p0, Lge;->h:LQQPIM/PhoneType;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/PhoneType;

    invoke-direct {v0}, LQQPIM/PhoneType;-><init>()V

    iput-object v0, p0, Lge;->h:LQQPIM/PhoneType;

    iget-object v0, p0, Lge;->h:LQQPIM/PhoneType;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/PhoneType;->setPhonetype(I)V

    iget-object v0, p0, Lge;->h:LQQPIM/PhoneType;

    const-string v1, "sub_platform"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/PhoneType;->setSubplatform(I)V

    :cond_0
    iget-object v0, p0, Lge;->h:LQQPIM/PhoneType;

    return-object v0
.end method

.method public final b()LQQPIM/UserInfo;
    .locals 9

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    if-nez v0, :cond_8

    new-instance v0, LQQPIM/UserInfo;

    invoke-direct {v0}, LQQPIM/UserInfo;-><init>()V

    iput-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    iget-object v1, p0, Lge;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->i:LQQPIM/UserInfo;

    const-string v0, "lc"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setLc(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->i:LQQPIM/UserInfo;

    const-string v0, "channel"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setChannelid(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->i:LQQPIM/UserInfo;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setUa(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

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

    if-nez v2, :cond_3

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

    if-lt v7, v8, :cond_3

    aget-object v0, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_3
    iget-object v6, p0, Lge;->i:LQQPIM/UserInfo;

    new-instance v7, LQQPIM/ProductVersion;

    invoke-direct {v7, v2, v1, v0}, LQQPIM/ProductVersion;-><init>(III)V

    invoke-virtual {v6, v7}, LQQPIM/UserInfo;->setVersion(LQQPIM/ProductVersion;)V

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    sget-object v1, Lge;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setGuid(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->i:LQQPIM/UserInfo;

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->i:LQQPIM/UserInfo;

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v0

    sget-object v2, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-ne v0, v2, :cond_6

    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setCt(I)V

    iget-object v1, p0, Lge;->i:LQQPIM/UserInfo;

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    invoke-static {v0}, La;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, LQQPIM/UserInfo;->setIsbuildin(I)V

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    sget-boolean v1, Lgl;->a:Z

    if-nez v1, :cond_5

    invoke-static {}, Lgl;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {v0, v5}, LQQPIM/UserInfo;->setIsroot(I)V

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setSdkversion(I)V

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    const-string v1, "build"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setBuildno(I)V

    :goto_2
    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    return-object v0

    :cond_6
    move v0, v4

    goto :goto_0

    :cond_7
    move v0, v5

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    sget-object v1, Lge;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setGuid(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    iget-object v1, p0, Lge;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    sget-boolean v1, Lgl;->a:Z

    if-nez v1, :cond_9

    invoke-static {}, Lgl;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    move v5, v4

    :cond_9
    invoke-virtual {v0, v5}, LQQPIM/UserInfo;->setIsroot(I)V

    iget-object v0, p0, Lge;->i:LQQPIM/UserInfo;

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v2, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-ne v1, v2, :cond_a

    :goto_3
    invoke-virtual {v0, v3}, LQQPIM/UserInfo;->setCt(I)V

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_3
.end method

.method public final c()LQQPIM/SUIKey;
    .locals 5

    iget-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    if-nez v0, :cond_7

    new-instance v0, LQQPIM/SUIKey;

    invoke-direct {v0}, LQQPIM/SUIKey;-><init>()V

    iput-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    iget-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    sget-object v1, Lge;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setGuid(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->k:LQQPIM/SUIKey;

    const-string v0, "lc"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    const-string v1, "product"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, LQQPIM/EProduct;->convert(I)LQQPIM/EProduct;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/EProduct;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->k:LQQPIM/SUIKey;

    const-string v0, "softversion"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    iget-object v1, p0, Lge;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->k:LQQPIM/SUIKey;

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setType(I)V

    iget-object v1, p0, Lge;->k:LQQPIM/SUIKey;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setOsversion(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->k:LQQPIM/SUIKey;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setMachineuid(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lge;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lge;->k:LQQPIM/SUIKey;

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

    iget-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    const-string v1, "sub_platform"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setSubplatform(I)V

    iget-object v1, p0, Lge;->k:LQQPIM/SUIKey;

    const-string v0, "channel"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setChannelid(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->k:LQQPIM/SUIKey;

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    invoke-static {v0}, La;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, LQQPIM/SUIKey;->setIsbuildin(I)V

    :goto_1
    iget-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lge;->k:LQQPIM/SUIKey;

    iget-object v1, p0, Lge;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final d()I
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lge;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lge;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, ""

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v5, p0, Lge;->g:Lex;

    const-string v6, "imei"

    invoke-virtual {v5, v6, v1}, Lex;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lge;->d:Ljava/lang/String;

    iget-object v5, p0, Lge;->g:Lex;

    const-string v6, "mac"

    invoke-virtual {v5, v6, v0}, Lex;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lge;->e:Ljava/lang/String;

    iget-object v5, p0, Lge;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lge;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    :cond_1
    iput-object v1, p0, Lge;->d:Ljava/lang/String;

    iput-object v0, p0, Lge;->e:Ljava/lang/String;

    move v0, v3

    :goto_2
    if-eqz v0, :cond_d

    :cond_2
    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    if-nez v0, :cond_b

    new-instance v0, LQQPIM/DeviceInfo;

    invoke-direct {v0}, LQQPIM/DeviceInfo;-><init>()V

    iput-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lge;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->j:LQQPIM/DeviceInfo;

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, v0}, LQQPIM/DeviceInfo;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lge;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setMac(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->j:LQQPIM/DeviceInfo;

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, LQQPIM/DeviceInfo;->setIccid(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setAndroidid(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setSdkversion(I)V

    iget-object v1, p0, Lge;->j:LQQPIM/DeviceInfo;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    invoke-virtual {v1, v0}, LQQPIM/DeviceInfo;->setModel(Ljava/lang/String;)V

    iget-object v1, p0, Lge;->j:LQQPIM/DeviceInfo;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    invoke-virtual {v1, v0}, LQQPIM/DeviceInfo;->setProduct(Ljava/lang/String;)V

    iget-object v5, p0, Lge;->j:LQQPIM/DeviceInfo;

    iget-object v0, p0, Lge;->f:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-static {v0}, La;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MODEL "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v6, v0, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ANDROID "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CPU "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "resolution "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v0, Lfn;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lfn;

    invoke-virtual {v0}, Lfn;->a()Lfk;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ram "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lfk;->a()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "rom "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lex;

    const-string v3, "NetInterfaceManager"

    invoke-direct {v1, v3}, Lex;-><init>(Ljava/lang/String;)V

    const-string v3, "upload_config_des"

    invoke-virtual {v1, v3, v4}, Lex;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    invoke-virtual {v5, v0}, LQQPIM/DeviceInfo;->setNetfile(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    sget-object v1, Lge;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setLguid(Ljava/lang/String;)V

    :goto_4
    iget-object v1, p0, Lge;->j:LQQPIM/DeviceInfo;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lgg;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lgg;

    invoke-virtual {v0, v1, v3}, Lgg;->a(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/GUIDInfo;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, LQQPIM/GUIDInfo;->getGuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lge;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lge;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_9
    const/16 v0, -0x7d1

    :goto_5
    if-eqz v0, :cond_c

    :goto_6
    return v0

    :cond_a
    move-object v1, v0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    sget-object v1, Lge;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setLguid(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lge;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setImei(Ljava/lang/String;)V

    iget-object v0, p0, Lge;->j:LQQPIM/DeviceInfo;

    iget-object v1, p0, Lge;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, LQQPIM/DeviceInfo;->setMac(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lge;->g:Lex;

    const-string v1, "imei"

    iget-object v3, p0, Lge;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lex;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lge;->g:Lex;

    const-string v1, "mac"

    iget-object v3, p0, Lge;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lex;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lge;->g:Lex;

    const-string v1, "guid"

    sget-object v3, Lge;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lex;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lge;->g:Lex;

    iget-object v0, v0, Lex;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    move v0, v2

    goto :goto_6

    :cond_e
    move v0, v1

    goto :goto_5

    :cond_f
    move-object v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v2

    goto/16 :goto_2

    :cond_11
    move-object v0, v4

    goto/16 :goto_1
.end method
