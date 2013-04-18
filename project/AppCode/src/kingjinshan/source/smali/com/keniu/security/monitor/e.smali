.class final Lcom/keniu/security/monitor/e;
.super Ljava/lang/Thread;
.source "UnistLogCatMonitor.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/monitor/d;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;

.field private d:Ljava/lang/Process;

.field private e:Ljava/io/BufferedReader;

.field private f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/keniu/security/monitor/d;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 194
    new-instance v0, Lcom/keniu/security/monitor/f;

    invoke-direct {v0, p0}, Lcom/keniu/security/monitor/f;-><init>(Lcom/keniu/security/monitor/e;)V

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/monitor/e;)Ljava/io/BufferedReader;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Process;
    .locals 2
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 78
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/monitor/e;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, -0x1

    .line 64
    const-string v0, "Starting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "action.DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "dat=package:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    new-instance v1, Ljava/lang/String;

    const-string v2, "dat=package:"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, " cmp="

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "Starting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "dat=package:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    new-instance v1, Ljava/lang/String;

    const-string v2, "dat=package:"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, " cmp="

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0b077a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/monitor/e;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, -0x1

    .line 113
    const-string v0, "Starting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "action.DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 115
    const-string v0, "dat=package:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 116
    if-eq v0, v3, :cond_1

    .line 118
    new-instance v1, Ljava/lang/String;

    const-string v2, "dat=package:"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    const-string v1, " cmp="

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 120
    if-eq v1, v3, :cond_1

    .line 122
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    const-string v0, "Starting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 130
    const-string v0, "dat=package:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 131
    if-eq v0, v3, :cond_1

    .line 133
    new-instance v1, Ljava/lang/String;

    const-string v2, "dat=package:"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    const-string v1, " cmp="

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 135
    if-eq v1, v3, :cond_1

    .line 137
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0b077a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v0}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0b077a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/keniu/security/monitor/e;->a:Lcom/keniu/security/monitor/d;

    invoke-static {v1}, Lcom/keniu/security/monitor/d;->a(Lcom/keniu/security/monitor/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 149
    const-string v0, "logcat -c"

    invoke-static {v0}, Lcom/keniu/security/monitor/e;->a(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    .line 151
    const-string v0, "logcat -v raw ActivityManager:I *:S"

    invoke-static {v0}, Lcom/keniu/security/monitor/e;->a(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    .line 152
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 161
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 163
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->c:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->d:Ljava/lang/Process;

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->e:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 243
    :try_start_1
    invoke-virtual {p0}, Lcom/keniu/security/monitor/e;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :cond_2
    :goto_1
    return-void

    .line 236
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/keniu/security/monitor/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->c:Landroid/os/Looper;

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/monitor/e;->b:Landroid/os/Handler;

    .line 226
    iget-object v0, p0, Lcom/keniu/security/monitor/e;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/monitor/e;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 230
    :cond_0
    return-void
.end method
