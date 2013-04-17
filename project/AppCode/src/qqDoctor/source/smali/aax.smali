.class final Laax;
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
        "LQQPIM/MySoftSimpleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Laaw;


# direct methods
.method constructor <init>(Laaw;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Laax;->b:Laaw;

    iput-object p2, p0, Laax;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 11

    const/4 v4, 0x0

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v0, "extra_notify_id"

    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->e(Laau;)Labe;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Laax;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p2}, Labe;->a(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v1, :cond_0

    const-string v0, "com.tencent.qqpimsecure.NOTIFY_UI_FAILURE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_error_code"

    iget v1, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dL()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6642

    iget v2, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->code:I

    invoke-virtual {v0, v1, v2}, Lnd;->a(II)V

    :goto_0
    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->g(Laau;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "com.tencent.qqpimsecure.NOTIFY_UI_NULL"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Laax;->b:Laaw;

    iget-boolean v1, v1, Laaw;->a:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Laax;->b:Laaw;

    iget-object v1, v1, Laaw;->b:Laau;

    invoke-static {v1, v0}, Laau;->a(Laau;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->c(Laau;)Ljt;

    move-result-object v0

    iget-object v2, v0, Ljt;->j:Ljava/lang/String;

    iget-object v3, v0, Ljt;->a:Lhs;

    new-instance v5, Lju;

    invoke-direct {v5, v0, v2, v1}, Lju;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lhs;->a(Ldv;)Z

    sget-object v0, Lij;->a:Lij;

    if-nez v0, :cond_3

    new-instance v0, Lij;

    invoke-direct {v0}, Lij;-><init>()V

    sput-object v0, Lij;->a:Lij;

    :cond_3
    sget-object v0, Lij;->a:Lij;

    invoke-virtual {v0}, Lij;->a()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v4

    move v2, v4

    :goto_2
    if-ge v5, v8, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    move v3, v4

    :goto_3
    if-ge v3, v9, :cond_4

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr;

    iget-object v10, v0, Ldr;->a:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr;

    iget-object v10, v0, Ldr;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->f(Laau;)Lkd;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "update_app_count"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->d(Laau;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cS()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->d(Laau;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cS()J

    move-result-wide v7

    sub-long/2addr v3, v7

    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->d(Laau;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bq()J

    move-result-wide v7

    const-wide/16 v9, 0x7

    mul-long/2addr v7, v9

    cmp-long v0, v3, v7

    if-lez v0, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {v0, v2}, Lov;->b(I)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cT()V

    :goto_5
    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->d(Laau;)Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lho;->q(J)V

    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0, v1}, Laau;->b(Laau;Ljava/util/List;)V

    const-string v0, "com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dL()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Laax;->b:Laaw;

    iget-object v0, v0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->d(Laau;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cT()V

    goto :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_4

    :cond_8
    move-object v1, v0

    goto/16 :goto_1
.end method
