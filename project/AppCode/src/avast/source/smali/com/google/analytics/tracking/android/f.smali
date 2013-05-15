.class Lcom/google/analytics/tracking/android/f;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/e;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private b:Lcom/google/analytics/tracking/android/h;

.field private c:Lcom/google/analytics/tracking/android/i;

.field private d:Landroid/content/Context;

.field private e:Lcom/google/android/gms/analytics/internal/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;Lcom/google/analytics/tracking/android/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/analytics/tracking/android/f;->d:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/analytics/tracking/android/f;->b:Lcom/google/analytics/tracking/android/h;

    .line 59
    iput-object p3, p0, Lcom/google/analytics/tracking/android/f;->c:Lcom/google/analytics/tracking/android/i;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/f;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/analytics/tracking/android/f;->a:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/f;Lcom/google/android/gms/analytics/internal/b;)Lcom/google/android/gms/analytics/internal/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/analytics/tracking/android/f;->e:Lcom/google/android/gms/analytics/internal/b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/tracking/android/f;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/f;->g()V

    return-void
.end method

.method static synthetic b(Lcom/google/analytics/tracking/android/f;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/tracking/android/f;)Lcom/google/analytics/tracking/android/i;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->c:Lcom/google/analytics/tracking/android/i;

    return-object v0
.end method

.method static synthetic d(Lcom/google/analytics/tracking/android/f;)Lcom/google/analytics/tracking/android/h;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->b:Lcom/google/analytics/tracking/android/h;

    return-object v0
.end method

.method private f()Lcom/google/android/gms/analytics/internal/b;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/f;->d()V

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->e:Lcom/google/android/gms/analytics/internal/b;

    return-object v0
.end method

.method private g()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/f;->h()V

    .line 182
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->b:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/h;->a()V

    .line 190
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/f;->f()Lcom/google/android/gms/analytics/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/b;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear hits failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/f;->f()Lcom/google/android/gms/analytics/internal/b;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/b;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHit failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/f;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/google/analytics/tracking/android/f;->a:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 71
    const-string v0, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->c(Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v1, Lcom/google/analytics/tracking/android/g;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/g;-><init>(Lcom/google/analytics/tracking/android/f;)V

    iput-object v1, p0, Lcom/google/analytics/tracking/android/f;->a:Landroid/content/ServiceConnection;

    .line 75
    iget-object v1, p0, Lcom/google/analytics/tracking/android/f;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/f;->a:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: bindService returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->e(Ljava/lang/String;)I

    .line 78
    if-nez v1, :cond_0

    .line 79
    iput-object v4, p0, Lcom/google/analytics/tracking/android/f;->a:Landroid/content/ServiceConnection;

    .line 80
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->c:Lcom/google/analytics/tracking/android/i;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v4}, Lcom/google/analytics/tracking/android/i;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iput-object v2, p0, Lcom/google/analytics/tracking/android/f;->e:Lcom/google/android/gms/analytics/internal/b;

    .line 94
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/f;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    iput-object v2, p0, Lcom/google/analytics/tracking/android/f;->a:Landroid/content/ServiceConnection;

    .line 97
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->b:Lcom/google/analytics/tracking/android/h;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/h;->b()V

    .line 99
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/analytics/tracking/android/f;->e:Lcom/google/android/gms/analytics/internal/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
