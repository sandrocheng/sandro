.class final Lal;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-class v1, Laj;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Laj;->f()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lan;->a()Lan;

    move-result-object v0

    invoke-virtual {v0}, Lan;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lan;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "pegasusq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    const-string v3, "powersave"

    invoke-static {v2, v3}, Laj;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "powersave"

    invoke-virtual {v0, v2}, Lan;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_3
    const-string v3, "userspace"

    invoke-static {v2, v3}, Laj;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "userspace"

    invoke-virtual {v0, v2}, Lan;->a(Ljava/lang/String;)V

    invoke-static {}, Lan;->e()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v2}, Lan;->a(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    const-string v3, "ondemand"

    invoke-static {v2, v3}, Laj;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ondemand"

    invoke-virtual {v0, v2}, Lan;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
