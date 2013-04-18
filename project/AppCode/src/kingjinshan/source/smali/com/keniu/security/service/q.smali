.class final Lcom/keniu/security/service/q;
.super Ljava/lang/Thread;
.source "StartupReceiver.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/service/StartupReceiver;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/keniu/security/service/StartupReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/keniu/security/service/q;->a:Lcom/keniu/security/service/StartupReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/keniu/security/service/q;->b:Landroid/content/Context;

    .line 211
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 215
    iget-object v0, p0, Lcom/keniu/security/service/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 217
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    .line 219
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 220
    iget-object v2, p0, Lcom/keniu/security/service/q;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 227
    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 231
    const-string v2, "last_imsi_for_sim_change"

    invoke-virtual {v0, v2}, Lcom/keniu/security/sync/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    const-string v2, "last_imsi_for_sim_change"

    invoke-virtual {v0, v2, v1}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_2
    :goto_1
    return-void

    .line 234
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/keniu/security/service/q;->a:Lcom/keniu/security/service/StartupReceiver;

    invoke-static {}, Lcom/keniu/security/service/StartupReceiver;->a()V

    goto :goto_1
.end method
