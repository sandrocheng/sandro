.class public final Lorg/antivirus/antitheft/u;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field private static m:Z

.field private static n:Z


# instance fields
.field private final c:I

.field private final d:I

.field private e:D

.field private f:D

.field private g:D

.field private h:J

.field private i:D

.field private j:D

.field private k:D

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/antivirus/antitheft/u;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/antivirus/antitheft/u;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/antivirus/antitheft/u;->m:Z

    const/4 v0, 0x0

    sput-boolean v0, Lorg/antivirus/antitheft/u;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lorg/antivirus/antitheft/u;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/antitheft/u;->d:I

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 p0, 0x0

    :cond_1
    return-wide p0
.end method

.method static synthetic a(Lorg/antivirus/antitheft/u;D)D
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/antitheft/u;->e:D

    return-wide p1
.end method

.method static synthetic a(Lorg/antivirus/antitheft/u;J)J
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/antitheft/u;->h:J

    return-wide p1
.end method

.method private static b(D)D
    .locals 2

    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 p0, 0x0

    :cond_1
    return-wide p0
.end method

.method static synthetic b(Lorg/antivirus/antitheft/u;D)D
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/antitheft/u;->f:D

    return-wide p1
.end method

.method static synthetic b(Lorg/antivirus/antitheft/u;J)J
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/antitheft/u;->l:J

    return-wide p1
.end method

.method public static b(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Z
    .locals 2

    sget-boolean v0, Lorg/antivirus/antitheft/u;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/antivirus/core/EngineSettings;->getGpsInDevice()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/antivirus/core/compatibility/AndroidVersionCompatibility;->isEclairOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/antivirus/core/compatibility/EclairTools;->isGpsInDevice(Landroid/content/Context;)Z

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/antivirus/core/EngineSettings;->setGpsInDevice(Z)V

    const/4 v1, 0x1

    sput-boolean v1, Lorg/antivirus/antitheft/u;->n:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lorg/antivirus/antitheft/u;D)D
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/antitheft/u;->g:D

    return-wide p1
.end method

.method static synthetic d(Lorg/antivirus/antitheft/u;D)D
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/antitheft/u;->i:D

    return-wide p1
.end method

.method static synthetic e(Lorg/antivirus/antitheft/u;D)D
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/antitheft/u;->j:D

    return-wide p1
.end method

.method static synthetic f(Lorg/antivirus/antitheft/u;D)D
    .locals 0

    iput-wide p1, p0, Lorg/antivirus/antitheft/u;->k:D

    return-wide p1
.end method

.method static synthetic i()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/antivirus/antitheft/u;->m:Z

    return v0
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/antitheft/u;->e:D

    invoke-static {v0, v1}, Lorg/antivirus/antitheft/u;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)V
    .locals 4

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lorg/antivirus/antitheft/u;->b(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/antivirus/antitheft/u;->f:D

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/antivirus/antitheft/u;->e:D

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lorg/antivirus/antitheft/u;->g:D

    :goto_1
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/antivirus/antitheft/u;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_2
    :try_start_1
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/antivirus/antitheft/u;->j:D

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/antivirus/antitheft/u;->i:D

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lorg/antivirus/antitheft/u;->k:D

    :goto_3
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/antivirus/antitheft/u;->l:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    const-wide/high16 v2, -0x4010

    :try_start_2
    iput-wide v2, p0, Lorg/antivirus/antitheft/u;->g:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_4
    const-wide/high16 v1, -0x4010

    :try_start_3
    iput-wide v1, p0, Lorg/antivirus/antitheft/u;->k:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method public final a(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;J)V
    .locals 6

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string v0, "Null LocationManager"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lorg/antivirus/antitheft/u;->b(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "gps"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    new-instance v5, Lorg/antivirus/antitheft/v;

    invoke-direct {v5, p0, p3, p4}, Lorg/antivirus/antitheft/v;-><init>(Lorg/antivirus/antitheft/u;J)V

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    :try_start_1
    const-string v1, "network"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    new-instance v5, Lorg/antivirus/antitheft/v;

    invoke-direct {v5, p0, p3, p4}, Lorg/antivirus/antitheft/v;-><init>(Lorg/antivirus/antitheft/u;J)V

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/antitheft/u;->f:D

    invoke-static {v0, v1}, Lorg/antivirus/antitheft/u;->b(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final c()D
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/antitheft/u;->i:D

    invoke-static {v0, v1}, Lorg/antivirus/antitheft/u;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()D
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/antitheft/u;->j:D

    invoke-static {v0, v1}, Lorg/antivirus/antitheft/u;->b(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final e()D
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/antitheft/u;->g:D

    return-wide v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/antitheft/u;->h:J

    return-wide v0
.end method

.method public final g()D
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/antitheft/u;->k:D

    return-wide v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lorg/antivirus/antitheft/u;->l:J

    return-wide v0
.end method
