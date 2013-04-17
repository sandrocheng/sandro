.class final Laxt;
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
        "LQQPIM/ADInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxt;->a:Laxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 5

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxt;->a:Laxj;

    invoke-static {v0}, Laxj;->s(Laxj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6643

    iget v2, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-virtual {v0, v1, v2}, Lnd;->a(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ADInfo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Lkw;

    invoke-direct {v1}, Lkw;-><init>()V

    invoke-virtual {v0}, LQQPIM/ADInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v4

    iget-object v4, v4, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lkw;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/ADInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v4

    iget-object v4, v4, LQQPIM/SoftKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lkw;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/ADInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v4

    iget-object v4, v4, LQQPIM/SoftKey;->version:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lkw;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/ADInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v4

    iget v4, v4, LQQPIM/SoftKey;->versioncode:I

    invoke-virtual {v1, v4}, Lkw;->setVersionCode(I)V

    invoke-virtual {v0}, LQQPIM/ADInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v4

    iget-object v4, v4, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lkw;->setCertMD5(Ljava/lang/String;)V

    iget-object v4, v0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lkw;->e(Ljava/lang/String;)V

    iget-object v4, v0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lkw;->b(Ljava/lang/String;)V

    iget-object v0, v0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lkw;->m(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lkw;->f(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Laxt;->a:Laxj;

    invoke-static {v0, v2}, Laxj;->a(Laxj;Ljava/util/List;)Ljava/util/List;

    :try_start_0
    iget-object v0, p0, Laxt;->a:Laxj;

    iget-object v1, p0, Laxt;->a:Laxj;

    invoke-static {v1}, Laxj;->b(Laxj;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Laxj;->b(Laxj;Ljava/util/List;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Laxt;->a:Laxj;

    invoke-static {v1}, Laxj;->g(Laxj;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v0, p0, Laxt;->a:Laxj;

    invoke-static {v0}, Laxj;->t(Laxj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laxt;->a:Laxj;

    invoke-static {v1}, Laxj;->u(Laxj;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, La;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Laxt;->a:Laxj;

    invoke-static {v1}, Laxj;->b(Laxj;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Laxt;->a:Laxj;

    invoke-static {v1}, Laxj;->v(Laxj;)Ljt;

    move-result-object v1

    iget-object v2, v1, Ljt;->b:Ljava/lang/String;

    iget-object v3, v1, Ljt;->a:Lhs;

    new-instance v4, Lju;

    invoke-direct {v4, v1, v2, v0}, Lju;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhs;->a(Ldv;)Z

    iget-object v0, p0, Laxt;->a:Laxj;

    invoke-static {v0}, Laxj;->w(Laxj;)Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->r(J)V

    :cond_4
    iget-object v0, p0, Laxt;->a:Laxj;

    invoke-static {v0}, Laxj;->x(Laxj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
