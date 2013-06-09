.class public final Lorg/antivirus/antitheft/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lorg/antivirus/antitheft/u;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Lorg/antivirus/antitheft/u;J)V
    .locals 2

    iput-object p1, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/antivirus/antitheft/v;->b:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lorg/antivirus/antitheft/v;->c:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iput-wide p2, p0, Lorg/antivirus/antitheft/v;->c:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 4

    if-nez p1, :cond_1

    const-string v0, "Null location"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v1, Lorg/antivirus/antitheft/u;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->a(Lorg/antivirus/antitheft/u;D)D

    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->b(Lorg/antivirus/antitheft/u;D)D

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->c(Lorg/antivirus/antitheft/u;D)D

    :goto_1
    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->a(Lorg/antivirus/antitheft/u;J)J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/antivirus/antitheft/v;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/antivirus/antitheft/v;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lorg/antivirus/AvApplication;->getInstance()Lorg/antivirus/AvApplication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-static {}, Lorg/antivirus/antitheft/u;->i()Z

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    const-wide/high16 v2, -0x4010

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->c(Lorg/antivirus/antitheft/u;D)D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lorg/antivirus/antitheft/u;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->d(Lorg/antivirus/antitheft/u;D)D

    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->e(Lorg/antivirus/antitheft/u;D)D

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->f(Lorg/antivirus/antitheft/u;D)D

    :goto_4
    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->b(Lorg/antivirus/antitheft/u;J)J

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/antivirus/antitheft/v;->a:Lorg/antivirus/antitheft/u;

    const-wide/high16 v2, -0x4010

    invoke-static {v0, v2, v3}, Lorg/antivirus/antitheft/u;->f(Lorg/antivirus/antitheft/u;D)D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
