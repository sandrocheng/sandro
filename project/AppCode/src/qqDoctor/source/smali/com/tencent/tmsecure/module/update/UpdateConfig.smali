.class public final Lcom/tencent/tmsecure/module/update/UpdateConfig;
.super Ljava/lang/Object;


# static fields
.field public static final BLACKLIST_KILL_PROCESS_NAME:Ljava/lang/String; = null

.field public static final BLACKLIST_ROM_NAME:Ljava/lang/String; = null

.field public static final BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String; = null

.field public static final CAMERA_SOFTWARE_LIST_NAME:Ljava/lang/String; = null

.field public static final DEEPCLEAN_SOFTWARE_LIST_NAME:Ljava/lang/String; = null

.field public static final DEEPCLEAN_SOFT_PATH_LIST_NAME:Ljava/lang/String; = null

.field public static final FILE_NAMES:[Ljava/lang/String; = null

.field public static final LOCATION_NAME:Ljava/lang/String; = "nldb.sdb"

.field public static final NOTKILL_LIST_KILL_PROCESSES_NAME:Ljava/lang/String; = null

.field public static final PATCH_SUFIX:Ljava/lang/String; = ".patch"

.field public static final PERMIS_MONITOR_LIST_NAME:Ljava/lang/String; = null

.field public static final PRIVACYLOCKLIST_USUAL_NAME:Ljava/lang/String; = null

.field public static final ROM_THIRDPART_NAME:Ljava/lang/String; = null

.field public static final SMS_CHECKER_NAME:Ljava/lang/String; = "rule_store.sys"

.field public static final TRAFFIC_MONITOR_CONFIG_NAME:Ljava/lang/String; = "net_interface_type_traffic_stat.dat"

.field public static final TRUST_URLS_NAME:Ljava/lang/String; = "trusturls.dat"

.field public static final UPDATA_FLAG_NOTKILLLIST_KILL_PROCESSES:I = 0x800000

.field public static final UPDATE_FLAGS:[I = null

.field public static final UPDATE_FLAG_ALL:I = 0x200000

.field public static final UPDATE_FLAG_APP_LIST:I = 0x400000

.field public static final UPDATE_FLAG_BLACKLIST_PROCESS:I = 0x2000

.field public static final UPDATE_FLAG_BLACKLIST_ROM:I = 0x80

.field public static final UPDATE_FLAG_BLACKLIST_WITHPLUGIN:I = 0x800

.field public static final UPDATE_FLAG_CAMERA_SOFTWARE_LIST:I = 0x20000

.field public static final UPDATE_FLAG_DEEPCLEAN_SOFTWARE_LIST:I = 0x40000

.field public static final UPDATE_FLAG_DEEPCLEAN_SOFT_PATH_LIST:I = 0x80000

.field public static final UPDATE_FLAG_LOCATION:I = 0x2

.field public static final UPDATE_FLAG_PERMIS_MONITOR_LIST:I = 0x100000

.field public static final UPDATE_FLAG_PRIVACYLOCKLIST_USUAL:I = 0x1000

.field public static final UPDATE_FLAG_ROM_THIRDPART:I = 0x40

.field public static final UPDATE_FLAG_SMS_CHECKER:I = 0x4

.field public static final UPDATE_FLAG_TRAFFIC_MONITOR_CONFIG:I = 0x20

.field public static final UPDATE_FLAG_TRUST_URLS:I = 0x10

.field public static final UPDATE_FLAG_VIRUS_BASE:I = 0x8

.field public static final UPDATE_FLAG_WHITELIST_AUTO_BOOT:I = 0x8000

.field public static final UPDATE_FLAG_WHITELIST_COMMON:I = 0x200

.field public static final UPDATE_FLAG_WHITELIST_PERMISSION_CONTROL:I = 0x10000

.field public static final UPDATE_FLAG_WHITELIST_PROCESS:I = 0x4000

.field public static final UPDATE_FLAG_WHITELIST_ROM:I = 0x100

.field public static final UPDATE_FLAG_WHITELIST_UNUSUAL:I = 0x400

.field public static final UPDATE_TYPE_ENGINE_UPDATE:I = 0x1

.field public static final UPDATE_TYPE_NORMAL_UPDATE:I = 0x0

.field public static final VIRUS_BASE_NAME:Ljava/lang/String; = "qv_base.amf"

.field public static final WHITELIST_AUTO_BOOT_NAME:Ljava/lang/String;

.field public static final WHITELIST_COMMON_NAME:Ljava/lang/String;

.field public static final WHITELIST_KILL_PROCESS_NAME:Ljava/lang/String;

.field public static final WHITELIST_PERMISSION_CONTROL_NAME:Ljava/lang/String;

.field public static final WHITELIST_ROM_NAME:Ljava/lang/String;

.field public static final WHITELIST_UNUSUAL_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->BLACKLIST_ROM_THIRDPART:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->ROM_THIRDPART_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_ROM_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_ROM_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_COMMON_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->BLACKLIST_WITHPLUGIN:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_UNUSUAL:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_UNUSUAL_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->PRIVACYLOCKLIST_USUAL:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->PRIVACYLOCKLIST_USUAL_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->BLACKLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_KILL_PROCESS_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_KILL_PROCESS:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_KILL_PROCESS_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_AUTO_ROOT:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_AUTO_BOOT_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->WHITELIST_PERMISSION_CONTROL:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_PERMISSION_CONTROL_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->CAMERA_SOFTWARE_LIST:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->CAMERA_SOFTWARE_LIST_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->DEEPCLEAN_SOFTWARE_LIST:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->DEEPCLEAN_SOFTWARE_LIST_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->DEEPCLEAN_SOFT_PATH_LIST:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->DEEPCLEAN_SOFT_PATH_LIST_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->PERMIS_MONITOR_LIST:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->PERMIS_MONITOR_LIST_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LQQPIM/SoftListType;->NOTKILLLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->NOTKILL_LIST_KILL_PROCESSES_NAME:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nldb.sdb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rule_store.sys"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "qv_base.amf"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trusturls.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "net_interface_type_traffic_stat.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->ROM_THIRDPART_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_ROM_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_ROM_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_COMMON_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_UNUSUAL_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->PRIVACYLOCKLIST_USUAL_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_KILL_PROCESS_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_KILL_PROCESS_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_AUTO_BOOT_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_PERMISSION_CONTROL_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->CAMERA_SOFTWARE_LIST_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->DEEPCLEAN_SOFTWARE_LIST_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->DEEPCLEAN_SOFT_PATH_LIST_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->PERMIS_MONITOR_LIST_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tencent/tmsecure/module/update/UpdateConfig;->NOTKILL_LIST_KILL_PROCESSES_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->FILE_NAMES:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    return-void

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
        0x0t 0x0t 0x80t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileNameByFlag(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    aget v1, v1, v0

    if-ne p0, v1, :cond_1

    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->FILE_NAMES:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getFlagByFileName(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->FILE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->FILE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    aget v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static prepareCheckFlag(I)I
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x20

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    array-length v2, v1

    move p0, v0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    return p0

    :cond_1
    aget v3, v1, v0

    or-int/2addr p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    or-int/lit8 v0, p0, 0x40

    or-int/lit16 v0, v0, 0x80

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x800

    or-int/lit16 v0, v0, 0x1000

    or-int/lit16 v0, v0, 0x2000

    or-int/lit16 v0, v0, 0x4000

    const v1, 0x8000

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    const/high16 v1, 0x80

    or-int p0, v0, v1

    goto :goto_1
.end method
