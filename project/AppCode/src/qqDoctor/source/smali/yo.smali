.class final Lyo;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lyn;


# direct methods
.method constructor <init>(Lyn;)V
    .locals 0

    iput-object p1, p0, Lyo;->a:Lyn;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lyo;->a:Lyn;

    iget-object v3, v3, Lyn;->a:Lcom/tencent/qqpimsecure/service/QQPimApplication;

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lpn;->b()I

    move-result v3

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    if-lez v3, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lyo;->a:Lyn;

    iget-object v0, v0, Lyn;->a:Lcom/tencent/qqpimsecure/service/QQPimApplication;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lov;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
