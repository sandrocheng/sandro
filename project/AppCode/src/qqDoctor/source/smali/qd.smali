.class public final Lqd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lqc;


# direct methods
.method public constructor <init>(Lqc;)V
    .locals 0

    iput-object p1, p0, Lqd;->a:Lqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x2

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v1, Lqo;

    invoke-direct {v1, v0}, Lqo;-><init>(Lqc;)V

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    const/4 v4, 0x4

    iput v4, v0, Llc;->a:I

    invoke-interface {v1, v0}, Lqc$a;->c(Llc;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->f()Z

    move-result v0

    new-instance v4, Llc;

    invoke-direct {v4}, Llc;-><init>()V

    const/4 v7, 0x4

    iput v7, v4, Llc;->a:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Llc;->c:Ljava/lang/Object;

    invoke-interface {v1, v4}, Lqc$a;->a(Llc;)V

    invoke-interface {v1, v4}, Lqc$a;->b(Llc;)V

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_1

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v1, Lqp;

    invoke-direct {v1, v0}, Lqp;-><init>(Lqc;)V

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    iput v13, v0, Llc;->a:I

    invoke-interface {v1, v0}, Lqc$a;->c(Llc;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->aB()Z

    move-result v0

    new-instance v4, Llc;

    invoke-direct {v4}, Llc;-><init>()V

    iput v13, v4, Llc;->a:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Llc;->c:Ljava/lang/Object;

    invoke-interface {v1, v4}, Lqc$a;->a(Llc;)V

    invoke-interface {v1, v4}, Lqc$a;->b(Llc;)V

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_4

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v1, Lqq;

    invoke-direct {v1, v0}, Lqq;-><init>(Lqc;)V

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    const/16 v4, 0x9

    iput v4, v0, Llc;->a:I

    invoke-interface {v1, v0}, Lqc$a;->c(Llc;)V

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->a:Landroid/content/SharedPreferences;

    const-string v4, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v7

    invoke-virtual {v7}, Lnp;->f()Z

    move-result v7

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v4, Llc;

    invoke-direct {v4}, Llc;-><init>()V

    const/16 v7, 0x9

    iput v7, v4, Llc;->a:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Llc;->c:Ljava/lang/Object;

    invoke-interface {v1, v4}, Lqc$a;->a(Llc;)V

    invoke-interface {v1, v4}, Lqc$a;->b(Llc;)V

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_5

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_3
    if-nez v0, :cond_0

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->h()I

    move-result v0

    sget v1, Lqx$a;->q:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v1, Lql;

    invoke-direct {v1, v0}, Lql;-><init>(Lqc;)V

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    iput v6, v0, Llc;->a:I

    invoke-interface {v1, v0}, Lqc$a;->c(Llc;)V

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    iget-object v0, v0, Ljo;->a:Landroid/content/SharedPreferences;

    const-string v4, "isopen"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v4, Llc;

    invoke-direct {v4}, Llc;-><init>()V

    iput v6, v4, Llc;->a:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Llc;->c:Ljava/lang/Object;

    invoke-interface {v1, v4}, Lqc$a;->a(Llc;)V

    invoke-interface {v1, v4}, Lqc$a;->b(Llc;)V

    :cond_3
    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_6

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_4
    if-nez v0, :cond_0

    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v4, Lqe;

    invoke-direct {v4, v0}, Lqe;-><init>(Lqc;)V

    invoke-static {}, Lf;->d()Lkm;

    move-result-object v0

    new-instance v1, Llc;

    invoke-direct {v1}, Llc;-><init>()V

    const/4 v7, 0x5

    iput v7, v1, Llc;->a:I

    invoke-interface {v4, v1}, Lqc$a;->c(Llc;)V

    new-instance v7, Llc;

    invoke-direct {v7}, Llc;-><init>()V

    const/4 v1, 0x5

    iput v1, v7, Llc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, v0, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_time_of_update"

    const-wide/16 v10, -0x1

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v10, v0, v2

    if-lez v10, :cond_7

    sub-long v0, v8, v0

    const-wide/32 v8, 0x5265c00

    div-long/2addr v0, v8

    cmp-long v8, v0, v2

    if-ltz v8, :cond_7

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Llc;->c:Ljava/lang/Object;

    invoke-interface {v4, v7}, Lqc$a;->b(Llc;)V

    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v4, Lqf;

    invoke-direct {v4, v0}, Lqf;-><init>(Lqc;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    new-instance v1, Llc;

    invoke-direct {v1}, Llc;-><init>()V

    const/4 v7, 0x6

    iput v7, v1, Llc;->a:I

    invoke-interface {v4, v1}, Lqc$a;->c(Llc;)V

    new-instance v7, Llc;

    invoke-direct {v7}, Llc;-><init>()V

    const/4 v1, 0x6

    iput v1, v7, Llc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Lho;->l()J

    move-result-wide v0

    cmp-long v10, v0, v2

    if-lez v10, :cond_8

    sub-long v0, v8, v0

    const-wide/32 v8, 0x5265c00

    div-long/2addr v0, v8

    cmp-long v8, v0, v2

    if-ltz v8, :cond_8

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Llc;->c:Ljava/lang/Object;

    invoke-interface {v4, v7}, Lqc$a;->b(Llc;)V

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_9

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_7
    if-nez v0, :cond_0

    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v4, Lqg;

    invoke-direct {v4, v0}, Lqg;-><init>(Lqc;)V

    invoke-static {}, Lf;->d()Lkm;

    move-result-object v0

    new-instance v1, Llc;

    invoke-direct {v1}, Llc;-><init>()V

    const/4 v7, 0x7

    iput v7, v1, Llc;->a:I

    invoke-interface {v4, v1}, Lqc$a;->c(Llc;)V

    new-instance v7, Llc;

    invoke-direct {v7}, Llc;-><init>()V

    const/4 v1, 0x7

    iput v1, v7, Llc;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, v0, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_time_of_whole_scan"

    const-wide/16 v10, -0x1

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v10, v0, v2

    if-lez v10, :cond_a

    sub-long v0, v8, v0

    const-wide/32 v8, 0x5265c00

    div-long/2addr v0, v8

    cmp-long v8, v0, v2

    if-ltz v8, :cond_a

    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Llc;->c:Ljava/lang/Object;

    invoke-interface {v4, v7}, Lqc$a;->b(Llc;)V

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_b

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_9
    if-eqz v0, :cond_c

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x664c

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_1

    :cond_4
    move v0, v5

    goto/16 :goto_2

    :cond_5
    move v0, v5

    goto/16 :goto_3

    :cond_6
    move v0, v5

    goto/16 :goto_4

    :cond_7
    move-wide v0, v2

    goto/16 :goto_5

    :cond_8
    move-wide v0, v2

    goto :goto_6

    :cond_9
    move v0, v5

    goto :goto_7

    :cond_a
    move-wide v0, v2

    goto :goto_8

    :cond_b
    move v0, v5

    goto :goto_9

    :cond_c
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v7, Lqh;

    invoke-direct {v7, v0}, Lqh;-><init>(Lqc;)V

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Llc;->a:I

    invoke-interface {v7, v0}, Lqc$a;->c(Llc;)V

    invoke-static {}, Lpn;->a()Ljava/util/List;

    move-result-object v8

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v1, Lpn;->a:Lpn;

    if-nez v1, :cond_d

    new-instance v1, Lpn;

    invoke-direct {v1}, Lpn;-><init>()V

    sput-object v1, Lpn;->a:Lpn;

    :cond_d
    sget-object v9, Lpn;->a:Lpn;

    move v4, v5

    :goto_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_10

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v10, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-virtual {v0, v1, v10}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    invoke-virtual {v1}, Lkw;->m()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    invoke-virtual {v9, v1}, Lpn;->a(Lkw;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_a

    :cond_10
    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    const/16 v1, 0xa

    iput v1, v0, Llc;->a:I

    iput-object v8, v0, Llc;->c:Ljava/lang/Object;

    invoke-interface {v7, v0}, Lqc$a;->b(Llc;)V

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_11

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_b
    if-eqz v0, :cond_12

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x664d

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_1

    :cond_11
    move v0, v5

    goto :goto_b

    :cond_12
    iget-object v4, p0, Lqd;->a:Lqc;

    new-instance v7, Lqm;

    invoke-direct {v7, v4}, Lqm;-><init>(Lqc;)V

    iget-object v0, v4, Lqc;->d:Landroid/content/Context;

    iget-object v0, v4, Lqc;->b:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    if-nez v0, :cond_13

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    iput-object v0, v4, Lqc;->b:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    :cond_13
    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    iput v12, v0, Llc;->a:I

    invoke-interface {v7, v0}, Lqc$a;->c(Llc;)V

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v8

    invoke-virtual {v8, v5}, Lzo;->a(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v5

    :cond_14
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v8, v0}, Lzo;->c(Lkw;)Z

    move-result v0

    if-eqz v0, :cond_14

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_15
    invoke-static {}, Lvh;->f()J

    move-result-wide v8

    invoke-static {}, Lvh;->e()J

    move-result-wide v10

    sub-long v8, v10, v8

    cmp-long v0, v10, v2

    if-eqz v0, :cond_16

    const-wide/16 v2, 0x64

    mul-long/2addr v2, v8

    div-long/2addr v2, v10

    long-to-float v0, v2

    :goto_d
    new-instance v2, Llc;

    invoke-direct {v2}, Llc;-><init>()V

    iput v12, v2, Llc;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Llc;->c:Ljava/lang/Object;

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Llc;->d:Ljava/lang/Object;

    invoke-interface {v7, v2}, Lqc$a;->b(Llc;)V

    const/4 v0, 0x0

    iput-object v0, v4, Lqc;->b:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_17

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_e
    if-nez v0, :cond_0

    iget-object v0, p0, Lqd;->a:Lqc;

    iput v12, v0, Lqc;->c:I

    iget-object v0, p0, Lqd;->a:Lqc;

    new-instance v1, Lqn;

    invoke-direct {v1, v0}, Lqn;-><init>(Lqc;)V

    iget-object v2, v0, Lqc;->d:Landroid/content/Context;

    new-instance v2, Llc;

    invoke-direct {v2}, Llc;-><init>()V

    const/4 v3, 0x3

    iput v3, v2, Llc;->a:I

    invoke-interface {v1, v2}, Lqc$a;->c(Llc;)V

    iget-object v2, v0, Lqc;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lqj;

    invoke-direct {v2, v0, v1}, Lqj;-><init>(Lqc;Lqc$a;)V

    invoke-static {}, Lpt;->a()Lpt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpt;->b(Lpt$a;)V

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_18

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_f
    if-eqz v0, :cond_19

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x664e

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_1

    :cond_16
    const/4 v0, 0x0

    goto :goto_d

    :cond_17
    move v0, v5

    goto :goto_e

    :cond_18
    move v0, v5

    goto :goto_f

    :cond_19
    iget-object v0, p0, Lqd;->a:Lqc;

    iput v6, v0, Lqc;->c:I

    iget-object v1, p0, Lqd;->a:Lqc;

    new-instance v2, Lqk;

    invoke-direct {v2, v1}, Lqk;-><init>(Lqc;)V

    new-instance v0, Lqi;

    invoke-direct {v0, v2}, Lqi;-><init>(Lqc$a;)V

    iget-object v3, v1, Lqc;->f:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v3, v0, v5}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1a
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v8, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1b

    iget v8, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    if-ne v8, v13, :cond_1a

    :cond_1b
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    iput v5, v0, Llc;->a:I

    iput-object v4, v0, Llc;->c:Ljava/lang/Object;

    iput-object v3, v0, Llc;->e:Ljava/lang/Object;

    invoke-interface {v2, v0}, Lqc$a;->b(Llc;)V

    iget-object v0, v1, Lqc;->f:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V

    iget-object v0, p0, Lqd;->a:Lqc;

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_1d

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    move v0, v6

    :goto_11
    if-eqz v0, :cond_1e

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x664f

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_1

    :cond_1d
    move v0, v5

    goto :goto_11

    :cond_1e
    iget-object v0, p0, Lqd;->a:Lqc;

    iget-object v0, v0, Lqc;->e:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sput-boolean v5, Lqc;->g:Z

    sput-boolean v5, Lqc;->h:Z

    goto/16 :goto_1
.end method
