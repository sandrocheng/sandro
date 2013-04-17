.class final Laar;
.super Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener",
        "<",
        "Lkv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laaq;


# direct methods
.method constructor <init>(Laaq;)V
    .locals 0

    iput-object p1, p0, Laar;->a:Laaq;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onFinished(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 3

    check-cast p1, Lkv;

    iget-object v0, p1, Lkv;->d:Lkw;

    iget-object v1, p0, Laar;->a:Laaq;

    iget-object v1, v1, Laaq;->b:Lkw;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Laar;->a:Laaq;

    iget-object v0, v0, Laaq;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Laar;->a:Laaq;

    new-instance v1, Laas;

    iget-object v2, p0, Laar;->a:Laaq;

    iget-object v2, v2, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Laas;-><init>(Laar;Landroid/os/Looper;)V

    iput-object v1, v0, Laaq;->c:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Laar;->a:Laaq;

    iget-object v0, v0, Laaq;->c:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
