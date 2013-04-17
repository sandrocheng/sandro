.class final Layu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;


# instance fields
.field private synthetic a:Layt;


# direct methods
.method constructor <init>(Layt;)V
    .locals 0

    iput-object p1, p0, Layu;->a:Layt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;LQQPIM/HotWordResInfo;)V
    .locals 4

    const/4 v3, -0x2

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-nez v0, :cond_4

    invoke-virtual {p2}, LQQPIM/HotWordResInfo;->getHotwords()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->g(Layp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, LQQPIM/HotWordResInfo;->getHotwords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->c:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, LQQPIM/HotWordResInfo;->getHotwords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->g(Layp;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, LQQPIM/HotWordResInfo;->getHotwords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/HotwordInfo;

    iget-object v0, v0, LQQPIM/HotwordInfo;->hotword:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, LQQPIM/HotWordResInfo;->getHotwords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/HotwordInfo;

    iget-object v0, v0, LQQPIM/HotwordInfo;->hotword:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->g(Layp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Layp;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->g(Layp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Layp;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->g(Layp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Layp;->c(Ljava/util/ArrayList;)V

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->h(Layp;)Lho;

    move-result-object v0

    iget-object v1, p0, Layu;->a:Layt;

    iget-object v1, v1, Layt;->a:Layr;

    iget-object v1, v1, Layr;->a:Layp;

    invoke-static {v1}, Layp;->g(Layp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lho;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->h(Layp;)Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->x(J)V

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->i(Layp;)V

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->j(Layp;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->c:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    invoke-static {v0}, Layp;->k(Layp;)Z

    :goto_2
    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Layu;->a:Layt;

    iget-object v0, v0, Layt;->a:Layr;

    iget-object v0, v0, Layr;->a:Layp;

    iget-object v0, v0, Layp;->c:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Layu;->a:Layt;

    iget-object v1, v1, Layt;->a:Layr;

    iget-object v1, v1, Layr;->a:Layp;

    iget-object v1, v1, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
