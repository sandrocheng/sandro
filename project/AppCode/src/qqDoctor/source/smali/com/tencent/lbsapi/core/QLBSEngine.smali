.class public Lcom/tencent/lbsapi/core/QLBSEngine;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "com.tencent.lbsapi.GPS_SINGLE"

.field private static final d:I = 0x5

.field private static final e:I = 0xa

.field private static final f:I = 0x35a4e900

.field private static final g:I = 0x35a4e900

.field private static h:Ljava/util/ArrayList;


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/util/ArrayList;

.field private F:Ljava/util/ArrayList;

.field private G:Z

.field private H:F

.field private I:I

.field private J:I

.field protected a:Ljava/lang/Runnable;

.field protected b:Ljava/lang/Runnable;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Lcom/tencent/lbsapi/QLBSNotification;

.field private l:Landroid/os/Handler;

.field private m:Landroid/telephony/TelephonyManager;

.field private n:Landroid/location/LocationManager;

.field private o:Landroid/location/LocationListener;

.field private p:Landroid/location/LocationListener;

.field private q:Landroid/net/wifi/WifiManager;

.field private r:Landroid/content/BroadcastReceiver;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:Ljava/util/ArrayList;

    sget-object v0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:Ljava/util/ArrayList;

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/lbsapi/QLBSNotification;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:Landroid/content/BroadcastReceiver;

    iput-boolean v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    iput-boolean v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    iput-boolean v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:Z

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->C:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->D:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->E:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->G:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->H:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->I:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->J:I

    new-instance v0, Lcom/tencent/lbsapi/core/g;

    invoke-direct {v0, p0}, Lcom/tencent/lbsapi/core/g;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/lbsapi/core/h;

    invoke-direct {v0, p0}, Lcom/tencent/lbsapi/core/h;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Lcom/tencent/lbsapi/QLBSNotification;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->x()V

    return-void
.end method

.method private A()V
    .locals 7

    const-wide/16 v2, 0x7d0

    const/4 v6, 0x1

    const/high16 v4, 0x40a0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/lbsapi/core/e;

    invoke-direct {v0, p0}, Lcom/tencent/lbsapi/core/e;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    :cond_2
    const-string v0, "----\u5f00\u59cb\u7f51\u7edc\u5b9a\u4f4d"

    invoke-static {v0}, Lcom/tencent/lbsapi/core/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iput-boolean v6, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    :cond_3
    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/lbsapi/core/f;

    invoke-direct {v0, p0}, Lcom/tencent/lbsapi/core/f;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    const-string v0, "----\u5f00\u59cbgps\u5b9a\u4f4d"

    invoke-static {v0}, Lcom/tencent/lbsapi/core/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    iget v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->J:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:Z

    goto :goto_0
.end method

