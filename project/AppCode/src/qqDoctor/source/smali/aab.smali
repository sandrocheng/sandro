.class public final Laab;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lmk;

.field private synthetic b:Lcom/tencent/tccdb/MMatchSysResult;

.field private synthetic c:Ldv;

.field private synthetic d:Lzs;


# direct methods
.method public constructor <init>(Lzs;Lmk;Lcom/tencent/tccdb/MMatchSysResult;Ldv;)V
    .locals 0

    iput-object p1, p0, Laab;->d:Lzs;

    iput-object p2, p0, Laab;->a:Lmk;

    iput-object p3, p0, Laab;->b:Lcom/tencent/tccdb/MMatchSysResult;

    iput-object p4, p0, Laab;->c:Ldv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-wide/16 v5, 0x3e8

    iget-object v0, p0, Laab;->d:Lzs;

    iget-object v0, v0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->dc()I

    move-result v1

    iget-object v0, p0, Laab;->d:Lzs;

    iget-object v0, v0, Lzs;->b:Ljr;

    iget-object v2, p0, Laab;->a:Lmk;

    iget-wide v2, v2, Lmk;->date:J

    invoke-virtual {v0, v2, v3}, Ljr;->a(J)Lmm;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laab;->d:Lzs;

    iget-object v0, v0, Lzs;->b:Ljr;

    iget-object v2, p0, Laab;->a:Lmk;

    iget-wide v2, v2, Lmk;->date:J

    invoke-virtual {v0, v2, v3}, Ljr;->b(J)Lmm;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_4

    new-instance v0, Lmm;

    invoke-direct {v0}, Lmm;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lmm;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v5

    long-to-int v2, v2

    iput v2, v0, Lmm;->d:I

    iget-object v2, p0, Laab;->a:Lmk;

    invoke-virtual {v2}, Lmk;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm;->b:Ljava/lang/String;

    iget-object v2, p0, Laab;->a:Lmk;

    invoke-virtual {v2}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lmm;->c:Ljava/lang/String;

    iget-object v2, p0, Laab;->a:Lmk;

    iget v2, v2, Lmk;->protocolType:I

    iput v2, v0, Lmm;->n:I

    iget-object v2, p0, Laab;->b:Lcom/tencent/tccdb/MMatchSysResult;

    iget v2, v2, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    iput v2, v0, Lmm;->m:I

    iget-object v2, p0, Laab;->b:Lcom/tencent/tccdb/MMatchSysResult;

    iget v2, v2, Lcom/tencent/tccdb/MMatchSysResult;->finalAction:I

    iput v2, v0, Lmm;->e:I

    iget-object v2, p0, Laab;->b:Lcom/tencent/tccdb/MMatchSysResult;

    iget v2, v2, Lcom/tencent/tccdb/MMatchSysResult;->minusMark:I

    iput v2, v0, Lmm;->h:I

    iget-object v2, p0, Laab;->b:Lcom/tencent/tccdb/MMatchSysResult;

    iget v2, v2, Lcom/tencent/tccdb/MMatchSysResult;->contentType:I

    iput v2, v0, Lmm;->f:I

    iget-object v2, p0, Laab;->b:Lcom/tencent/tccdb/MMatchSysResult;

    iget-object v2, v2, Lcom/tencent/tccdb/MMatchSysResult;->ruleTypeID:[Lcom/tencent/tccdb/MRuleTypeID;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmm;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Laab;->b:Lcom/tencent/tccdb/MMatchSysResult;

    iget-object v3, v3, Lcom/tencent/tccdb/MMatchSysResult;->ruleTypeID:[Lcom/tencent/tccdb/MRuleTypeID;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    iget v2, v0, Lmm;->a:I

    if-lez v2, :cond_5

    iget-object v2, p0, Laab;->d:Lzs;

    iget-object v2, v2, Lzs;->b:Ljr;

    invoke-virtual {v2, v0}, Ljr;->b(Lmm;)V

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laab;->d:Lzs;

    iget-object v0, v0, Lzs;->b:Ljr;

    iget-object v3, p0, Laab;->d:Lzs;

    iget-object v3, v3, Lzs;->d:Lho;

    invoke-virtual {v3}, Lho;->db()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Ljr;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Laab;->d:Lzs;

    invoke-static {v1}, Lzs;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSms(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Laab;->d:Lzs;

    iget-object v2, v2, Lzs;->b:Ljr;

    invoke-virtual {v2, v1}, Ljr;->a(Ljava/util/List;)V

    :cond_2
    iget-object v1, p0, Laab;->c:Ldv;

    if-eqz v1, :cond_3

    iget-object v1, p0, Laab;->c:Ldv;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ldv;->a(Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    new-instance v2, LQQPIM/UserActionTime;

    invoke-direct {v2}, LQQPIM/UserActionTime;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, LQQPIM/UserActionTime;->time:I

    const/16 v3, 0xb

    iput v3, v2, LQQPIM/UserActionTime;->userAction:I

    iget-object v3, v0, Lmm;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Laab;->d:Lzs;

    iget-object v2, v2, Lzs;->b:Ljr;

    invoke-virtual {v2, v0}, Ljr;->a(Lmm;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
