.class Lcom/google/a/a/a/y;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/t;


# direct methods
.method private constructor <init>(Lcom/google/a/a/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/a/a/t;Lcom/google/a/a/a/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/a/a/y;-><init>(Lcom/google/a/a/a/t;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-static {v0}, Lcom/google/a/a/a/t;->b(Lcom/google/a/a/a/t;)Lcom/google/a/a/a/x;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/x;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-static {v0}, Lcom/google/a/a/a/t;->e(Lcom/google/a/a/a/t;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-static {v0}, Lcom/google/a/a/a/t;->f(Lcom/google/a/a/a/t;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-static {v2}, Lcom/google/a/a/a/t;->g(Lcom/google/a/a/a/t;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-static {v2}, Lcom/google/a/a/a/t;->h(Lcom/google/a/a/a/t;)Lcom/google/a/a/a/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/a/a/a/l;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-static {v0}, Lcom/google/a/a/a/t;->i(Lcom/google/a/a/a/t;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-static {v0}, Lcom/google/a/a/a/t;->j(Lcom/google/a/a/a/t;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/a/a/a/y;

    iget-object v2, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-direct {v1, v2}, Lcom/google/a/a/a/y;-><init>(Lcom/google/a/a/a/t;)V

    iget-object v2, p0, Lcom/google/a/a/a/y;->a:Lcom/google/a/a/a/t;

    invoke-static {v2}, Lcom/google/a/a/a/t;->g(Lcom/google/a/a/a/t;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
