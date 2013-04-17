.class public final Laig;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laig$b;,
        Laig$a;,
        Laig$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Llw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Llw;",
            ">;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Laig;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Laig;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laig;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Laig;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Laig;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw;

    iget v3, v0, Llw;->a:I

    if-ne v3, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, v0, Llw;->a:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Laig;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    move-object p2, v0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Laig;->getItemViewType(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    if-nez p2, :cond_2

    const v0, 0x7f030109

    invoke-virtual {p0, p1, v0}, Laig;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Laig$a;

    invoke-direct {v1, v3}, Laig$a;-><init>(B)V

    const v0, 0x7f080363

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laig$a;->a:Landroid/widget/TextView;

    const v0, 0x7f080364

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, v1, Laig$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    :goto_1
    invoke-virtual {p0, p1}, Laig;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llw;

    iget-object v2, v1, Laig$a;->a:Landroid/widget/TextView;

    iget-object v0, v0, Llw;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Laig$a;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Laig$c;

    invoke-direct {v2, p0, p1, v3}, Laig$c;-><init>(Laig;IB)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laig$a;

    move-object v1, v0

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    const v0, 0x7f03010a

    invoke-virtual {p0, p1, v0}, Laig;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Laig$b;

    invoke-direct {v1, v3}, Laig$b;-><init>(B)V

    const v0, 0x7f080358

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laig$b;->a:Landroid/widget/ImageView;

    const v0, 0x7f08019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laig$b;->b:Landroid/widget/TextView;

    const v0, 0x7f08034c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laig$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2
    iget-object v1, v0, Laig$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Laig$b;->a:Landroid/widget/ImageView;

    const v2, 0x7f02016f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Laig$b;->b:Landroid/widget/TextView;

    const v2, 0x7f0b0058

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v0, Laig$b;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laig$b;

    goto :goto_2
.end method
