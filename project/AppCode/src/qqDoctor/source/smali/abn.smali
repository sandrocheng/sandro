.class final Labn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

.field private synthetic b:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

.field private synthetic c:Labm;


# direct methods
.method constructor <init>(Labm;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V
    .locals 0

    iput-object p1, p0, Labn;->c:Labm;

    iput-object p2, p0, Labn;->a:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iput-object p3, p0, Labn;->b:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Labn;->c:Labm;

    invoke-static {v0}, Labm;->a(Labm;)Ljp;

    move-result-object v0

    iget-object v1, p0, Labn;->a:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Labn;->c:Labm;

    invoke-static {v1}, Labm;->a(Labm;)Ljp;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljp;->b(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labn;->c:Labm;

    invoke-static {v1}, Labm;->b(Labm;)Lov;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Labn;->b:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {v1, v2, v3}, Lov;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v3, p0, Labn;->c:Labm;

    invoke-static {v3}, Labm;->c(Labm;)Lzs;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lzs;->a(Lmk;ZZ)Lmm;

    move-result-object v0

    new-instance v3, LQQPIM/UserActionTime;

    invoke-direct {v3}, LQQPIM/UserActionTime;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, LQQPIM/UserActionTime;->time:I

    const/16 v4, 0x12

    iput v4, v3, LQQPIM/UserActionTime;->userAction:I

    iget-object v4, v0, Lmm;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Labn;->c:Labm;

    invoke-static {v3}, Labm;->c(Labm;)Lzs;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lzs;->a(Lmm;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x6732

    :try_start_1
    invoke-virtual {v1, v0}, Lnd;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
