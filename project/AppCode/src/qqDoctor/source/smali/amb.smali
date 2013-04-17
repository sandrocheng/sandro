.class public final Lamb;
.super Lakw;


# instance fields
.field private c:Lbra;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
            "<",
            "Lkw;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lakw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Landroid/widget/ListView;Ljava/util/List;I)V

    check-cast p1, Lbra;

    iput-object p1, p0, Lamb;->c:Lbra;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lakw;->a()V

    invoke-virtual {p0}, Lamb;->c()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lamb;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v1, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {p0, v0}, Lamb;->b(Lkw;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lkw;->S()J

    move-result-wide v8

    add-long v0, v1, v8

    :goto_1
    move-wide v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lamb;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0980

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lamb;->c:Lbra;

    invoke-virtual {v0}, Lbra;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lamb;->c:Lbra;

    invoke-virtual {v0}, Lbra;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0}, Lamb;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-object v1, p0, Lamb;->c:Lbra;

    invoke-virtual {v1, v0}, Lbra;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void

    :cond_1
    move v1, v5

    goto :goto_3

    :cond_2
    move-object v1, v0

    goto :goto_2

    :cond_3
    move-wide v0, v1

    goto :goto_1
.end method

.method protected final a(Lakw$a;Lkw;)V
    .locals 9

    const/4 v8, 0x2

    const/16 v4, 0x8

    const/4 v7, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lakw$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lakw$a;->q:Landroid/widget/LinearLayout;

    const v3, 0x7f09004b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p1, Lakw$a;->i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lkw;->U()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lkw;->S()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    iget-object v0, p0, Lamb;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0985

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lakw$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b098b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Lkw;->U()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p1, Lakw$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b098a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Lkw;->U()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2}, Lkw;->S()J

    move-result-wide v5

    invoke-static {v5, v6}, La;->b(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p1, Lakw$a;->i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lkw;->U()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lkw;->S()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    iget-object v0, p1, Lakw$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lamb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0989

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p1, Lakw$a;->i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lakw$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0990

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lkw;->S()J

    move-result-wide v4

    invoke-static {v4, v5}, La;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lkw;->U()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lakw$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lamb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0986

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lakw$a;->i:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method protected final a(Lkw;)V
    .locals 2

    invoke-virtual {p1}, Lkw;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lkw;->b(I)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lamb;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {p0, v0}, Lamb;->b(Lkw;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lkw;->U()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lamb;->a(Ljava/util/List;)V

    :goto_1
    invoke-virtual {p0}, Lamb;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lamb;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lamb;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
