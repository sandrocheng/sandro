.class public final Lorg/antivirus/tuneup/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/antivirus/tuneup/h;

.field private b:Lorg/antivirus/tuneup/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lorg/antivirus/AVSettings;->isPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/g;->b:Lorg/antivirus/tuneup/h;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/tuneup/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/antivirus/tuneup/h;-><init>(I)V

    iput-object v0, p0, Lorg/antivirus/tuneup/g;->b:Lorg/antivirus/tuneup/h;

    iget-object v0, p0, Lorg/antivirus/tuneup/g;->b:Lorg/antivirus/tuneup/h;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/tuneup/g;->a:Lorg/antivirus/tuneup/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/g;->a:Lorg/antivirus/tuneup/h;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/tuneup/g;->a:Lorg/antivirus/tuneup/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/tuneup/g;->b:Lorg/antivirus/tuneup/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/g;->b:Lorg/antivirus/tuneup/h;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/tuneup/g;->b:Lorg/antivirus/tuneup/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
