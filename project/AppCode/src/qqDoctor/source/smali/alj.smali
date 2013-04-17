.class public final Lalj;
.super Lala;


# direct methods
.method public constructor <init>(Lbmd;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmd;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkv;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lala;-><init>(Lbmd;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    const v0, 0x7f0300f7

    invoke-virtual {p0, p1, v0}, Lalj;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lala$a;

    invoke-direct {v1}, Lala$a;-><init>()V

    const v0, 0x7f080139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->a:Landroid/widget/TextView;

    const v0, 0x7f080095

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lala$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f080331

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->c:Landroid/widget/TextView;

    const v0, 0x7f080332

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->d:Landroid/widget/TextView;

    const v0, 0x7f080335

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    iput-object v0, v1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    const v0, 0x7f080334

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lala$a;->f:Landroid/widget/ImageView;

    const v0, 0x7f080286

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v1, Lala$a;->e:Landroid/widget/RatingBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lalj;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v1, v2, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    iget-object v3, p0, Lalj;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lalj;->mItemModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {p0, p2, v1}, Lalj;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    invoke-virtual {p0, v2, v0}, Lalj;->b(Lala$a;Lkv;)V

    invoke-virtual {p0, v2, v0}, Lalj;->c(Lala$a;Lkv;)V

    iget-object v1, v2, Lala$a;->e:Landroid/widget/RatingBar;

    iget-object v3, v0, Lkv;->d:Lkw;

    invoke-virtual {v3}, Lkw;->l()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setRating(F)V

    invoke-virtual {p0, v2, v0}, Lalj;->a(Lala$a;Lkv;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lala$a;

    move-object v2, v0

    goto :goto_0
.end method
