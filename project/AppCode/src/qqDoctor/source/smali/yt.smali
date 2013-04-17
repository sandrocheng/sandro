.class public final Lyt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lyr;


# direct methods
.method public constructor <init>(Lyr;)V
    .locals 0

    iput-object p1, p0, Lyt;->a:Lyr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lyt;->a:Lyr;

    iget-object v0, v0, Lyr;->a:Landroid/content/Context;

    invoke-static {v0}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v3

    invoke-virtual {v3}, Lqr;->b()I

    move-result v4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v5

    if-nez v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lho;->s(Z)V

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lho;->h(J)V

    invoke-virtual {v5}, Lho;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyt;->a:Lyr;

    iget-object v0, v0, Lyr;->a:Landroid/content/Context;

    invoke-static {v0}, La;->g(Landroid/content/Context;)Lfl;

    move-result-object v0

    sget-object v4, Lfl;->a:Lfl;

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Lqr;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lqr;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lho;->aM()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v8, 0xf731400

    cmp-long v0, v3, v8

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v2}, Lho;->R(Z)V

    invoke-virtual {v5, v6, v7}, Lho;->i(J)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v1, p0, Lyt;->a:Lyr;

    iget-object v1, v1, Lyr;->a:Landroid/content/Context;

    const v2, 0x7f0b03dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lov;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v1}, Lho;->R(Z)V

    goto :goto_1
.end method
