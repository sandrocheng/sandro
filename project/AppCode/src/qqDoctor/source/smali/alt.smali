.class public final Lalt;
.super Lakw;


# instance fields
.field private c:Z


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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lalt;->c:Z

    return-void
.end method


# virtual methods
.method protected final a(Lakw$a;Lkw;)V
    .locals 7

    const-wide/16 v5, -0x1

    const v4, 0x7f090020

    const v3, 0x7f02017b

    const/16 v2, 0x8

    iget-object v0, p1, Lakw$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lkw;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lalt;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v1, p1, Lakw$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lkw;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v2, v0

    cmp-long v0, v2, v5

    if-nez v0, :cond_1

    const-string v0, "0K"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lakw$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lalt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p2}, Lkw;->v()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    return-void

    :cond_0
    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, Lakw$a;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->f:Landroid/widget/TextView;

    sget-object v1, Lkw;->b:[Ljava/lang/String;

    invoke-virtual {p2}, Lkw;->v()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lakw$a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lalt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p1, Lakw$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lkw;->getSize()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v2, v0

    cmp-long v0, v2, v5

    if-nez v0, :cond_3

    const-string v0, "0K"

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lakw$a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lalt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    invoke-static {v2, v3}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v1, p0, Lakw;->b:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v1, Lbod;

    invoke-virtual {v0}, Lkw;->n()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x1e8484

    invoke-virtual {v1, v0, v2}, Lbod;->a(Lkw;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    const/16 v3, 0x65e3

    invoke-virtual {v2, v3}, Lnd;->a(I)V

    invoke-virtual {v1, v0}, Lbod;->a(Lkw;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lalt;->c:Z

    return-void
.end method
