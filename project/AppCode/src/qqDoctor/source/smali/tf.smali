.class final Ltf;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lte;


# direct methods
.method constructor <init>(Lte;)V
    .locals 0

    iput-object p1, p0, Ltf;->a:Lte;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Ltf;->a:Lte;

    iget-object v3, v3, Lte;->c:Lsy;

    const-wide/high16 v4, 0x4014

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Lsy;->k:I

    iget-object v3, p0, Ltf;->a:Lte;

    iget-object v3, v3, Lte;->c:Lsy;

    iget-object v3, v3, Lsy;->c:Lhi;

    iget-object v4, p0, Ltf;->a:Lte;

    iget-object v4, v4, Lte;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lhi;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Ltf;->a:Lte;

    iget-object v4, v4, Lte;->c:Lsy;

    iget-object v4, v4, Lsy;->d:Ljp;

    iget-object v5, p0, Ltf;->a:Lte;

    iget-object v5, v5, Lte;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_c

    iget-object v5, p0, Ltf;->a:Lte;

    iget-object v5, v5, Lte;->c:Lsy;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lsy;->i:Z

    iget-object v5, p0, Ltf;->a:Lte;

    iget-object v5, v5, Lte;->c:Lsy;

    iget-boolean v5, v5, Lsy;->j:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Ltf;->a:Lte;

    iget-object v5, v5, Lte;->c:Lsy;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lsy;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x4b0

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    iget-object v5, p0, Ltf;->a:Lte;

    iget-object v5, v5, Lte;->c:Lsy;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lsy;->j:Z

    iget-object v5, p0, Ltf;->a:Lte;

    iget-object v5, v5, Lte;->c:Lsy;

    iget-object v5, v5, Lsy;->l:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Ltf;->a:Lte;

    iget-object v7, v7, Lte;->c:Lsy;

    iget-object v7, v7, Lsy;->c:Lhi;

    invoke-virtual {v7, v3}, Lhi;->c(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    :cond_1
    :goto_2
    iget-object v3, p0, Ltf;->a:Lte;

    iget-object v3, v3, Lte;->c:Lsy;

    const-wide/high16 v7, 0x4024

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/lit8 v7, v7, 0x5

    iput v7, v3, Lsy;->k:I

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p0, Ltf;->a:Lte;

    iget-object v3, v3, Lte;->c:Lsy;

    iget v7, v3, Lsy;->k:I

    iget-object v3, p0, Ltf;->a:Lte;

    iget-object v3, v3, Lte;->c:Lsy;

    iget v3, v3, Lsy;->k:I

    rsub-int/lit8 v8, v3, 0x64

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v3

    move v3, v0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v11, p0, Ltf;->a:Lte;

    iget-object v11, v11, Lte;->c:Lsy;

    iget-boolean v11, v11, Lsy;->j:Z

    if-eqz v11, :cond_9

    add-int/lit8 v4, v4, 0x1

    iget-object v11, p0, Ltf;->a:Lte;

    iget-object v11, v11, Lte;->c:Lsy;

    iget-object v11, v11, Lsy;->d:Ljp;

    invoke-virtual {v11, v0}, Ljp;->a(Lmk;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Ltf;->a:Lte;

    iget-object v0, v0, Lte;->c:Lsy;

    int-to-float v11, v7

    int-to-float v12, v8

    int-to-float v13, v4

    int-to-float v14, v9

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v0, Lsy;->k:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltf;->a:Lte;

    iget-object v1, v1, Lte;->c:Lsy;

    iget-object v1, v1, Lsy;->l:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    :goto_4
    if-nez v2, :cond_11

    iget-object v0, p0, Ltf;->a:Lte;

    iget-object v0, v0, Lte;->c:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v3, 0x7f0b0043

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget-object v3, p0, Ltf;->a:Lte;

    iget-object v3, v3, Lte;->c:Lsy;

    iget-object v3, v3, Lsy;->a:Landroid/content/Context;

    if-eqz v1, :cond_3

    if-lez v2, :cond_12

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ltf;->a:Lte;

    iget-object v4, v4, Lte;->c:Lsy;

    iget-object v4, v4, Lsy;->a:Landroid/content/Context;

    const v5, 0x7f0b053d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v3, v0}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    if-lez v2, :cond_5

    :cond_4
    iget-object v0, p0, Ltf;->a:Lte;

    iget-object v0, v0, Lte;->b:Ldv;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltf;->a:Lte;

    iget-object v0, v0, Lte;->b:Ldv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_9
    move v0, v3

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v3

    sub-long v7, v3, v5

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-gez v7, :cond_b

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    sub-long v3, v5, v3

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_b
    :goto_7
    :try_start_5
    iget-object v3, p0, Ltf;->a:Lte;

    iget-object v3, v3, Lte;->c:Lsy;

    iget-object v3, v3, Lsy;->l:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v0

    goto :goto_4

    :cond_c
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    iget-object v5, p0, Ltf;->a:Lte;

    iget-object v5, v5, Lte;->c:Lsy;

    iget-object v5, v5, Lsy;->c:Lhi;

    invoke-virtual {v5, v3}, Lhi;->c(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    :cond_d
    :goto_8
    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    iget-object v3, p0, Ltf;->a:Lte;

    iget-object v3, v3, Lte;->c:Lsy;

    iget-object v3, v3, Lsy;->d:Ljp;

    invoke-virtual {v3, v4}, Ljp;->b(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v1

    add-int/2addr v2, v1

    move v1, v0

    goto/16 :goto_4

    :cond_e
    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x1

    :cond_10
    move v1, v0

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Ltf;->a:Lte;

    iget-object v0, v0, Lte;->c:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v3, 0x7f0b053c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Ltf;->a:Lte;

    iget-object v0, v0, Lte;->c:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v4, 0x7f0b053e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :catch_2
    move-exception v3

    goto :goto_7
.end method
