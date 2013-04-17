.class final Lww;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lwr;


# direct methods
.method constructor <init>(Lwr;)V
    .locals 0

    iput-object p1, p0, Lww;->a:Lwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lww;->a:Lwr;

    invoke-static {v0}, Lwr;->h(Lwr;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "kfc"

    const-string v1, "run, now doing traffic adjust, ruturn"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "kfc"

    const-string v2, "doUpdateCongifsAsyn, updateConfigsV2 if need"

    invoke-static {v0, v2}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lww;->a:Lwr;

    invoke-static {v0}, Lwr;->b(Lwr;)Ljd;

    move-result-object v0

    invoke-virtual {v0}, Ljd;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    :try_start_1
    iget-object v0, p0, Lww;->a:Lwr;

    invoke-static {v0}, Lwr;->o(Lwr;)I

    :goto_1
    const-string v0, "kfc"

    const-string v3, "doUpdateCongifsAsyn, updateMatchRuleIfNeed"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lww;->a:Lwr;

    invoke-static {v0}, Lwr;->p(Lwr;)Z

    move-result v1

    const-string v0, "kfc"

    const-string v3, "doUpdateCongifsAsyn, getCloudCmdIfNeed"

    invoke-static {v0, v3}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lww;->a:Lwr;

    invoke-virtual {v0}, Lwr;->i()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lww;->a:Lwr;

    invoke-static {v0}, Lwr;->b(Lwr;)Ljd;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljd;->b(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v1

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    iget-object v0, p0, Lww;->a:Lwr;

    invoke-static {v0}, Lwr;->b(Lwr;)Ljd;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljd;->b(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move v2, v1

    :goto_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lww;->a:Lwr;

    invoke-static {v1}, Lwr;->b(Lwr;)Ljd;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljd;->b(J)V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_1
.end method
