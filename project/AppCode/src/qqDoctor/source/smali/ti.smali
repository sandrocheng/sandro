.class final Lti;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lth;


# direct methods
.method constructor <init>(Lth;)V
    .locals 0

    iput-object p1, p0, Lti;->a:Lth;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    const-wide/high16 v4, 0x4014

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v0, Lsy;->k:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lti;->a:Lth;

    iget-object v7, v7, Lth;->b:Lsy;

    iget-object v7, v7, Lsy;->c:Lhi;

    invoke-virtual {v7, v0}, Lhi;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v7, p0, Lti;->a:Lth;

    iget-object v7, v7, Lth;->b:Lsy;

    iget-object v7, v7, Lsy;->d:Ljp;

    invoke-virtual {v7, v0}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti;->a:Lth;

    iget-object v1, v1, Lth;->b:Lsy;

    iget-object v1, v1, Lsy;->l:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-lez v2, :cond_f

    :cond_2
    if-nez v2, :cond_e

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lti;->a:Lth;

    iget-object v1, v1, Lth;->b:Lsy;

    iget-object v1, v1, Lsy;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lti;->a:Lth;

    iget-object v2, v2, Lth;->b:Lsy;

    iget-object v2, v2, Lsy;->a:Landroid/content/Context;

    const v3, 0x7f0b053d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_b

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lsy;->i:Z

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    iget-boolean v0, v0, Lsy;->j:Z

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lsy;->j:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v6, 0x4b0

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_5
    :try_start_3
    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lsy;->j:Z

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    iget-object v0, v0, Lsy;->l:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    iget-object v0, v0, Lsy;->c:Lhi;

    invoke-virtual {v0, v4}, Lhi;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    move v0, v3

    :goto_6
    iget-object v3, p0, Lti;->a:Lth;

    iget-object v3, v3, Lth;->b:Lsy;

    const-wide/high16 v8, 0x4024

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-int v4, v8

    add-int/lit8 v4, v4, 0x5

    iput v4, v3, Lsy;->k:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lti;->a:Lth;

    iget-object v3, v3, Lth;->b:Lsy;

    iget v8, v3, Lsy;->k:I

    iget-object v3, p0, Lti;->a:Lth;

    iget-object v3, v3, Lth;->b:Lsy;

    iget v3, v3, Lsy;->k:I

    rsub-int/lit8 v9, v3, 0x64

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v3, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move v3, v0

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v11, p0, Lti;->a:Lth;

    iget-object v11, v11, Lth;->b:Lsy;

    iget-boolean v11, v11, Lsy;->j:Z

    if-eqz v11, :cond_8

    add-int/lit8 v4, v4, 0x1

    iget-object v11, p0, Lti;->a:Lth;

    iget-object v11, v11, Lth;->b:Lsy;

    iget-object v11, v11, Lsy;->d:Ljp;

    invoke-virtual {v11, v0}, Ljp;->a(Lmk;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    int-to-float v11, v8

    int-to-float v12, v9

    int-to-float v13, v4

    int-to-float v14, v10

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v0, Lsy;->k:I

    goto :goto_7

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto :goto_6

    :cond_7
    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    move v0, v3

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v3

    sub-long v8, v3, v6

    const-wide/16 v10, 0x3e8

    cmp-long v5, v8, v10

    if-gez v5, :cond_a

    const-wide/16 v8, 0x3e8

    add-long v5, v6, v8

    sub-long v3, v5, v3

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    :goto_8
    :try_start_5
    iget-object v3, p0, Lti;->a:Lth;

    iget-object v3, v3, Lth;->b:Lsy;

    iget-object v3, v3, Lsy;->l:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    iget-object v0, v0, Lsy;->c:Lhi;

    invoke-virtual {v0, v4}, Lhi;->c(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    move v0, v3

    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lti;->a:Lth;

    iget-object v3, v3, Lth;->b:Lsy;

    iget-object v3, v3, Lsy;->d:Ljp;

    invoke-virtual {v3, v5}, Ljp;->b(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v1

    add-int/2addr v2, v1

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v1, 0x7f0b053c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lti;->a:Lth;

    iget-object v0, v0, Lth;->b:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    iget-object v1, p0, Lti;->a:Lth;

    iget-object v1, v1, Lth;->b:Lsy;

    iget-object v1, v1, Lsy;->a:Landroid/content/Context;

    const v2, 0x7f0b053e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_2
    move-exception v3

    goto :goto_8

    :cond_10
    move v0, v3

    goto :goto_9

    :cond_11
    move v0, v3

    goto/16 :goto_6
.end method
