.class final Lor;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lop;


# direct methods
.method constructor <init>(Lop;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lor;->a:Lop;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 14

    const-wide/16 v12, 0x3a98

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->c(Lop;)Lki;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v10}, Lki;->a(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    :cond_0
    iget-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->d(Lop;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->b()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v11, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->e(Lop;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v3, v10}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->f(Lop;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v3, v10}, Lcom/tencent/tmsecure/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->c(Lop;)Lki;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lki;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->g(Lop;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->h(Lop;)Lio;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v3}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v0, v0, Lio;->e:Ljava/lang/String;

    invoke-static {v3}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->i(Lop;)Liq;

    move-result-object v0

    iget-object v3, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v3}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v0, v0, Liq;->e:Ljava/lang/String;

    invoke-static {v3}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lft;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    iget-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->j(Lop;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v8, v4, v12

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v12

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    :cond_5
    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->j(Lop;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->a(Lop;)Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->shouldBeBlockedOrNot(Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Lmk;

    invoke-direct {v3}, Lmk;-><init>()V

    iget-object v4, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    iput-object v4, v3, Lmk;->phonenum:Ljava/lang/String;

    iget v4, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->type:I

    iput v4, v3, Lmk;->type:I

    iget-object v4, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iput-object v4, v3, Lmk;->body:Ljava/lang/String;

    iget-wide v4, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    iput-wide v4, v3, Lmk;->date:J

    new-instance v4, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    const/16 v5, 0x40

    iput v5, v4, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mFilterfiled:I

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v1

    iput-object v5, v4, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->k(Lop;)Ljp;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljp;->a(Lmk;Lcom/tencent/tmsecure/module/aresengine/FilterResult;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->c(Lop;)Lki;

    move-result-object v0

    invoke-virtual {v0, v2}, Lki;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->d(Lop;)Lho;

    move-result-object v0

    iget-object v2, p0, Lor;->a:Lop;

    invoke-static {v2}, Lop;->d(Lop;)Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->K()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lho;->e(I)V

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->b(Lop;)Lov;

    move-result-object v0

    invoke-virtual {v0, v11, v3}, Lov;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->c(Lop;)Lki;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v11}, Lki;->a(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lor;->a:Lop;

    invoke-static {v0}, Lop;->i(Lop;)Liq;

    move-result-object v3

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, v3, Liq;->e:Ljava/lang/String;

    invoke-static {v0}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_4
    if-nez v0, :cond_1

    iget-object v0, v3, Liq;->c:Lhq;

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Liq;->d:Lhq;

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Liq;->b:Lki;

    iget-object v1, v2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lki;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Liq;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :cond_a
    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mSuggestion:I

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_4
.end method
