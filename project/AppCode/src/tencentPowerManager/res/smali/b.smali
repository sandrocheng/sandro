.class public final Lb;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lbg;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lb;->a:Landroid/content/Context;

    iput-object v0, p0, Lb;->b:Ljava/util/List;

    iput-object p1, p0, Lb;->a:Landroid/content/Context;

    iput-object p2, p0, Lb;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lb;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lb;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbg;

    iget v0, v0, Lbg;->a:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lb;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbg;

    if-nez p2, :cond_0

    iget v1, v0, Lbg;->a:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    move-object v1, v2

    check-cast v1, Lcom/tencent/powermanager/uilib/view/BaseListItemView;

    iget-object v3, v0, Lbg;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/powermanager/uilib/view/BaseListItemView;->setTitleText(Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/tencent/powermanager/uilib/view/BaseListItemView;

    iget-boolean v3, v0, Lbg;->d:Z

    invoke-virtual {v1, v3}, Lcom/tencent/powermanager/uilib/view/BaseListItemView;->setEnable(Z)V

    iget v1, v0, Lbg;->a:I

    packed-switch v1, :pswitch_data_1

    :goto_2
    return-object v2

    :pswitch_0
    new-instance v1, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;

    iget-object v2, p0, Lb;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;

    iget-object v2, p0, Lb;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/tencent/powermanager/uilib/view/TextListItemView;

    iget-object v2, p0, Lb;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/powermanager/uilib/view/TextListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/tencent/powermanager/uilib/view/GroupListItemView;

    iget-object v2, p0, Lb;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/powermanager/uilib/view/GroupListItemView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    move-object v1, v2

    check-cast v1, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;

    iget-boolean v0, v0, Lbg;->e:Z

    invoke-virtual {v1, v0}, Lcom/tencent/powermanager/uilib/view/CheckBoxListItemView;->setCheckBoxOn(Z)V

    goto :goto_2

    :pswitch_5
    move-object v1, v2

    check-cast v1, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;

    iget-object v0, v0, Lbg;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/powermanager/uilib/view/SubTitleListItemView;->setSubTitleText(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move-object v2, p2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
