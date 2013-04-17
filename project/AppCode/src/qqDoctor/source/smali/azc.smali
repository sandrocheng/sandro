.class final Lazc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;


# instance fields
.field private synthetic a:Layy;


# direct methods
.method constructor <init>(Layy;)V
    .locals 0

    iput-object p1, p0, Lazc;->a:Layy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;Lcom/tencent/tmsecure/module/market/SpecialCategory;)V
    .locals 4

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lazc;->a:Layy;

    invoke-static {v1}, Layy;->l(Layy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getCategoryEx()Lcom/tencent/tmsecure/module/market/CategoryEx;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getCategoryEx()Lcom/tencent/tmsecure/module/market/CategoryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/market/CategoryEx;->getCategory()LQQPIM/Category;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lazc;->a:Layy;

    invoke-virtual {v0}, LQQPIM/Category;->getId()I

    move-result v2

    invoke-static {v1, v2}, Layy;->a(Layy;I)I

    iget-object v1, p0, Lazc;->a:Layy;

    invoke-virtual {v0}, LQQPIM/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Layy;->a(Layy;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lazc;->a:Layy;

    invoke-virtual {v0}, LQQPIM/Category;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Layy;->b(Layy;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lazc;->a:Layy;

    invoke-virtual {v0}, LQQPIM/Category;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Layy;->b(Layy;I)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getSoftSimpleInfoExList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lazc;->a:Layy;

    invoke-static {v1}, La;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lazc;->a:Layy;

    invoke-virtual {v2}, Layy;->e()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Layy;->b(Layy;Ljava/util/List;)Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lazc;->a:Layy;

    invoke-static {v0}, Layy;->m(Layy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
