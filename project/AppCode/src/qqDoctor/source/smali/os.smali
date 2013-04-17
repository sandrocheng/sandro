.class final Los;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;


# instance fields
.field final synthetic a:Lop;


# direct methods
.method constructor <init>(Lop;)V
    .locals 0

    iput-object p1, p0, Los;->a:Lop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleCheckResult(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;Z)Z
    .locals 9

    const/16 v3, 0x32

    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p3

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lft;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Los;->a:Lop;

    invoke-static {v0}, Lop;->h(Lop;)Lio;

    move-result-object v0

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v2}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lio;->e:Ljava/lang/String;

    invoke-static {v2}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Los;->a:Lop;

    invoke-static {v0}, Lop;->l(Lop;)Lzs;

    iget-object v0, p2, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    invoke-static {p1, v0, v6}, Lzs;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tccdb/MMatchSysResult;Z)Lmm;

    move-result-object v0

    new-instance v2, LQQPIM/UserActionTime;

    invoke-direct {v2}, LQQPIM/UserActionTime;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v7

    long-to-int v3, v3

    iput v3, v2, LQQPIM/UserActionTime;->time:I

    const/16 v3, 0x12

    iput v3, v2, LQQPIM/UserActionTime;->userAction:I

    iget-object v3, v0, Lmm;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Los;->a:Lop;

    invoke-static {v2}, Lop;->l(Lop;)Lzs;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lzs;->a(Lmm;Z)V

    move p3, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Los;->a:Lop;

    invoke-static {v0}, Lop;->i(Lop;)Liq;

    move-result-object v0

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v2}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Liq;->e:Ljava/lang/String;

    invoke-static {v2}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Los;->a:Lop;

    invoke-static {v0}, Lop;->l(Lop;)Lzs;

    iget-object v0, p2, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    invoke-static {p1, v0, v6}, Lzs;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tccdb/MMatchSysResult;Z)Lmm;

    move-result-object v0

    new-instance v2, LQQPIM/UserActionTime;

    invoke-direct {v2}, LQQPIM/UserActionTime;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v7

    long-to-int v3, v3

    iput v3, v2, LQQPIM/UserActionTime;->time:I

    const/16 v3, 0x15

    iput v3, v2, LQQPIM/UserActionTime;->userAction:I

    iget-object v3, v0, Lmm;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Los;->a:Lop;

    invoke-static {v2}, Lop;->l(Lop;)Lzs;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lzs;->a(Lmm;Z)V

    move p3, v1

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_6

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v2, p0, Los;->a:Lop;

    invoke-static {v2}, Lop;->k(Lop;)Ljp;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Los;->a:Lop;

    invoke-static {v2}, Lop;->j(Lop;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v3}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lot;

    invoke-direct {v3, p0, v0, p1}, Lot;-><init>(Los;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Los;->a:Lop;

    invoke-static {v0}, Lop;->l(Lop;)Lzs;

    iget-object v0, p2, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    invoke-static {p1, v0, v6}, Lzs;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tccdb/MMatchSysResult;Z)Lmm;

    move-result-object v0

    new-instance v2, LQQPIM/UserActionTime;

    invoke-direct {v2}, LQQPIM/UserActionTime;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v7

    long-to-int v3, v3

    iput v3, v2, LQQPIM/UserActionTime;->time:I

    const/16 v3, 0x16

    iput v3, v2, LQQPIM/UserActionTime;->userAction:I

    iget-object v3, v0, Lmm;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Los;->a:Lop;

    invoke-static {v2}, Lop;->l(Lop;)Lzs;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lzs;->a(Lmm;Z)V

    move p3, v1

    goto/16 :goto_0
.end method
