.class final Laxs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxs;->a:Laxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;Lcom/tencent/tmsecure/module/market/SpecialCategory;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v5, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Laxs;->a:Laxj;

    invoke-static {v1}, Laxj;->m(Laxj;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Laxs;->a:Laxj;

    invoke-static {v0}, Laxj;->n(Laxj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6643

    iget v2, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-virtual {v0, v1, v2}, Lnd;->a(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getSoftSimpleInfoExList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laxs;->a:Laxj;

    invoke-static {v0}, Laxj;->o(Laxj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getSoftSimpleInfoExList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, La;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getSoftSimpleInfoExList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getSoftSimpleInfoExList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->getExpand()LQQPIM/AndroidSimpleInfoExpand;

    move-result-object v1

    iget v1, v1, LQQPIM/AndroidSimpleInfoExpand;->sign:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lkw;->f(I)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lkw;->f(I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v6}, Lkw;->f(I)V

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lkw;->f(I)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0, v5}, Lkw;->f(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Laxs;->a:Laxj;

    invoke-static {v0}, Laxj;->p(Laxj;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laxs;->a:Laxj;

    invoke-virtual {v1}, Laxj;->e()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v1

    invoke-static {v4, v1, v6}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lkv;

    invoke-direct {v0}, Lkv;-><init>()V

    new-instance v1, Lkw;

    invoke-direct {v1}, Lkw;-><init>()V

    iput-object v1, v0, Lkv;->d:Lkw;

    const-string v1, ""

    iput-object v1, v0, Lkv;->mName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lkv;->mParentPath:Ljava/lang/String;

    iget-object v1, p0, Laxs;->a:Laxj;

    invoke-static {v1}, Laxj;->q(Laxj;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Laxs;->a:Laxj;

    invoke-virtual {v0}, Laxj;->a_()V

    iget-object v0, p0, Laxs;->a:Laxj;

    invoke-static {v0}, Laxj;->r(Laxj;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
