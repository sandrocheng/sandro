.class final Laoy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laou;


# direct methods
.method constructor <init>(Laou;)V
    .locals 0

    iput-object p1, p0, Laoy;->a:Laou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->o(Laou;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->o(Laou;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v4, 0x0

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v7, v8

    :cond_0
    :goto_0
    if-eqz v7, :cond_6

    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->a(Laou;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->x(Laou;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->z(Laou;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mNeedVerifyCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laoy;->a:Laou;

    invoke-static {v2}, Laou;->A(Laou;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoy;->a:Laou;

    invoke-static {v2}, Laou;->x(Laou;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Laoy;->a:Laou;

    iget-object v1, p0, Laoy;->a:Laou;

    invoke-static {v1}, Laou;->c(Laou;)Laou$a;

    move-result-object v1

    iget-wide v1, v1, Laou$a;->a:J

    iget-object v3, p0, Laoy;->a:Laou;

    invoke-static {v3}, Laou;->c(Laou;)Laou$a;

    move-result-object v3

    iget-object v3, v3, Laou$a;->b:Ljava/lang/String;

    iget-object v5, p0, Laoy;->a:Laou;

    invoke-static {v5}, Laou;->c(Laou;)Laou$a;

    iget-object v5, p0, Laoy;->a:Laou;

    invoke-static {v5}, Laou;->c(Laou;)Laou$a;

    move-result-object v5

    iget-object v5, v5, Laou$a;->c:Ljava/lang/String;

    iget-object v6, p0, Laoy;->a:Laou;

    invoke-static {v6}, Laou;->y(Laou;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Laou;->a(Laou;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    if-ne v0, v8, :cond_0

    invoke-direct {p0}, Laoy;->a()V

    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->a(Laou;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Laoy;->a:Laou;

    iget-object v1, p0, Laoy;->a:Laou;

    invoke-static {v1}, Laou;->c(Laou;)Laou$a;

    move-result-object v1

    iget-wide v1, v1, Laou$a;->a:J

    iget-object v3, p0, Laoy;->a:Laou;

    invoke-static {v3}, Laou;->c(Laou;)Laou$a;

    move-result-object v3

    iget-object v3, v3, Laou$a;->b:Ljava/lang/String;

    iget-object v5, p0, Laoy;->a:Laou;

    invoke-static {v5}, Laou;->c(Laou;)Laou$a;

    iget-object v5, p0, Laoy;->a:Laou;

    invoke-static {v5}, Laou;->c(Laou;)Laou$a;

    move-result-object v5

    iget-object v5, v5, Laou$a;->c:Ljava/lang/String;

    iget-object v5, p0, Laoy;->a:Laou;

    invoke-static {v5}, Laou;->y(Laou;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Laou;->a(Laou;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_3

    move v7, v9

    goto/16 :goto_0

    :cond_3
    if-ne v0, v8, :cond_0

    invoke-direct {p0}, Laoy;->a()V

    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->a(Laou;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Laoy;->a:Laou;

    iget-object v1, p0, Laoy;->a:Laou;

    invoke-static {v1}, Laou;->c(Laou;)Laou$a;

    move-result-object v1

    iget-wide v1, v1, Laou$a;->a:J

    iget-object v3, p0, Laoy;->a:Laou;

    invoke-static {v3}, Laou;->c(Laou;)Laou$a;

    move-result-object v3

    iget-object v3, v3, Laou$a;->b:Ljava/lang/String;

    iget-object v5, p0, Laoy;->a:Laou;

    invoke-static {v5}, Laou;->c(Laou;)Laou$a;

    iget-object v5, p0, Laoy;->a:Laou;

    invoke-static {v5}, Laou;->c(Laou;)Laou$a;

    move-result-object v5

    iget-object v5, v5, Laou$a;->c:Ljava/lang/String;

    iget-object v5, p0, Laoy;->a:Laou;

    invoke-static {v5}, Laou;->y(Laou;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Laou;->b(Laou;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    if-ne v0, v10, :cond_5

    :cond_4
    move v7, v9

    goto/16 :goto_0

    :cond_5
    if-ne v0, v8, :cond_0

    invoke-direct {p0}, Laoy;->a()V

    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->a(Laou;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :pswitch_3
    move v7, v9

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->x(Laou;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Laoy;->a:Laou;

    invoke-static {v0}, Laou;->B(Laou;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
