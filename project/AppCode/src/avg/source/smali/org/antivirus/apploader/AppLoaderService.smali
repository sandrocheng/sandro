.class public Lorg/antivirus/apploader/AppLoaderService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 7

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0xb

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    :cond_0
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide v5, 0x41612a8800000000L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    add-long/2addr v0, v3

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lorg/antivirus/apploader/a;

    invoke-direct {v0}, Lorg/antivirus/apploader/a;-><init>()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/antivirus/apploader/b;

    invoke-direct {v2, v0, p0}, Lorg/antivirus/apploader/b;-><init>(Lorg/antivirus/apploader/a;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
