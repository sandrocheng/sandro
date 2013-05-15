.class final Lcom/google/analytics/tracking/android/g;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/f;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/f;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/analytics/tracking/android/g;->a:Lcom/google/analytics/tracking/android/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service connected, binder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->b(Ljava/lang/String;)I

    .line 150
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "bound to service"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->b(Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Lcom/google/analytics/tracking/android/f;

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/f;->a(Lcom/google/analytics/tracking/android/f;Lcom/google/android/gms/analytics/internal/b;)Lcom/google/android/gms/analytics/internal/b;

    .line 155
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Lcom/google/analytics/tracking/android/f;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/f;->a(Lcom/google/analytics/tracking/android/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Lcom/google/analytics/tracking/android/f;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/f;->b(Lcom/google/analytics/tracking/android/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 164
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Lcom/google/analytics/tracking/android/f;

    invoke-static {v0, v2}, Lcom/google/analytics/tracking/android/f;->a(Lcom/google/analytics/tracking/android/f;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 165
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Lcom/google/analytics/tracking/android/f;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/f;->c(Lcom/google/analytics/tracking/android/f;)Lcom/google/analytics/tracking/android/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/analytics/tracking/android/i;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ay;->b(Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Lcom/google/analytics/tracking/android/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/f;->a(Lcom/google/analytics/tracking/android/f;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 172
    iget-object v0, p0, Lcom/google/analytics/tracking/android/g;->a:Lcom/google/analytics/tracking/android/f;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/f;->d(Lcom/google/analytics/tracking/android/f;)Lcom/google/analytics/tracking/android/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/h;->b()V

    .line 173
    return-void
.end method
