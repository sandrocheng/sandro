.class public final Lcom/c/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static d:S

.field private static v:Lcom/c/a/a/d;


# instance fields
.field private e:Z

.field private f:I

.field private g:J

.field private h:Landroid/content/Context;

.field private i:Ljava/util/Hashtable;

.field private j:Landroid/location/Location;

.field private k:J

.field private l:Landroid/telephony/TelephonyManager;

.field private m:Landroid/net/wifi/WifiManager;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Ljava/util/Vector;

.field private t:Ljava/util/Hashtable;

.field private u:Lcom/c/a/a/i;

.field private w:Landroid/os/Handler;

.field private x:Lcom/c/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/c/a/a/d;->a:J

    .line 56
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/c/a/a/d;->b:J

    .line 58
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/c/a/a/d;->c:J

    .line 67
    const/16 v0, 0x3e8

    sput-short v0, Lcom/c/a/a/d;->d:S

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/d;->s:Ljava/util/Vector;

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/d;->t:Ljava/util/Hashtable;

    .line 100
    new-instance v0, Lcom/c/a/a/i;

    invoke-direct {v0}, Lcom/c/a/a/i;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/d;->u:Lcom/c/a/a/i;

    .line 104
    new-instance v0, Lcom/c/a/a/m;

    invoke-direct {v0, p0}, Lcom/c/a/a/m;-><init>(Lcom/c/a/a/d;)V

    iput-object v0, p0, Lcom/c/a/a/d;->w:Landroid/os/Handler;

    .line 130
    iput-object v1, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    .line 253
    iput-object p1, p0, Lcom/c/a/a/d;->h:Landroid/content/Context;

    .line 254
    iput-boolean v2, p0, Lcom/c/a/a/d;->e:Z

    .line 255
    iput-object v1, p0, Lcom/c/a/a/d;->j:Landroid/location/Location;

    .line 256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/a/d;->k:J

    .line 257
    iput v2, p0, Lcom/c/a/a/d;->q:I

    .line 258
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    .line 259
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x2

    return v0
.end method

