.class public Lcom/tencent/tmsecure/module/applist/AppListManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbtu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;LQQPIM/SoftListType;)Z
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/applist/AppListManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v4, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Lbtu;

    iget-object v0, v4, Lbtu;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftList;

    if-nez v0, :cond_2

    invoke-virtual {p2}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lbtu;->a(LQQPIM/SoftListType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtu;->b(Ljava/lang/String;Ljava/lang/String;)LQQPIM/SoftList;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lbtu;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v1, v0

    invoke-virtual {p2}, LQQPIM/SoftListType;->value()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v4, p1, v1}, Lbtu;->a(Ljava/lang/String;LQQPIM/SoftList;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v4, p1, v1}, Lbtu;->a(Ljava/lang/String;LQQPIM/SoftList;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, v4, Lbtu;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const-string v5, "size"

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftElementInfo;

    iget v7, v0, LQQPIM/SoftElementInfo;->softsize:I

    int-to-long v7, v7

    cmp-long v7, v7, v5

    if-nez v7, :cond_4

    goto :goto_1

    :cond_7
    iget-object v0, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-virtual {v4, p1, v0}, Lbtu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public loadAppList(LQQPIM/SoftListType;)LQQPIM/SoftList;
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/applist/AppListManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Lbtu;

    invoke-virtual {p1}, LQQPIM/SoftListType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lbtu;->a(LQQPIM/SoftListType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtu;->b(Ljava/lang/String;Ljava/lang/String;)LQQPIM/SoftList;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbtu;

    invoke-direct {v0}, Lbtu;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Lbtu;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Lbtu;

    invoke-virtual {v0, p1}, Lbtu;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/applist/AppListManager;->a:Lbtu;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/applist/AppListManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
