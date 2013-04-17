.class final Ltw;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ldv;

.field private synthetic c:Lsy;


# direct methods
.method constructor <init>(Lsy;Ljava/util/List;Ldv;)V
    .locals 0

    iput-object p1, p0, Ltw;->c:Lsy;

    iput-object p2, p0, Ltw;->a:Ljava/util/List;

    iput-object p3, p0, Ltw;->b:Ldv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-boolean v1, v1, Lsy;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    const-wide/high16 v11, 0x4014

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v11, v13

    double-to-int v3, v11

    iput v3, v1, Lsy;->k:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Ltw;->c:Lsy;

    iget-object v7, v7, Lsy;->e:Lki;

    invoke-virtual {v7, v1, v10}, Lki;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Ltw;->c:Lsy;

    iget-object v7, v7, Lsy;->e:Lki;

    invoke-virtual {v7, v1}, Lki;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move v3, v4

    move v4, v5

    :goto_1
    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Ltw;->c:Lsy;

    iget-object v2, v2, Lsy;->l:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v5

    move v5, v4

    move v4, v3

    :goto_2
    add-int v1, v4, v5

    if-nez v1, :cond_25

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-object v1, v1, Lsy;->a:Landroid/content/Context;

    const v3, 0x7f0b0044

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ltw;->c:Lsy;

    iget-object v3, v3, Lsy;->a:Landroid/content/Context;

    if-eqz v2, :cond_2

    add-int v6, v4, v5

    if-lez v6, :cond_26

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Ltw;->c:Lsy;

    iget-object v6, v6, Lsy;->a:Landroid/content/Context;

    const v7, 0x7f0b054a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v6, v0, Ltw;->c:Lsy;

    iget-object v6, v6, Lsy;->a:Landroid/content/Context;

    const v7, 0x7f0b0545

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v3, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    add-int v1, v4, v5

    if-lez v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->b:Ldv;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->b:Ldv;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ldv;->a(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "smslogs.size(): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-lez v1, :cond_a

    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_16

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lsy;->i:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-boolean v1, v1, Lsy;->j:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lsy;->j:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v1, 0x4b0

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lsy;->j:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-object v1, v1, Lsy;->l:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v2

    move-object v2, v1

    :cond_7
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lky;

    if-eqz v7, :cond_8

    iget-object v13, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_8
    iget-boolean v2, v1, Lky;->d:Z

    invoke-static {v1, v2}, Loo$a;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v7, v1, Lky;->phonenum:Ljava/lang/String;

    :cond_9
    if-eqz v2, :cond_7

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    iput-object v2, v1, Lky;->name:Ljava/lang/String;

    goto :goto_7

    :catch_1
    move-exception v1

    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-object v1, v1, Lsy;->c:Lhi;

    invoke-virtual {v1, v9}, Lhi;->b(Ljava/util/List;)Z

    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lky;

    if-eqz v2, :cond_c

    iget-object v12, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2a

    :cond_c
    iget-object v1, v1, Lky;->phonenum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltw;->c:Lsy;

    iget-object v2, v2, Lsy;->e:Lki;

    invoke-virtual {v2, v1}, Lki;->d(Ljava/lang/String;)Z

    :goto_9
    move-object v2, v1

    goto :goto_8

    :cond_d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v5, v1, 0x0

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    const-wide/high16 v12, 0x4024

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v2, v12

    add-int/lit8 v2, v2, 0x5

    iput v2, v1, Lsy;->k:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bigData smslogs.size(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v2

    move-object v2, v1

    :cond_f
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    if-eqz v7, :cond_10

    invoke-virtual {v1}, Lmk;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    :cond_10
    iget-boolean v2, v1, Lmk;->g:Z

    invoke-static {v1, v2}, Loo$a;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmk;->a()Ljava/lang/String;

    move-result-object v7

    :cond_11
    if-eqz v2, :cond_f

    const-string v12, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    iput-object v2, v1, Lmk;->name:Ljava/lang/String;

    goto :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget v7, v1, Lsy;->k:I

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget v1, v1, Lsy;->k:I

    rsub-int/lit8 v9, v1, 0x64

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v8

    move v2, v4

    move v4, v1

    :goto_b
    :try_start_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    move-object/from16 v0, p0

    iget-object v13, v0, Ltw;->c:Lsy;

    iget-boolean v13, v13, Lsy;->j:Z

    if-eqz v13, :cond_14

    add-int/lit8 v4, v4, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "insert smsLog: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v1, Lmk;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Ltw;->c:Lsy;

    iget-object v13, v13, Lsy;->d:Ljp;

    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14}, Ljp;->a(Lmk;Z)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_13

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "remove smsLog: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v1, Lmk;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Ltw;->c:Lsy;

    iget-object v13, v13, Lsy;->e:Lki;

    invoke-virtual {v13, v1}, Lki;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    int-to-float v13, v7

    int-to-float v14, v9

    int-to-float v15, v4

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v1, Lsy;->k:I

    goto :goto_b

    :catch_3
    move-exception v1

    move v4, v5

    move/from16 v17, v2

    move v2, v3

    move/from16 v3, v17

    goto/16 :goto_1

    :cond_13
    const/4 v6, 0x1

    goto :goto_b

    :cond_14
    move v1, v6

    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v6

    sub-long v8, v6, v10

    const-wide/16 v12, 0x3e8

    cmp-long v4, v8, v12

    if-gez v4, :cond_15

    const-wide/16 v8, 0x3e8

    add-long/2addr v8, v10

    sub-long v6, v8, v6

    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_15
    :goto_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Ltw;->c:Lsy;

    iget-object v4, v4, Lsy;->l:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move v4, v2

    move v2, v1

    goto/16 :goto_2

    :cond_16
    :try_start_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v2

    move-object v2, v1

    :cond_17
    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lky;

    if-eqz v7, :cond_18

    iget-object v12, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    :cond_18
    iget-boolean v2, v1, Lky;->d:Z

    invoke-static {v1, v2}, Loo$a;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v7, v1, Lky;->phonenum:Ljava/lang/String;

    :cond_19
    if-eqz v2, :cond_17

    const-string v12, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    iput-object v2, v1, Lky;->name:Ljava/lang/String;

    goto :goto_e

    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-object v1, v1, Lsy;->c:Lhi;

    invoke-virtual {v1, v9}, Lhi;->b(Ljava/util/List;)Z

    const/4 v2, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lky;

    if-eqz v2, :cond_1b

    iget-object v11, v1, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_28

    :cond_1b
    iget-object v1, v1, Lky;->phonenum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltw;->c:Lsy;

    iget-object v2, v2, Lsy;->e:Lki;

    invoke-virtual {v2, v1}, Lki;->d(Ljava/lang/String;)Z

    :goto_10
    move-object v2, v1

    goto :goto_f

    :cond_1c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v5, v1, 0x0

    :cond_1d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v2

    move-object v2, v1

    :cond_1e
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    if-eqz v7, :cond_1f

    invoke-virtual {v1}, Lmk;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_20

    :cond_1f
    iget-boolean v2, v1, Lmk;->g:Z

    invoke-static {v1, v2}, Loo$a;->a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmk;->a()Ljava/lang/String;

    move-result-object v7

    :cond_20
    if-eqz v2, :cond_1e

    const-string v11, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1e

    iput-object v2, v1, Lmk;->name:Ljava/lang/String;

    goto :goto_11

    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-object v1, v1, Lsy;->d:Ljp;

    invoke-virtual {v1, v8}, Ljp;->a(Ljava/util/List;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSmsLogDao.insert(smslogs) size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "log.threadId: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lmk;->e:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v9, -0x1

    if-eq v2, v9, :cond_22

    iget v9, v1, Lmk;->e:I

    if-eq v2, v9, :cond_27

    :cond_22
    iget v1, v1, Lmk;->e:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "threadId: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltw;->c:Lsy;

    iget-object v2, v2, Lsy;->e:Lki;

    invoke-virtual {v2, v1, v10}, Lki;->a(ILjava/util/List;)Z

    :goto_13
    move v2, v1

    goto :goto_12

    :cond_23
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result v1

    add-int/lit8 v2, v1, 0x0

    move v4, v2

    move v2, v6

    goto/16 :goto_2

    :cond_24
    move v2, v6

    goto/16 :goto_2

    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-object v1, v1, Lsy;->a:Landroid/content/Context;

    const v3, 0x7f0b0544

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Ltw;->c:Lsy;

    iget-object v1, v1, Lsy;->a:Landroid/content/Context;

    const v6, 0x7f0b0546

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :catch_4
    move-exception v4

    goto/16 :goto_d

    :cond_27
    move v1, v2

    goto :goto_13

    :cond_28
    move-object v1, v2

    goto/16 :goto_10

    :cond_29
    move v1, v6

    move v2, v4

    goto/16 :goto_c

    :cond_2a
    move-object v1, v2

    goto/16 :goto_9
.end method
