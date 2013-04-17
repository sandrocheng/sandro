.class public final Lqc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqc$a;
    }
.end annotation


# static fields
.field public static g:Z

.field public static h:Z


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

.field public c:I

.field public d:Landroid/content/Context;

.field e:Landroid/os/Handler;

.field public f:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field public i:Z

.field public j:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqc;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lqc;->e:Landroid/os/Handler;

    iput-object p1, p0, Lqc;->d:Landroid/content/Context;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lqc;->f:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    return-void
.end method

.method public static a()I
    .locals 7

    const-wide/16 v2, 0x0

    invoke-static {}, Lf;->f()Ljc;

    move-result-object v0

    iget-object v0, v0, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_time_of_check_new"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    sub-long v0, v4, v0

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    :goto_1
    long-to-int v0, v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public static a(I)I
    .locals 5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lqc;->a()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-static {}, Lf;->f()Ljc;

    move-result-object v3

    iget-object v3, v3, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v4, "last_check_is_optimization"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x64

    if-gt p0, v3, :cond_1

    const/16 v3, 0x55

    if-lt p0, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v3, 0x54

    if-gt p0, v3, :cond_3

    const/16 v3, 0x3c

    if-lt p0, v3, :cond_3

    invoke-static {}, Lf;->f()Ljc;

    move-result-object v0

    iget-object v0, v0, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v3, "last_danger_of_check_new"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v2, 0x3b

    if-gt p0, v2, :cond_0

    if-ltz p0, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILlc;)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lqc;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lqc;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lqc;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
