.class final Lbri;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;


# instance fields
.field private synthetic a:Lbrf;


# direct methods
.method constructor <init>(Lbrf;)V
    .locals 0

    iput-object p1, p0, Lbri;->a:Lbrf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/tencent/tmsecure/module/market/ResponseInfo;Lcom/tencent/tmsecure/module/market/SpecialCategory;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v11, -0x1

    const/4 v3, 0x1

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbri;->a:Lbrf;

    iget-object v0, v0, Lbrf;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbri;->a:Lbrf;

    invoke-static {v0}, Lbrf;->d(Lbrf;)Ljt;

    move-result-object v0

    iget-object v1, p0, Lbri;->a:Lbrf;

    invoke-static {v1}, Lbrf;->c(Lbrf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbri;->a:Lbrf;

    invoke-virtual {v1}, Lbrf;->e()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v1

    invoke-static {v0, v1, v11}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/tencent/tmsecure/module/market/SpecialCategory;->softSimpleInfoExList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;

    iget-object v8, v1, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->expand:LQQPIM/AndroidSimpleInfoExpand;

    iget v9, v9, LQQPIM/AndroidSimpleInfoExpand;->sign:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    iget-object v0, v1, Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;->expand:LQQPIM/AndroidSimpleInfoExpand;

    iget v0, v0, LQQPIM/AndroidSimpleInfoExpand;->sign:I

    if-ne v0, v3, :cond_1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v8, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    iget-object v10, v10, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lbri;->a:Lbrf;

    invoke-static {v0}, Lbrf;->e(Lbrf;)Ljk;

    move-result-object v0

    sget v1, Ljk;->a:I

    invoke-virtual {v0, v1}, Ljk;->a(I)V

    :cond_3
    invoke-static {v6}, La;->b(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lbri;->a:Lbrf;

    invoke-static {v0}, Lbrf;->d(Lbrf;)Ljt;

    move-result-object v1

    iget-object v0, p0, Lbri;->a:Lbrf;

    invoke-static {v0}, Lbrf;->c(Lbrf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v1, Ljt;->a:Lhs;

    new-instance v0, Lka;

    invoke-direct/range {v0 .. v5}, Lka;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v6, v0}, Lhs;->a(Ldv;)Z

    :cond_4
    iget-object v0, p0, Lbri;->a:Lbrf;

    iget-object v1, p0, Lbri;->a:Lbrf;

    invoke-virtual {v1}, Lbrf;->e()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v1

    invoke-static {v3, v1, v11}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lbrf;->a(Lbrf;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_3
.end method
