.class final Lcom/keniu/security/traffic/dl;
.super Ljava/lang/Object;
.source "TrafficUpdater2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Lcom/keniu/security/traffic/dl;->a:Landroid/content/Context;

    .line 639
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 643
    .line 644
    invoke-static {}, Lcom/keniu/security/traffic/dd;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(J)J

    .line 645
    invoke-static {}, Lcom/keniu/security/traffic/dd;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/keniu/security/traffic/dd;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 647
    invoke-static {}, Lcom/keniu/security/traffic/dd;->d()J

    move v0, v5

    .line 653
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/traffic/dl;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Z)V

    .line 654
    iget-object v0, p0, Lcom/keniu/security/traffic/dl;->a:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/dd;->a()J

    move-result-wide v1

    invoke-static {v0, p0, v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 655
    return-void

    .line 648
    :cond_0
    sget-boolean v0, Lcom/keniu/security/traffic/dd;->g:Z

    if-eqz v0, :cond_1

    .line 649
    sput-boolean v4, Lcom/keniu/security/traffic/dd;->g:Z

    move v0, v5

    .line 650
    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method