.method public static synthetic a(Lcom/c/a/a/d;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/c/a/a/d;->k:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/c/a/a/d;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/c/a/a/d;->j:Landroid/location/Location;

    return-object v0
.end method

.method public static synthetic a(Lcom/c/a/a/d;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/c/a/a/d;->j:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/c/a/a/d;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/c/a/a/d;->m:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic a(Lcom/c/a/a/d;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/c/a/a/d;->l:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/c/a/a/d;
    .locals 1
    .parameter

    .prologue
    .line 384
    sget-object v0, Lcom/c/a/a/d;->v:Lcom/c/a/a/d;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/c/a/a/d;

    invoke-direct {v0, p0}, Lcom/c/a/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/c/a/a/d;->v:Lcom/c/a/a/d;

    .line 388
    :cond_0
    sget-object v0, Lcom/c/a/a/d;->v:Lcom/c/a/a/d;

    iput-object p0, v0, Lcom/c/a/a/d;->h:Landroid/content/Context;

    .line 389
    sget-object v0, Lcom/c/a/a/d;->v:Lcom/c/a/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/c/a/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/c/a/a/d;->p:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    :try_start_0
    const-string v1, "\u0008\u0016goLOMdv\u0004\u0005\u000evl\u0005N\u000fro\u0014\u0001\u0010=|\u0019\rMcp\u0005\t\u0016zp\u0018O]t}KPP5k\u0006]S 9\u0015\u0008_fk\u0010MZ5v\u0015\u0014_!9\u001d\u0005\u001b."

    invoke-static {v1}, Lcom/c/a/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0015\u0016u2N"

    invoke-static {v2}, Lcom/c/a/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(S)S
    .locals 0
    .parameter

    .prologue
    .line 51
    sput-short p0, Lcom/c/a/a/d;->d:S

    return p0
.end method

.method static synthetic a(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/c/a/a/s;->n:Z

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    sput v0, Lcom/c/a/a/s;->u:I

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    sput v0, Lcom/c/a/a/s;->t:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/c/a/a/s;->n:Z

    sget v0, Lcom/c/a/a/n;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v0, "getSystemId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/c/a/a/s;->o:I

    :cond_2
    const-string v0, "getBaseStationId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/c/a/a/s;->p:I

    :cond_3
    const-string v0, "getNetworkId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/c/a/a/s;->q:I

    :cond_4
    const-string v0, "getBaseStationLongitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/c/a/a/s;->r:I

    :cond_5
    const-string v0, "getBaseStationLatitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/c/a/a/s;->s:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/telephony/TelephonyManager;)V
    .locals 6
    .parameter

    .prologue
    .line 51
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/NeighboringCellInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "getLac"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    if-ltz v0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    if-ltz v3, :cond_0

    sget-object v3, Lcom/c/a/a/s;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/c/a/a/s;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/s;->v:Ljava/lang/String;

    :cond_2
    return-void

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/c/a/a/d;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/c/a/a/d;->f:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/c/a/a/d;->f:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/c/a/a/d;->g:J

    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationListener;

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "cell"

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroid/location/Criteria;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v2

    .line 432
    :goto_0
    return v0

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    .line 419
    if-eqz v0, :cond_1

    if-gtz v0, :cond_1

    move v0, v2

    .line 421
    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p0}, Landroid/location/Criteria;->isAltitudeRequired()Z

    .line 424
    invoke-virtual {p0}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 427
    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p0}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 430
    goto :goto_0

    .line 432
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/c/a/a/d;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/c/a/a/d;->r:I

    return p1
.end method

.method static synthetic b(Lcom/c/a/a/d;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/c/a/a/d;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const-string v0, "cell"

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lcom/c/a/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic c(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Lcom/c/a/a/d;->f(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/c/a/a/d;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/c/a/a/d;->l:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 760
    const-string v0, ""

    .line 761
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 765
    :try_start_0
    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 766
    if-lez v1, :cond_0

    .line 768
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 772
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/c/a/a/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/c/a/a/d;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/c/a/a/d;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 51
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/c/a/a/d;->k:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/c/a/a/d;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/a/d;->h:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/c/a/a/s;->n:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/c/a/a/s;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/c/a/a/s;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/c/a/a/s;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/c/a/a/s;->u:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/c/a/a/s;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/c/a/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/d;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/c/a/a/d;->j:Landroid/location/Location;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/c/a/a/d;->k:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/c/a/a/d;->a:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/c/a/a/d;->k:J

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/d;->j:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    :cond_1
    iget-object v0, p0, Lcom/c/a/a/d;->w:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v2, Lcom/c/a/a/s;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/c/a/a/s;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/c/a/a/s;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/c/a/a/s;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/c/a/a/s;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/c/a/a/s;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/c/a/a/s;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    iput-object v1, p0, Lcom/c/a/a/d;->o:Ljava/lang/String;

    invoke-direct {p0}, Lcom/c/a/a/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/c/a/a/d;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/c/a/a/d;->q()V

    iput-object v1, p0, Lcom/c/a/a/d;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/c/a/a/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/c/a/a/d;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized e(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 781
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/c/a/a/h;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 853
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 786
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/c/a/a/d;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 787
    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/c/a/a/d;->s:Ljava/util/Vector;

    sub-int v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/h;

    iget-object v0, v0, Lcom/c/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    :cond_2
    sub-int v0, v1, v3

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 793
    iget-object v0, p0, Lcom/c/a/a/d;->s:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/h;

    iget-object v0, v0, Lcom/c/a/a/h;->a:Lcom/c/a/a/ag;

    invoke-virtual {v0}, Lcom/c/a/a/ag;->d()Z

    .line 794
    iget-object v0, p0, Lcom/c/a/a/d;->s:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 791
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 800
    :cond_3
    :try_start_2
    new-instance v0, Lcom/c/a/a/ag;

    iget-object v1, p0, Lcom/c/a/a/d;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/c/a/a/ag;-><init>(Landroid/content/Context;)V

    .line 801
    iget v1, p0, Lcom/c/a/a/d;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/c/a/a/d;->q:I

    .line 802
    iget v1, p0, Lcom/c/a/a/d;->q:I

    invoke-static {p1, v1}, Lcom/c/a/a/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/a/ag;->a(Ljava/lang/String;)V

    .line 803
    iget v1, p0, Lcom/c/a/a/d;->q:I

    invoke-virtual {v0, v1}, Lcom/c/a/a/ag;->a(I)V

    .line 804
    new-instance v1, Lcom/c/a/a/l;

    invoke-direct {v1, p0}, Lcom/c/a/a/l;-><init>(Lcom/c/a/a/d;)V

    invoke-virtual {v0, v1}, Lcom/c/a/a/ag;->a(Lcom/c/a/a/l;)V

    .line 819
    new-instance v1, Lcom/c/a/a/k;

    invoke-direct {v1, p0, p1}, Lcom/c/a/a/k;-><init>(Lcom/c/a/a/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/c/a/a/ag;->a(Lcom/c/a/a/k;)V

    .line 847
    iget-object v1, p0, Lcom/c/a/a/d;->s:Ljava/util/Vector;

    new-instance v2, Lcom/c/a/a/h;

    invoke-direct {v2, v0, p1}, Lcom/c/a/a/h;-><init>(Lcom/c/a/a/ag;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 848
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/c/a/a/ag;->a([Ljava/lang/Object;)Lcom/c/a/a/x;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 853
    :catch_1
    move-exception v0

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method private static f(Ljava/lang/String;)Landroid/location/Location;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const-wide v6, 0x40f86a0000000000L

    const/4 v3, 0x1

    .line 886
    const/4 v0, 0x0

    .line 887
    if-eqz p0, :cond_2

    .line 890
    :try_start_0
    const-string v1, "|"

    invoke-static {p0, v1}, Lcom/c/a/a/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v1}, Lcom/c/a/a/o;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v1

    .line 891
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 893
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :try_start_1
    new-instance v1, Landroid/location/Location;

    const-string v2, "cell"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 897
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 898
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 899
    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 900
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 901
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/c/a/a/o;->a(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 902
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a/o;->a(Ljava/lang/String;)I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v3, v6

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 903
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 904
    array-length v0, p0

    if-le v0, v8, :cond_1

    .line 906
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 907
    const-string v2, "city"

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    array-length v2, p0

    if-le v2, v9, :cond_0

    .line 910
    const-string v2, "address"

    const/4 v3, 0x3

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_0
    invoke-virtual {v1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v0, v1

    .line 922
    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/c/a/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/c/a/a/d;->q()V

    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic g(Lcom/c/a/a/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/c/a/a/d;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1004
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1005
    array-length v1, v0

    .line 1007
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1009
    rem-int/lit8 v3, v2, 0x5

    packed-switch v3, :pswitch_data_0

    .line 1028
    const/16 v3, 0x76

    .line 1031
    :goto_1
    aget-char v4, v0, v2

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 1007
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    :pswitch_0
    const/16 v3, 0x60

    .line 1013
    goto :goto_1

    .line 1016
    :pswitch_1
    const/16 v3, 0x62

    .line 1017
    goto :goto_1

    .line 1020
    :pswitch_2
    const/16 v3, 0x13

    .line 1021
    goto :goto_1

    .line 1024
    :pswitch_3
    const/16 v3, 0x1f

    .line 1025
    goto :goto_1

    .line 1034
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1009
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Lcom/c/a/a/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/c/a/a/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method private static h(Ljava/lang/String;)[B
    .locals 4
    .parameter

    .prologue
    .line 1181
    const/4 v0, 0x0

    .line 1184
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1185
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1186
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 1187
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1190
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1193
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1198
    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 1195
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static synthetic i(Lcom/c/a/a/d;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/c/a/a/d;->r:I

    return v0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic j(Lcom/c/a/a/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic k(Lcom/c/a/a/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic l(Lcom/c/a/a/d;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/c/a/a/d;->w:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic m(Lcom/c/a/a/d;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/c/a/a/d;->s:Ljava/util/Vector;

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/d;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/a/r;->a(Landroid/content/Context;)Lcom/c/a/a/r;

    move-result-object v0

    .line 742
    invoke-virtual {v0}, Lcom/c/a/a/r;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 747
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    :cond_0
    :goto_0
    invoke-static {}, Lcom/c/a/a/s;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 747
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 750
    :catch_0
    move-exception v0

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/c/a/a/p;->a()V

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1080
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/d;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/c/a/a/d;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x2

    .line 1094
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    sget-short v1, Lcom/c/a/a/d;->d:S

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1100
    :cond_0
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/d;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 1106
    if-eqz v0, :cond_2

    .line 1108
    iget-object v1, p0, Lcom/c/a/a/d;->u:Lcom/c/a/a/i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1111
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1113
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1114
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :try_start_1
    iget-object v5, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/c/a/a/d;->h(Ljava/lang/String;)[B

    move-result-object v5

    .line 1119
    if-eqz v5, :cond_1

    .line 1121
    const-string v6, "iso-8859-1"

    invoke-static {v5, v6}, Lcom/c/a/a/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1122
    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\r"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1126
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    iget-object v5, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1132
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1139
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1140
    iget-object v1, p0, Lcom/c/a/a/d;->t:Ljava/util/Hashtable;

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/a/j;

    .line 1141
    if-eqz v1, :cond_4

    .line 1143
    iget v6, v1, Lcom/c/a/a/j;->a:I

    iget v7, v0, Landroid/net/wifi/ScanResult;->level:I

    if-eq v6, v7, :cond_5

    .line 1149
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v1, Lcom/c/a/a/j;->a:I

    .line 1150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/c/a/a/j;->b:J

    move-object v0, v1

    .line 1161
    :goto_3
    invoke-virtual {v2, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v0, v0, Lcom/c/a/a/j;->b:J

    sub-long v0, v5, v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    .line 1163
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1164
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1168
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1172
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/s;->w:Ljava/lang/String;

    .line 1173
    iget-object v0, p0, Lcom/c/a/a/d;->t:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1174
    iput-object v2, p0, Lcom/c/a/a/d;->t:Ljava/util/Hashtable;

    .line 1175
    sget-object v0, Lcom/c/a/a/s;->w:Ljava/lang/String;

    return-object v0

    .line 1136
    :cond_3
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1155
    :cond_4
    new-instance v1, Lcom/c/a/a/j;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/c/a/a/j;-><init>(B)V

    .line 1156
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v1, Lcom/c/a/a/j;->a:I

    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/c/a/a/j;->b:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    goto :goto_3

    .line 1125
    :catch_1
    move-exception v5

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a(Landroid/location/LocationListener;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 583
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 585
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const-string v1, "CELL_LISTENER_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/c/a/a/p;->a()V

    .line 626
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 629
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationListener;

    .line 632
    if-eqz p0, :cond_0

    .line 636
    :try_start_0
    invoke-interface {p0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 645
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 599
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    const/4 v0, 0x0

    .line 605
    :goto_0
    return v0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/c/a/a/d;->f:I

    return v0
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/c/a/a/d;->g:J

    return-wide v0
.end method

.method public final m()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/c/a/a/d;->k:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/c/a/a/d;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 483
    iput-object v5, p0, Lcom/c/a/a/d;->j:Landroid/location/Location;

    .line 484
    iput-object v5, p0, Lcom/c/a/a/d;->n:Ljava/lang/String;

    .line 485
    iput-object v5, p0, Lcom/c/a/a/d;->o:Ljava/lang/String;

    .line 487
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/a/d;->k:J

    .line 488
    const/4 v0, -0x1

    iput v0, p0, Lcom/c/a/a/d;->f:I

    .line 489
    iget-boolean v0, p0, Lcom/c/a/a/d;->e:Z

    if-nez v0, :cond_4

    .line 491
    iput-boolean v4, p0, Lcom/c/a/a/d;->e:Z

    .line 493
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 496
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 499
    if-eqz v0, :cond_1

    .line 503
    :try_start_0
    const-string v2, "cell"

    invoke-interface {v0, v2}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    if-nez v0, :cond_5

    .line 515
    new-instance v0, Lcom/c/a/a/e;

    const-string v1, "LocationService"

    invoke-direct {v0, p0, v1}, Lcom/c/a/a/e;-><init>(Lcom/c/a/a/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    .line 516
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    invoke-virtual {v0}, Lcom/c/a/a/e;->start()V

    .line 529
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/c/a/a/d;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/a/r;->a(Landroid/content/Context;)Lcom/c/a/a/r;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/c/a/a/r;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 535
    :cond_4
    :goto_2
    return-void

    .line 520
    :cond_5
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/d;->e:Z

    .line 543
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/c/a/a/d;->x:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 551
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 554
    if-eqz v0, :cond_1

    .line 558
    :try_start_0
    const-string v2, "cell"

    invoke-interface {v0, v2}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 570
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/c/a/a/d;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/a/r;->a(Landroid/content/Context;)Lcom/c/a/a/r;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lcom/c/a/a/r;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/c/a/a/d;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 617
    :cond_0
    return-void
.end method
