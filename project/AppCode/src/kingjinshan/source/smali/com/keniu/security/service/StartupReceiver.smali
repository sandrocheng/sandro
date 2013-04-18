.class public Lcom/keniu/security/service/StartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartupReceiver.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    new-instance v0, Lcom/keniu/security/service/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/service/m;-><init>(Lcom/keniu/security/service/StartupReceiver;)V

    iput-object v0, p0, Lcom/keniu/security/service/StartupReceiver;->a:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/service/StartupReceiver;->b:Landroid/content/Context;

    .line 206
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/service/StartupReceiver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/keniu/security/service/StartupReceiver;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/service/StartupReceiver;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/keniu/security/service/StartupReceiver;->b:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a()V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "dialog_type"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    const-string v1, "last_imsi_for_sim_change"

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lcom/keniu/security/service/StartupReceiver;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0b0781

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p0, v4}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;Z)V

    move v0, v4

    .line 190
    :goto_0
    return v0

    .line 186
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 187
    goto :goto_0

    .line 189
    :cond_1
    invoke-static {p0, v5}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;Z)V

    move v0, v5

    .line 190
    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/service/StartupReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/keniu/security/service/StartupReceiver;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private static b()V
    .locals 4

    .prologue
    .line 243
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    .line 244
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 248
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    const-string v2, "dialog_type"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 255
    const-string v1, "last_imsi_for_sim_change"

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "startupReceiver startLock"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ScreenLockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "preview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 195
    sget v0, Lcom/keniu/security/monitor/a;->x:I

    if-ne p1, v0, :cond_1

    .line 196
    const-string v0, "monitorNotify"

    const-string v1, "TYPE_ENTER_ROOT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "monitorNotify"

    const-string v1, "TYPE_ENTER_ROOT2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/keniu/security/service/StartupReceiver;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Z)Z

    .line 201
    :cond_0
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 203
    :cond_1
    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iput-object p1, p0, Lcom/keniu/security/service/StartupReceiver;->b:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/service/MoSecurityService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v1, "IsAutoStartup"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0b0783

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "order suoding"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lcom/keniu/security/service/StartupReceiver;->b(Landroid/content/Context;)V

    .line 74
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keniu/security/service/n;

    invoke-direct {v1, p0, p1}, Lcom/keniu/security/service/n;-><init>(Lcom/keniu/security/service/StartupReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    :cond_2
    return-void

    .line 68
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lcom/keniu/security/service/p;

    invoke-direct {v0, p0, p1}, Lcom/keniu/security/service/p;-><init>(Lcom/keniu/security/service/StartupReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/keniu/security/service/p;->start()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 68
    goto :goto_1
.end method
