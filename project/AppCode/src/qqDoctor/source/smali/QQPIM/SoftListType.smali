.class public final LQQPIM/SoftListType;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BLACKLIST_KILL_PROCESSES:LQQPIM/SoftListType; = null

.field public static final BLACKLIST_ROM:LQQPIM/SoftListType; = null

.field public static final BLACKLIST_ROM_THIRDPART:LQQPIM/SoftListType; = null

.field public static final BLACKLIST_WITHPLUGIN:LQQPIM/SoftListType; = null

.field public static final CAMERA_SOFTWARE_LIST:LQQPIM/SoftListType; = null

.field public static final DEEPCLEAN_SOFTWARE_LIST:LQQPIM/SoftListType; = null

.field public static final DEEPCLEAN_SOFT_PATH_LIST:LQQPIM/SoftListType; = null

.field public static final END_NET_UPDATE:LQQPIM/SoftListType; = null

.field public static final FILE_CLEAR:LQQPIM/SoftListType; = null

.field public static final LIST_CACHECLEAN_IPHONE:LQQPIM/SoftListType; = null

.field public static final NOTKILLLIST_KILL_PROCESSES:LQQPIM/SoftListType; = null

.field public static final PAYMENT_BLACKLIST:LQQPIM/SoftListType; = null

.field public static final PAYMENT_WHITELIST:LQQPIM/SoftListType; = null

.field public static final PAY_LIST:LQQPIM/SoftListType; = null

.field public static final PERMIS_MONITOR_LIST:LQQPIM/SoftListType; = null

.field public static final PRIVACYLOCKLIST_USUAL:LQQPIM/SoftListType; = null

.field public static final START_NET_UPDATE:LQQPIM/SoftListType; = null

.field public static final STEAL_ACCOUNT_LIST:LQQPIM/SoftListType; = null

.field public static final SYSTEM_CLEAR_CONFIG_WP8:LQQPIM/SoftListType; = null

.field public static final WHITELIST_AUTO_ROOT:LQQPIM/SoftListType; = null

.field public static final WHITELIST_CACHECLEAN_IPHONE:LQQPIM/SoftListType; = null

.field public static final WHITELIST_COMMON:LQQPIM/SoftListType; = null

.field public static final WHITELIST_KILL_PROCESS:LQQPIM/SoftListType; = null

.field public static final WHITELIST_MEMORY_IPHONE:LQQPIM/SoftListType; = null

.field public static final WHITELIST_NETWORK_SYMBIAN_V3:LQQPIM/SoftListType; = null

.field public static final WHITELIST_NETWORK_SYMBIAN_V5:LQQPIM/SoftListType; = null

.field public static final WHITELIST_PERMISSION_CONTROL:LQQPIM/SoftListType; = null

.field public static final WHITELIST_PROCESS_SYMBIAN_V3:LQQPIM/SoftListType; = null

.field public static final WHITELIST_PROCESS_SYMBIAN_V5:LQQPIM/SoftListType; = null

.field public static final WHITELIST_ROM:LQQPIM/SoftListType; = null

.field public static final WHITELIST_STARTER_SYMBIAN_V3:LQQPIM/SoftListType; = null

.field public static final WHITELIST_STARTER_SYMBIAN_V5:LQQPIM/SoftListType; = null

.field public static final WHITELIST_UNUSUAL:LQQPIM/SoftListType; = null

.field public static final _BLACKLIST_KILL_PROCESSES:I = 0x13

.field public static final _BLACKLIST_ROM:I = 0x2

.field public static final _BLACKLIST_ROM_THIRDPART:I = 0x4

.field public static final _BLACKLIST_WITHPLUGIN:I = 0x3

.field public static final _CAMERA_SOFTWARE_LIST:I = 0x17

.field public static final _DEEPCLEAN_SOFTWARE_LIST:I = 0x18

.field public static final _DEEPCLEAN_SOFT_PATH_LIST:I = 0x1a

.field public static final _END_NET_UPDATE:I = 0x2713

.field public static final _FILE_CLEAR:I = 0xc

.field public static final _LIST_CACHECLEAN_IPHONE:I = 0x12

.field public static final _NOTKILLLIST_KILL_PROCESSES:I = 0x1c

.field public static final _PAYMENT_BLACKLIST:I = 0xe

.field public static final _PAYMENT_WHITELIST:I = 0xf

.field public static final _PAY_LIST:I = 0x2711

.field public static final _PERMIS_MONITOR_LIST:I = 0x1b

.field public static final _PRIVACYLOCKLIST_USUAL:I = 0x11

.field public static final _START_NET_UPDATE:I = 0x2710

.field public static final _STEAL_ACCOUNT_LIST:I = 0x2712

.field public static final _SYSTEM_CLEAR_CONFIG_WP8:I = 0x10

.field public static final _WHITELIST_AUTO_ROOT:I = 0x15

.field public static final _WHITELIST_CACHECLEAN_IPHONE:I = 0x19

.field public static final _WHITELIST_COMMON:I = 0x0

.field public static final _WHITELIST_KILL_PROCESS:I = 0x14

.field public static final _WHITELIST_MEMORY_IPHONE:I = 0xd

.field public static final _WHITELIST_NETWORK_SYMBIAN_V3:I = 0x8

.field public static final _WHITELIST_NETWORK_SYMBIAN_V5:I = 0xb

.field public static final _WHITELIST_PERMISSION_CONTROL:I = 0x16

.field public static final _WHITELIST_PROCESS_SYMBIAN_V3:I = 0x7

.field public static final _WHITELIST_PROCESS_SYMBIAN_V5:I = 0xa

