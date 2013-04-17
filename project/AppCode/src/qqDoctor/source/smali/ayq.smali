.class final Layq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IMarketManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
        "<",
        "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
        "Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Layp;


# direct methods
.method constructor <init>(Layp;)V
    .locals 0

    iput-object p1, p0, Layq;->a:Layp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v4, -0x2

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchSearchSoft requestInfo.type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchSearchSoft softwareList.size() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Layq;->a:Layp;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Layp;->a(Layp;I)I

    iget-object v0, p0, Layq;->a:Layp;

    iget-object v0, v0, Layp;->c:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, La;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Layq;->a:Layp;

    iget-object v2, p0, Layq;->a:Layp;

    invoke-virtual {v2}, Layp;->a()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v0, v2, v3}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Layp;->a(Layp;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Layq;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkw;->b(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Layq;->a:Layp;

    iget-object v0, v0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Layq;->a:Layp;

    iget-object v1, v1, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchSearchSoft responseInfo.code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Layq;->a:Layp;

    iget-object v1, v1, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Layq;->a:Layp;

    iget-object v0, v0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
