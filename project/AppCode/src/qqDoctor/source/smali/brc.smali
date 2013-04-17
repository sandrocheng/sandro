.class final Lbrc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbra;


# direct methods
.method constructor <init>(Lbra;)V
    .locals 0

    iput-object p1, p0, Lbrc;->a:Lbra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lbrc;->a:Lbra;

    invoke-virtual {v0}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lamb;

    invoke-virtual {v0}, Lamb;->c()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lbrc;->a:Lbra;

    invoke-static {v5}, Lbra;->h(Lbra;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_1

    const/16 v3, 0x6755

    invoke-virtual {v0, v3}, Lnd;->a(I)V

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbrc;->a:Lbra;

    invoke-static {v0}, Lbra;->i(Lbra;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v1, p0, Lbrc;->a:Lbra;

    invoke-virtual {v1}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    check-cast v1, Lamb;

    invoke-virtual {v1, v0}, Lamb;->b(Lkw;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkw;->S()J

    move-result-wide v7

    add-long/2addr v2, v7

    invoke-virtual {v0}, Lkw;->T()Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkw;->n(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkw;->a(Ljava/util/List;)V

    iget-object v1, p0, Lbrc;->a:Lbra;

    invoke-virtual {v1}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    check-cast v1, Lamb;

    invoke-virtual {v1}, Lamb;->c()Ljava/util/List;

    move-result-object v7

    iget-object v1, p0, Lbrc;->a:Lbra;

    invoke-virtual {v1}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    check-cast v1, Lamb;

    invoke-virtual {v1, v0}, Lamb;->b(Lkw;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbrc;->a:Lbra;

    invoke-virtual {v0}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lamb;

    invoke-virtual {v0, v7}, Lamb;->a(Ljava/util/List;)V

    :cond_0
    move-wide v0, v2

    move-wide v2, v0

    goto :goto_1

    :cond_1
    const/16 v3, 0x6756

    invoke-virtual {v0, v3}, Lnd;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbrc;->a:Lbra;

    invoke-static {v0}, Lbra;->g(Lbra;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lbrc;->a:Lbra;

    invoke-static {v1}, Lbra;->g(Lbra;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_3
    return-void
.end method