.method private B()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private C()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private D()Z
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private E()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F()Z
    .locals 2

    const v1, 0x35a4e900

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B)J
    .locals 17

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/4 v6, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/4 v8, 0x4

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/4 v10, 0x5

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    const/4 v12, 0x6

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    const/4 v14, 0x7

    aget-byte v14, p0, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x8

    shl-long v2, v2, v16

    const/16 v16, 0x10

    shl-long v4, v4, v16

    const/16 v16, 0x18

    shl-long v6, v6, v16

    const/16 v16, 0x20

    shl-long v8, v8, v16

    const/16 v16, 0x28

    shl-long v10, v10, v16

    const/16 v16, 0x30

    shl-long v12, v12, v16

    const/16 v16, 0x38

    shl-long v14, v14, v16

    or-long/2addr v0, v2

    or-long/2addr v0, v4

    or-long/2addr v0, v6

    or-long/2addr v0, v8

    or-long/2addr v0, v10

    or-long/2addr v0, v12

    or-long/2addr v0, v14

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/lbsapi/core/QLBSEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->processReceiveWifi()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/lbsapi/core/QLBSEngine;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/lbsapi/core/QLBSEngine;->processReceiveNetWork(Landroid/location/Location;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v1, "lbs_temp"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_3
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/lbsapi/core/QLBSEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/lbsapi/core/QLBSEngine;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/lbsapi/core/QLBSEngine;->processReceiveGps(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/lbsapi/core/QLBSEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/lbsapi/core/QLBSEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/tencent/lbsapi/core/QLBSEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->w()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/lbsapi/core/QLBSEngine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private processReceiveGps(Landroid/location/Location;)V
    .locals 4

    const-wide v2, 0x412e848000000000L

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:I

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->G:Z

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->G:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->H:F

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----processReceiveGps lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbsapi/core/l;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->s()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->u:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private processReceiveNetWork(Landroid/location/Location;)V
    .locals 5

    const/4 v4, 0x0

    const-wide v2, 0x412e848000000000L

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:I

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->G:Z

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->G:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->H:F

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----processReceiveNetWork lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbsapi/core/l;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v4, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->w()V

    goto :goto_0
.end method

.method private processReceiveWifi()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->z()V

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->w()V

    goto :goto_0
.end method

.method private readCell()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->C:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    if-lez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_3

    :try_start_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    iget-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->C:Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v1

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->D:Ljava/lang/String;

    :cond_4
    :goto_2
    return-void

    :cond_5
    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    iput v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :try_start_2
    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    const-string v0, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    :cond_7
    const-string v0, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    :cond_8
    const-string v0, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    :cond_9
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    if-lt v1, v4, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    :try_start_4
    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->D:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public static v()J
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x7b2

    const/4 v3, 0x1

    const/16 v4, 0x8

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private w()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->D()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->E()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Lcom/tencent/lbsapi/QLBSNotification;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->k:Lcom/tencent/lbsapi/QLBSNotification;

    invoke-interface {v1, v0}, Lcom/tencent/lbsapi/QLBSNotification;->onLocationNotification(I)V

    :cond_2
    return-void
.end method

.method private x()V
    .locals 2

    const v1, 0x35a4e900

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    iput v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:I

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->G:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->H:F

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->E:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->D:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private y()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    :cond_0
    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->z()V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-----\u5982\u679c\u6ca1\u8bfb\u5230\u5219\u8fdb\u884c\u626b\u63cf\u4e00\u6b21"

    invoke-static {v0}, Lcom/tencent/lbsapi/core/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/lbsapi/core/d;

    invoke-direct {v1, p0}, Lcom/tencent/lbsapi/core/d;-><init>(Lcom/tencent/lbsapi/core/QLBSEngine;)V

    iput-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    :goto_0
    return-void

    :cond_2
    const-string v0, "----\u76f4\u63a5\u8bfb\u5230wifi\u4e86\uff0c\u4e0d\u7528\u626b\u63cf"

    invoke-static {v0}, Lcom/tencent/lbsapi/core/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private z()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    :goto_0
    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x8

    new-array v5, v0, [B

    fill-array-data v5, :array_0

    move v0, v2

    :goto_2
    array-length v6, v4

    if-ge v0, v6, :cond_1

    aget-object v6, v4, v0

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    rsub-int/lit8 v7, v0, 0x5

    int-to-byte v6, v6

    aput-byte v6, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/tencent/lbsapi/core/QLBSEngine;->a([B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->I:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:Z

    return-void
.end method

.method public declared-synchronized a()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->x()V

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->b()V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->readCell()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->y()V

    :cond_1
    sget-object v0, Lcom/tencent/lbsapi/core/QLBSEngine;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:Z

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->v:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->A()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    iget v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->I:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-boolean v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->t:Z

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->s:Z

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->J:I

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->readCell()V

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    if-nez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    if-eq v3, v0, :cond_0

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    :cond_6
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->o:Landroid/location/LocationListener;

    :cond_1
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->n:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->p:Landroid/location/LocationListener;

    :cond_2
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:I

    return v0
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->D:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->G:Z

    return v0
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->H:F

    return v0
.end method

.method public s()V
    .locals 9

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->t()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_0
    new-instance v2, LLBSAPIProtocol/Measure;

    invoke-direct {v2}, LLBSAPIProtocol/Measure;-><init>()V

    invoke-static {}, Lcom/tencent/lbsapi/core/QLBSEngine;->v()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, LLBSAPIProtocol/Measure;->setLTime(J)V

    new-instance v0, LLBSAPIProtocol/GPS;

    iget v3, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    iget v4, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->B:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, LLBSAPIProtocol/GPS;-><init>(IIII)V

    invoke-virtual {v2, v0}, LLBSAPIProtocol/Measure;->setStGps(LLBSAPIProtocol/GPS;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, LLBSAPIProtocol/Measure;->setVCells(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, LLBSAPIProtocol/Measure;->getVCells()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, LLBSAPIProtocol/Cell;

    iget v4, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    int-to-short v4, v4

    iget v5, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    int-to-short v5, v5

    iget v6, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    iget v7, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    invoke-direct {v3, v4, v5, v6, v7}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, LLBSAPIProtocol/Measure;->getVCells()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, LLBSAPIProtocol/Cell;

    iget v6, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    int-to-short v6, v6

    iget v7, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    int-to-short v7, v7

    iget v8, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->y:I

    invoke-direct {v5, v6, v7, v8, v0}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, LLBSAPIProtocol/Measure;->setVMacs(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, LLBSAPIProtocol/Measure;->setStrExtraInfo(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/tencent/lbsapi/core/QLBSEngine;->a(Ljava/util/ArrayList;)V

    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public t()Ljava/util/ArrayList;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v2, "lbs_temp"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v2, "lbs_temp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v2, "lbs_temp"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_6
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_8
    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->j:Landroid/content/Context;

    const-string v2, "lbs_temp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wifiNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/lbsapi/core/QLBSEngine;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()LLBSAPIProtocol/Cell;
    .locals 5

    invoke-direct {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->readCell()V

    new-instance v0, LLBSAPIProtocol/Cell;

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->g()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->h()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->i()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/lbsapi/core/QLBSEngine;->j()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, LLBSAPIProtocol/Cell;-><init>(SSII)V

    return-object v0
.end method
