.class final Lcom/c/a/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# static fields
.field private static f:Lcom/c/a/a/r;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Z

.field private c:Z

.field private volatile d:Landroid/location/Location;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gps"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "network"

    aput-object v2, v0, v1

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/c/a/a/r;->f:Lcom/c/a/a/r;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-boolean v0, p0, Lcom/c/a/a/r;->b:Z

    .line 271
    iput-boolean v0, p0, Lcom/c/a/a/r;->c:Z

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    .line 281
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/c/a/a/r;->a:Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/c/a/a/r;
    .locals 2
    .parameter

    .prologue
    .line 290
    const-class v0, Lcom/c/a/a/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/c/a/a/r;->f:Lcom/c/a/a/r;

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Lcom/c/a/a/r;

    invoke-direct {v1, p0}, Lcom/c/a/a/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/c/a/a/r;->f:Lcom/c/a/a/r;

    .line 294
    :cond_0
    sget-object v1, Lcom/c/a/a/r;->f:Lcom/c/a/a/r;

    iput-object p0, v1, Lcom/c/a/a/r;->e:Landroid/content/Context;

    .line 295
    sget-object v1, Lcom/c/a/a/r;->f:Lcom/c/a/a/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/c/a/a/r;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 302
    return-void
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/c/a/a/r;->b:Z

    return v0
.end method

.method final c()Z
    .locals 6

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/c/a/a/r;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/c/a/a/r;->b:Z

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    const-string v1, "gps"

    .line 334
    iget-object v0, p0, Lcom/c/a/a/r;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 335
    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/r;->c:Z

    .line 338
    iget-object v0, p0, Lcom/c/a/a/r;->a:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/c/a/a/r;->c:Z

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/c/a/a/r;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 363
    iput-boolean v1, p0, Lcom/c/a/a/r;->c:Z

    .line 365
    iput-boolean v1, p0, Lcom/c/a/a/r;->b:Z

    .line 366
    iget-object v0, p0, Lcom/c/a/a/r;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 367
    return-void
.end method

.method public final onGpsStatusChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_0

    .line 449
    :goto_0
    :pswitch_0
    return-void

    .line 443
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/r;->b:Z

    goto :goto_0

    .line 446
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/a/r;->b:Z

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter

    .prologue
    const-wide v2, 0x40f86a0000000000L

    .line 372
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 376
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/c/a/a/s;->c:I

    .line 383
    iget-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/c/a/a/s;->d:I

    .line 384
    iget-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/c/a/a/s;->e:I

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/c/a/a/s;->g:J

    .line 386
    iget-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/c/a/a/s;->h:I

    .line 387
    iget-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/c/a/a/s;->i:I

    .line 388
    iget-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/c/a/a/s;->j:I

    .line 389
    const-string v0, "gps"

    iget-object v1, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    const-string v0, "wd"

    sput-object v0, Lcom/c/a/a/s;->f:Ljava/lang/String;

    .line 392
    iget-boolean v0, p0, Lcom/c/a/a/r;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/r;->c:Z

    iget-object v0, p0, Lcom/c/a/a/r;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 399
    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 410
    :try_start_3
    iget-object v0, p0, Lcom/c/a/a/r;->e:Landroid/content/Context;

    invoke-static {}, Lcom/c/a/a/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/a/a/s;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 380
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/c/a/a/r;->d:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 396
    :cond_2
    :try_start_5
    const-string v0, "cn"

    sput-object v0, Lcom/c/a/a/s;->f:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 405
    :catch_0
    move-exception v0

    .line 407
    :try_start_6
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
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 409
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    return-void
.end method
