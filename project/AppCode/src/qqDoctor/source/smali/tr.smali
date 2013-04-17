.class final Ltr;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ltq;


# direct methods
.method constructor <init>(Ltq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr;->a:Ltq;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    const-wide/high16 v5, 0x4014

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Lsy;->k:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget-boolean v1, v1, Lsy;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget-object v1, v1, Lsy;->e:Lki;

    move-object/from16 v0, p0

    iget-object v6, v0, Ltr;->a:Ltq;

    iget-object v6, v6, Ltq;->a:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lki;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    iget-boolean v7, v1, Lmk;->g:Z

    invoke-static {v1, v7}, Loo$a;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    iput-object v7, v1, Lmk;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move v2, v3

    move-object v3, v1

    const/4 v1, 0x1

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Ltr;->a:Ltq;

    iget-object v4, v4, Ltq;->c:Lsy;

    iget-object v4, v4, Lsy;->l:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ltr;->a:Ltq;

    iget-object v3, v3, Ltq;->c:Lsy;

    iget-object v4, v3, Lsy;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-lez v2, :cond_d

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Ltr;->a:Ltq;

    iget-object v5, v5, Ltq;->c:Lsy;

    iget-object v5, v5, Lsy;->a:Landroid/content/Context;

    const v6, 0x7f0b0544

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Ltr;->a:Ltq;

    iget-object v5, v5, Ltq;->c:Lsy;

    iget-object v5, v5, Lsy;->a:Landroid/content/Context;

    const v6, 0x7f0b054a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v4, v3}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-lez v2, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->b:Ldv;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->b:Ldv;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ldv;->a(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v4, 0x1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "smslogs.size()"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lsy;->i:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget-boolean v1, v1, Lsy;->j:Z

    const/4 v5, 0x1

    if-ne v1, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lsy;->j:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v7, 0x4b0

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lsy;->j:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget-object v1, v1, Lsy;->l:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    const-wide/high16 v9, 0x4024

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v9, v11

    double-to-int v5, v9

    add-int/lit8 v5, v5, 0x5

    iput v5, v1, Lsy;->k:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget v9, v1, Lsy;->k:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget v1, v1, Lsy;->k:I

    rsub-int/lit8 v10, v1, 0x64

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    const/4 v1, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v1

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    move-object/from16 v0, p0

    iget-object v12, v0, Ltr;->a:Ltq;

    iget-object v12, v12, Ltq;->c:Lsy;

    iget-boolean v12, v12, Lsy;->j:Z

    if-eqz v12, :cond_9

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Ltr;->a:Ltq;

    iget-object v12, v12, Ltq;->c:Lsy;

    iget-object v12, v12, Lsy;->d:Ljp;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13}, Ljp;->a(Lmk;Z)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Ltr;->a:Ltq;

    iget-object v12, v12, Ltq;->c:Lsy;

    iget-object v12, v12, Lsy;->e:Lki;

    invoke-virtual {v12, v1}, Lki;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    int-to-float v12, v9

    int-to-float v13, v10

    int-to-float v14, v5

    int-to-float v15, v11

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, v1, Lsy;->k:I

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v5

    sub-long v9, v5, v7

    const-wide/16 v11, 0x3e8

    cmp-long v1, v9, v11

    if-gez v1, :cond_a

    const-wide/16 v9, 0x3e8

    add-long/2addr v7, v9

    sub-long v5, v7, v5

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    :goto_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget-object v1, v1, Lsy;->l:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget-object v1, v1, Lsy;->d:Ljp;

    invoke-virtual {v1, v6}, Ljp;->a(Ljava/util/List;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ltr;->a:Ltq;

    iget-object v1, v1, Ltq;->c:Lsy;

    iget-object v1, v1, Lsy;->e:Lki;

    move-object/from16 v0, p0

    iget-object v7, v0, Ltr;->a:Ltq;

    iget-object v7, v7, Ltq;->a:Ljava/lang/String;

    invoke-virtual {v1, v7, v5}, Lki;->b(Ljava/lang/String;Ljava/util/List;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v1

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    goto/16 :goto_1

    :cond_c
    move v1, v2

    move v2, v3

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ltr;->a:Ltq;

    iget-object v3, v3, Ltq;->c:Lsy;

    iget-object v3, v3, Lsy;->a:Landroid/content/Context;

    const v5, 0x7f0b0546

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto :goto_6
.end method