.field public static final _WHITELIST_ROM:I = 0x5

.field public static final _WHITELIST_STARTER_SYMBIAN_V3:I = 0x6

.field public static final _WHITELIST_STARTER_SYMBIAN_V5:I = 0x9

.field public static final _WHITELIST_UNUSUAL:I = 0x1

.field private static __values:[LQQPIM/SoftListType;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/SoftListType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/SoftListType;->$assertionsDisabled:Z

    const/16 v0, 0x21

    new-array v0, v0, [LQQPIM/SoftListType;

    sput-object v0, LQQPIM/SoftListType;->__values:[LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const-string v3, "WHITELIST_COMMON"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const-string v2, "WHITELIST_UNUSUAL"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_UNUSUAL:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const-string v1, "BLACKLIST_ROM"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const-string v1, "BLACKLIST_WITHPLUGIN"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->BLACKLIST_WITHPLUGIN:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const-string v1, "BLACKLIST_ROM_THIRDPART"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->BLACKLIST_ROM_THIRDPART:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "WHITELIST_ROM"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_ROM:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "WHITELIST_STARTER_SYMBIAN_V3"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_STARTER_SYMBIAN_V3:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "WHITELIST_PROCESS_SYMBIAN_V3"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_PROCESS_SYMBIAN_V3:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "WHITELIST_NETWORK_SYMBIAN_V3"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_NETWORK_SYMBIAN_V3:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "WHITELIST_STARTER_SYMBIAN_V5"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_STARTER_SYMBIAN_V5:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "WHITELIST_PROCESS_SYMBIAN_V5"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_PROCESS_SYMBIAN_V5:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0xb

    const/16 v2, 0xb

    const-string v3, "WHITELIST_NETWORK_SYMBIAN_V5"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_NETWORK_SYMBIAN_V5:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0xc

    const/16 v2, 0xc

    const-string v3, "FILE_CLEAR"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->FILE_CLEAR:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0xd

    const/16 v2, 0xd

    const-string v3, "WHITELIST_MEMORY_IPHONE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_MEMORY_IPHONE:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0xe

    const/16 v2, 0xe

    const-string v3, "PAYMENT_BLACKLIST"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->PAYMENT_BLACKLIST:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0xf

    const/16 v2, 0xf

    const-string v3, "PAYMENT_WHITELIST"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->PAYMENT_WHITELIST:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x10

    const/16 v2, 0x10

    const-string v3, "SYSTEM_CLEAR_CONFIG_WP8"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->SYSTEM_CLEAR_CONFIG_WP8:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x11

    const/16 v2, 0x11

    const-string v3, "PRIVACYLOCKLIST_USUAL"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->PRIVACYLOCKLIST_USUAL:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x12

    const/16 v2, 0x12

    const-string v3, "LIST_CACHECLEAN_IPHONE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->LIST_CACHECLEAN_IPHONE:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x13

    const/16 v2, 0x13

    const-string v3, "BLACKLIST_KILL_PROCESSES"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->BLACKLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x14

    const/16 v2, 0x14

    const-string v3, "WHITELIST_KILL_PROCESS"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_KILL_PROCESS:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x15

    const/16 v2, 0x15

    const-string v3, "WHITELIST_AUTO_ROOT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_AUTO_ROOT:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "WHITELIST_PERMISSION_CONTROL"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_PERMISSION_CONTROL:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x17

    const/16 v2, 0x17

    const-string v3, "CAMERA_SOFTWARE_LIST"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->CAMERA_SOFTWARE_LIST:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const-string v3, "DEEPCLEAN_SOFTWARE_LIST"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->DEEPCLEAN_SOFTWARE_LIST:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x19

    const/16 v2, 0x19

    const-string v3, "WHITELIST_CACHECLEAN_IPHONE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->WHITELIST_CACHECLEAN_IPHONE:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    const-string v3, "DEEPCLEAN_SOFT_PATH_LIST"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->DEEPCLEAN_SOFT_PATH_LIST:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    const-string v3, "PERMIS_MONITOR_LIST"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->PERMIS_MONITOR_LIST:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const-string v3, "NOTKILLLIST_KILL_PROCESSES"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->NOTKILLLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x1d

    const/16 v2, 0x2710

    const-string v3, "START_NET_UPDATE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->START_NET_UPDATE:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x1e

    const/16 v2, 0x2711

    const-string v3, "PAY_LIST"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->PAY_LIST:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x1f

    const/16 v2, 0x2712

    const-string v3, "STEAL_ACCOUNT_LIST"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->STEAL_ACCOUNT_LIST:LQQPIM/SoftListType;

    new-instance v0, LQQPIM/SoftListType;

    const/16 v1, 0x20

    const/16 v2, 0x2713

    const-string v3, "END_NET_UPDATE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/SoftListType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/SoftListType;->END_NET_UPDATE:LQQPIM/SoftListType;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/SoftListType;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/SoftListType;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/SoftListType;->__value:I

    sget-object v0, LQQPIM/SoftListType;->__values:[LQQPIM/SoftListType;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/SoftListType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/SoftListType;->__values:[LQQPIM/SoftListType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/SoftListType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/SoftListType;->__values:[LQQPIM/SoftListType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/SoftListType;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/SoftListType;->__values:[LQQPIM/SoftListType;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LQQPIM/SoftListType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/SoftListType;->__values:[LQQPIM/SoftListType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/SoftListType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/SoftListType;->__values:[LQQPIM/SoftListType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/SoftListType;->__values:[LQQPIM/SoftListType;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftListType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/SoftListType;->__value:I

    return v0
.end method
