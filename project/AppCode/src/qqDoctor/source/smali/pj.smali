.class final Lpj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field final synthetic a:Lph;


# direct methods
.method constructor <init>(Lph;)V
    .locals 0

    iput-object p1, p0, Lpj;->a:Lph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lpj;->a:Lph;

    iget-object v0, v0, Lph;->a:Lpe;

    invoke-virtual {v0}, Lpe;->d()V

    return-void
.end method

.method public final onRetry()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpk;

    invoke-direct {v1, p0}, Lpk;-><init>(Lpj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lpj;->a:Lph;

    iget-object v0, v0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->b:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lwr;->a(Z)V

    return-void
.end method
