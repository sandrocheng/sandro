.class final Lcom/keniu/security/service/n;
.super Ljava/lang/Object;
.source "StartupReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/keniu/security/service/StartupReceiver;


# direct methods
.method constructor <init>(Lcom/keniu/security/service/StartupReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/keniu/security/service/n;->b:Lcom/keniu/security/service/StartupReceiver;

    iput-object p2, p0, Lcom/keniu/security/service/n;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    .line 79
    iget-object v0, p0, Lcom/keniu/security/service/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 80
    invoke-static {}, Lcom/keniu/security/traffic/q;->e()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/keniu/security/traffic/q;->d()Ljava/lang/String;

    move-result-object v1

    .line 82
    const-string v2, "trafficfirewall"

    const-string v3, "-------------run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    :cond_0
    const-string v0, "trafficfirewall"

    const-string v1, "----------before enterroot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/keniu/security/service/n;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Z)Z

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/service/n;->b:Lcom/keniu/security/service/StartupReceiver;

    iget-object v1, p0, Lcom/keniu/security/service/n;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keniu/security/service/StartupReceiver;->a(Lcom/keniu/security/service/StartupReceiver;Landroid/content/Context;)Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/keniu/security/service/n;->b:Lcom/keniu/security/service/StartupReceiver;

    invoke-static {v0}, Lcom/keniu/security/service/StartupReceiver;->b(Lcom/keniu/security/service/StartupReceiver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/service/o;

    invoke-direct {v1, p0}, Lcom/keniu/security/service/o;-><init>(Lcom/keniu/security/service/n;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
