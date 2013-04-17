.class final Laxp;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxp;->a:Laxj;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Laxp;->a:Laxj;

    invoke-static {v0}, Laxj;->e(Laxj;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Laxp;->a:Laxj;

    invoke-static {v0}, Laxj;->f(Laxj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laxp;->a:Laxj;

    invoke-static {v0}, Laxj;->g(Laxj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Laxp;->a:Laxj;

    invoke-static {v0}, Laxj;->h(Laxj;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
