.class final Laya;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;


# instance fields
.field private synthetic a:Laxx;


# direct methods
.method constructor <init>(Laxx;)V
    .locals 0

    iput-object p1, p0, Laya;->a:Laxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;Lcom/tencent/tmsecure/module/market/SpecialCategory;)V
    .locals 6

    const/4 v4, 0x2

    const/4 v5, -0x2

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Laya;->a:Laxx;

    invoke-static {v0}, Laxx;->c(Laxx;)V

    iget-object v0, p0, Laya;->a:Laxx;

    invoke-static {v0}, Laxx;->d(Laxx;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laya;->a:Laxx;

    invoke-static {v0}, Laxx;->e(Laxx;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Laya;->a:Laxx;

    invoke-static {v0}, Laxx;->f(Laxx;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getSoftSimpleInfoExList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laya;->a:Laxx;

    invoke-static {v0}, Laxx;->g(Laxx;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/market/SpecialCategory;->getSoftSimpleInfoExList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, La;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0, v4}, Lkw;->f(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laya;->a:Laxx;

    invoke-static {v0}, Laxx;->h(Laxx;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Laya;->a:Laxx;

    invoke-virtual {v3}, Laxx;->e()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Laya;->a:Laxx;

    invoke-virtual {v0}, Laxx;->a_()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Laya;->a:Laxx;

    invoke-static {v2}, Laxx;->i(Laxx;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, La;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Laya;->a:Laxx;

    invoke-static {v2}, Laxx;->j(Laxx;)I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Laya;->a:Laxx;

    invoke-static {v1}, Laxx;->k(Laxx;)Z

    iget-object v1, p0, Laya;->a:Laxx;

    invoke-static {v1}, Laxx;->l(Laxx;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RankingView fetchSpecialCategory mScrollPage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laya;->a:Laxx;

    invoke-static {v2}, Laxx;->m(Laxx;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Laya;->a:Laxx;

    invoke-static {v1}, Laxx;->m(Laxx;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Laya;->a:Laxx;

    invoke-static {v1}, Laxx;->n(Laxx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Laya;->a:Laxx;

    invoke-static {v1}, Laxx;->o(Laxx;)Ljt;

    move-result-object v1

    iget-object v2, v1, Ljt;->m:Ljava/lang/String;

    iget-object v3, v1, Ljt;->a:Lhs;

    new-instance v4, Lju;

    invoke-direct {v4, v1, v2, v0}, Lju;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhs;->a(Ldv;)Z

    iget-object v0, p0, Laya;->a:Laxx;

    invoke-static {v0}, Laxx;->p(Laxx;)Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->s(J)V

    :cond_5
    iget-object v0, p0, Laya;->a:Laxx;

    invoke-static {v0}, Laxx;->q(Laxx;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
