.class public final Lzs;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljr;

.field c:Lhk;

.field d:Lho;

.field e:Landroid/os/Handler;

.field private f:Ljb;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lzs;->a:Ljava/lang/Object;

    new-instance v0, Lzt;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lzt;-><init>(Lzs;Landroid/os/Looper;)V

    iput-object v0, p0, Lzs;->e:Landroid/os/Handler;

    new-instance v0, Ljr;

    invoke-direct {v0}, Ljr;-><init>()V

    iput-object v0, p0, Lzs;->b:Ljr;

    new-instance v0, Lhk;

    invoke-direct {v0}, Lhk;-><init>()V

    iput-object v0, p0, Lzs;->c:Lhk;

    invoke-static {}, Ljb;->a()Ljb;

    move-result-object v0

    iput-object v0, p0, Lzs;->f:Ljb;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lzs;->d:Lho;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmm;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SmsReport;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm;

    invoke-static {v0}, Lmm;->a(Lmm;)LQQPIM/SmsReport;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmb$a;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lmb$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    move-object v1, v0

    :goto_1
    if-ge v5, v6, :cond_3

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb$a;

    if-eqz v0, :cond_1

    iget v3, v0, Lmb$a;->e:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_5

    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Lcom/tencent/tccdb/MMatchSysResult;Z)Lmm;
    .locals 5

    new-instance v0, Lmm;

    invoke-direct {v0}, Lmm;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lmm;->j:Ljava/lang/String;

    iget v1, p1, Lcom/tencent/tccdb/MMatchSysResult;->finalAction:I

    iput v1, v0, Lmm;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lmm;->d:I

    iget v1, p1, Lcom/tencent/tccdb/MMatchSysResult;->minusMark:I

    iput v1, v0, Lmm;->h:I

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iput-object v1, v0, Lmm;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->getBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm;->c:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    iput v1, v0, Lmm;->n:I

    iget v1, p1, Lcom/tencent/tccdb/MMatchSysResult;->contentType:I

    iput v1, v0, Lmm;->f:I

    iget v1, p1, Lcom/tencent/tccdb/MMatchSysResult;->actionReason:I

    iput v1, v0, Lmm;->m:I

    iget-object v1, p1, Lcom/tencent/tccdb/MMatchSysResult;->ruleTypeID:[Lcom/tencent/tccdb/MRuleTypeID;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmm;->g:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/tccdb/MMatchSysResult;->ruleTypeID:[Lcom/tencent/tccdb/MRuleTypeID;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    iget-wide v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    iput-wide v1, v0, Lmm;->k:J

    :goto_0
    return-object v0

    :cond_1
    iget-wide v1, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    iput-wide v1, v0, Lmm;->l:J

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)LQQPIM/TelReport;
    .locals 6

    const/4 v5, 0x3

    new-instance v0, LQQPIM/TelReport;

    invoke-direct {v0}, LQQPIM/TelReport;-><init>()V

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, LQQPIM/TelReport;->calltime:I

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    iput-object v1, v0, LQQPIM/TelReport;->phonenum:Ljava/lang/String;

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    long-to-int v1, v1

    iput v1, v0, LQQPIM/TelReport;->talktime:I

    iget v1, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    iput v1, v0, LQQPIM/TelReport;->teltype:I

    :goto_0
    iget-object v1, p0, Lzs;->f:Ljb;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljb;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, LQQPIM/TelReport;->tagtype:I

    sget-object v1, LQQPIM/EUserAction;->EMUA_IMPEACH:LQQPIM/EUserAction;

    invoke-virtual {v1}, LQQPIM/EUserAction;->value()I

    move-result v1

    iput v1, v0, LQQPIM/TelReport;->useraction:I

    return-object v0

    :cond_0
    iput v5, v0, LQQPIM/TelReport;->teltype:I

    goto :goto_0
.end method

.method public final a(Lmk;ZZ)Lmm;
    .locals 8

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lzs;->b:Ljr;

    iget-wide v1, p1, Lmk;->date:J

    invoke-virtual {v0, v1, v2}, Ljr;->a(J)Lmm;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    new-instance v0, Lmm;

    invoke-direct {v0}, Lmm;-><init>()V

    iput v3, v0, Lmm;->a:I

    iput v3, v0, Lmm;->m:I

    const/4 v1, 0x0

    iput-object v1, v0, Lmm;->j:Ljava/lang/String;

    iput v3, v0, Lmm;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v6

    long-to-int v1, v1

    iput v1, v0, Lmm;->d:I

    iput v3, v0, Lmm;->h:I

    invoke-virtual {p1}, Lmk;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm;->c:Ljava/lang/String;

    iget v1, p1, Lmk;->protocolType:I

    iput v1, v0, Lmm;->n:I

    iput v3, v0, Lmm;->f:I

    if-eqz p2, :cond_3

    iget-wide v1, p1, Lmk;->date:J

    iput-wide v1, v0, Lmm;->k:J

    iput-wide v4, v0, Lmm;->l:J

    :goto_1
    iget v1, p1, Lmk;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    iput v1, v0, Lmm;->m:I

    :cond_0
    move-object v1, v0

    :goto_2
    if-eqz p3, :cond_1

    iget-object v2, v1, Lmm;->i:Ljava/util/ArrayList;

    new-instance v3, LQQPIM/UserActionTime;

    if-eqz p2, :cond_4

    const/16 v0, 0xb

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-direct {v3, v0, v4}, LQQPIM/UserActionTime;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lzs;->b:Ljr;

    iget-wide v1, p1, Lmk;->date:J

    invoke-virtual {v0, v1, v2}, Ljr;->b(J)Lmm;

    move-result-object v0

    goto :goto_0

    :cond_3
    iput-wide v4, v0, Lmm;->k:J

    iget-wide v1, p1, Lmk;->date:J

    iput-wide v1, v0, Lmm;->l:J

    goto :goto_1

    :cond_4
    const/16 v0, 0x13

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method public final a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v0, Lja;

    invoke-direct {v0}, Lja;-><init>()V

    invoke-virtual {v0, v6}, Lja;->a(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb;

    iget-object v0, v0, Lmb;->f:Ljava/util/List;

    invoke-static {v0, v2}, Lzs;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lzw;

    invoke-direct {v0}, Lzw;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lzx;

    invoke-direct {v1, p0, v4, v6, v0}, Lzx;-><init>(Lzs;Ljava/util/List;ZLdv;)V

    invoke-virtual {v1}, Lzx;->start()V

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;Ldv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmb$a;",
            ">;",
            "Ldv;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lzs;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lzx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, p2}, Lzx;-><init>(Lzs;Ljava/util/List;ZLdv;)V

    invoke-virtual {v1}, Lzx;->start()V

    goto :goto_0
.end method

.method public final a(Lmk;ZI)V
    .locals 7

    const/4 v6, 0x3

    const/16 v0, 0xd

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lzs;->a(Lmk;ZZ)Lmm;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v3, LQQPIM/UserActionTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-direct {v3, p3, v0}, LQQPIM/UserActionTime;-><init>(II)V

    iget v0, v2, Lmm;->a:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lzs;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_1
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    packed-switch p3, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget-object v1, v2, Lmm;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lzs;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lzs;->b:Ljr;

    iget-wide v1, p1, Lmk;->date:J

    invoke-virtual {v0, v1, v2}, Ljr;->a(J)Lmm;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lzs;->b:Ljr;

    iget-wide v1, p1, Lmk;->date:J

    invoke-virtual {v0, v1, v2}, Ljr;->b(J)Lmm;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lzs;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget v1, v2, Lmm;->e:I

    if-ne v1, v6, :cond_5

    const/4 v1, 0x5

    :goto_3
    iput v1, v3, LQQPIM/UserActionTime;->userAction:I

    goto :goto_2

    :cond_5
    const/16 v1, 0xa

    goto :goto_3

    :pswitch_2
    iget v1, v2, Lmm;->e:I

    if-ne v1, v6, :cond_6

    const/4 v1, 0x6

    :goto_4
    iput v1, v3, LQQPIM/UserActionTime;->userAction:I

    goto :goto_2

    :cond_6
    const/16 v1, 0x8

    goto :goto_4

    :pswitch_3
    iget v1, v2, Lmm;->e:I

    if-ne v1, v6, :cond_7

    const/4 v1, 0x7

    :goto_5
    iput v1, v3, LQQPIM/UserActionTime;->userAction:I

    goto :goto_2

    :cond_7
    const/16 v1, 0x9

    goto :goto_5

    :pswitch_4
    iput p3, v3, LQQPIM/UserActionTime;->userAction:I

    goto :goto_2

    :pswitch_5
    iput p3, v3, LQQPIM/UserActionTime;->userAction:I

    goto :goto_2

    :pswitch_6
    iput p3, v3, LQQPIM/UserActionTime;->userAction:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lmm;Z)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    iget-object v0, p0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->aF()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->cU()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lzs;->d:Lho;

    invoke-virtual {v4}, Lho;->dd()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->cX()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, La;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->cZ()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->cW()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->cV()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v5, "\\|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/high16 v8, -0x8000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lzs;->d:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lho;->y(J)V

    iget-object v0, p0, Lzs;->d:Lho;

    invoke-virtual {v0, v2}, Lho;->F(I)V

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_2
    iget v0, p1, Lmm;->e:I

    if-ne v0, v3, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v5, p1, Lmm;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v5, v0, :cond_4

    iget-object v0, p0, Lzs;->d:Lho;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lho;->F(I)V

    move v2, v3

    :cond_3
    :goto_3
    if-eqz v2, :cond_6

    iget-object v0, p0, Lzs;->e:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lzs;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_4
    return-void

    :cond_4
    iget v0, p1, Lmm;->e:I

    if-ne v0, v10, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v5, p1, Lmm;->h:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v5, v0, :cond_5

    iget-object v0, p0, Lzs;->d:Lho;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lho;->F(I)V

    move v2, v3

    goto :goto_3

    :cond_5
    iget v0, p1, Lmm;->e:I

    if-ne v0, v11, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v5, p1, Lmm;->h:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v5, v0, :cond_3

    iget-object v0, p0, Lzs;->d:Lho;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lho;->F(I)V

    move v2, v3

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lzs;->e:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lzs;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method
