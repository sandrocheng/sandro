.class public final Lali;
.super Lala;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Z


# direct methods
.method public constructor <init>(Lbmd;Ljava/util/List;)V
    .locals 3
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

    iget-object v0, p0, Lali;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lali;->b:Landroid/view/View;

    iget-object v0, p0, Lali;->b:Landroid/view/View;

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lali;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lali;->b:Landroid/view/View;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lali;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lali;->b:Landroid/view/View;

    const v1, 0x7f080188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lali;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lali;->b:Landroid/view/View;

    const v1, 0x7f080189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lali;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lali;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lali;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lali;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lali;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lali;->g:Z

    return-void
.end method

.method public final getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lali;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p2, :cond_1

    const v0, 0x7f0300f6

    invoke-virtual {p0, p1, v0}, Lali;->createItemView(II)Landroid/view/View;

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

    const v0, 0x7f080333

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lala$a;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lali;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v2, v1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lala$a;->g:Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;

    iget-object v3, p0, Lali;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1, v0}, Lali;->b(Lala$a;Lkv;)V

    invoke-virtual {p0, v1, v0}, Lali;->c(Lala$a;Lkv;)V

    iget-object v2, v1, Lala$a;->e:Landroid/widget/RatingBar;

    iget-object v3, v0, Lkv;->d:Lkw;

    invoke-virtual {v3}, Lkw;->l()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    iget-boolean v2, p0, Lali;->g:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lala$a;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lala$a;->h:Landroid/widget/TextView;

    iget-object v3, v0, Lkv;->d:Lkw;

    invoke-virtual {v3}, Lkw;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0, v1, v0}, Lali;->a(Lala$a;Lkv;)V

    :cond_0
    :goto_2
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lala$a;

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lala$a;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_0

    iget-object p2, p0, Lali;->b:Landroid/view/View;

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnd;->a(I)V

    iget-object v0, p0, Lali;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    const/16 v0, 0x6658

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lali;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/RankingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x65bf

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lali;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/CategoryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x6659

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lali;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/GameCategoryListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x662c

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lali;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareCategoryListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080186
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
