.class final Laob;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    iput-object p1, p0, Laob;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Laob;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Lqc;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laob;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Lqc;

    move-result-object v0

    sget-boolean v1, Lqc;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lqc;->d:Landroid/content/Context;

    iget-object v0, v0, Lqc;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0384

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Laob;->a:Laoa;

    invoke-static {v0}, Laoa;->b(Laoa;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    sput-boolean v3, Lqc;->g:Z

    sput-boolean v3, Lqc;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lqc;->i:Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aV()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-virtual {v1}, Lho;->m()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aU()V

    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lqd;

    invoke-direct {v2, v0}, Lqd;-><init>(Lqc;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lqc;->j:Ljava/lang/Thread;

    iget-object v0, v0, Lqc;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
