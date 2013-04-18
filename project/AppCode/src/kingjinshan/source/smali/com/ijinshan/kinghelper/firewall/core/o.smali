.class public final Lcom/ijinshan/kinghelper/firewall/core/o;
.super Ljava/lang/Object;
.source "FirewallTelephonyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/core/m;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/core/m;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->a:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->c:J

    .line 84
    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->b:Ljava/lang/String;

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->c:J

    .line 86
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->a:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/m;->a(Lcom/ijinshan/kinghelper/firewall/core/m;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->a:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/m;->b(Lcom/ijinshan/kinghelper/firewall/core/m;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    const-string v1, "number=? and date > ?"

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2ee0

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 98
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 101
    :try_start_0
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 103
    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->c:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/o;->a:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/m;->a(Lcom/ijinshan/kinghelper/firewall/core/m;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
