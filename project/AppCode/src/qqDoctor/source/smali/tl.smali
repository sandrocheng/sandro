.class final Ltl;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ltk;


# direct methods
.method constructor <init>(Ltk;)V
    .locals 0

    iput-object p1, p0, Ltl;->a:Ltk;

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
    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    const-wide/high16 v4, 0x4014

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Lsy;->k:I

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    iget-object v3, v3, Lsy;->d:Ljp;

    iget-object v4, p0, Ltl;->a:Ltk;

    iget-object v4, v4, Ltk;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_a

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lsy;->i:Z

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    iget-boolean v3, v3, Lsy;->j:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lsy;->j:Z
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
    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lsy;->j:Z

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    iget-object v3, v3, Lsy;->l:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    const-wide/high16 v7, 0x4024

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/lit8 v7, v7, 0x5

    iput v7, v3, Lsy;->k:I

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    iget v7, v3, Lsy;->k:I

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    iget v3, v3, Lsy;->k:I

    rsub-int/lit8 v8, v3, 0x64

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v3

    move v3, v0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v11, p0, Ltl;->a:Ltk;

    iget-object v11, v11, Ltk;->c:Lsy;

    iget-boolean v11, v11, Lsy;->j:Z

    if-eqz v11, :cond_7

    add-int/lit8 v4, v4, 0x1

    iget-object v11, p0, Ltl;->a:Ltk;

    iget-object v11, v11, Ltk;->c:Lsy;

    iget-object v11, v11, Lsy;->d:Ljp;

    invoke-virtual {v11, v0}, Ljp;->a(Lmk;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Ltl;->a:Ltk;

    iget-object v0, v0, Ltk;->c:Lsy;

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

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltl;->a:Ltk;

    iget-object v1, v1, Ltk;->c:Lsy;

    iget-object v1, v1, Lsy;->l:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    :goto_3
    if-nez v2, :cond_d

    iget-object v0, p0, Ltl;->a:Ltk;

    iget-object v0, v0, Ltk;->c:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v3, 0x7f0b0043

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    iget-object v3, v3, Lsy;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    if-lez v2, :cond_e

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Ltl;->a:Ltk;

    iget-object v4, v4, Ltk;->c:Lsy;

    iget-object v4, v4, Lsy;->a:Landroid/content/Context;

    const v5, 0x7f0b053d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v3, v0}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    if-lez v2, :cond_4

    :cond_3
    iget-object v0, p0, Ltl;->a:Ltk;

    iget-object v0, v0, Ltk;->b:Ldv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltl;->a:Ltk;

    iget-object v0, v0, Ltk;->b:Ldv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_7
    move v0, v3

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v3

    sub-long v7, v3, v5

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-gez v7, :cond_9

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    sub-long v3, v5, v3

    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_9
    :goto_6
    :try_start_5
    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    iget-object v3, v3, Lsy;->l:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v0

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, p0, Ltl;->a:Ltk;

    iget-object v3, v3, Ltk;->c:Lsy;

    iget-object v3, v3, Lsy;->d:Ljp;

    invoke-virtual {v3, v4}, Ljp;->b(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v1

    add-int/lit8 v2, v1, 0x0

    move v1, v0

    goto/16 :goto_3

    :cond_b
    const/4 v0, 0x1

    :cond_c
    move v1, v0

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Ltl;->a:Ltk;

    iget-object v0, v0, Ltk;->c:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v3, 0x7f0b053c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Ltl;->a:Ltk;

    iget-object v0, v0, Ltk;->c:Lsy;

    iget-object v0, v0, Lsy;->a:Landroid/content/Context;

    const v4, 0x7f0b053e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_6
.end method
