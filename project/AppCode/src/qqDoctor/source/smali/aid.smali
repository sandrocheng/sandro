.class public final Laid;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laid$b;,
        Laid$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Llf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Llf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Llf;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Laid;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Laid;)Ldv;
    .locals 1

    iget-object v0, p0, Laid;->b:Ldv;

    return-object v0
.end method


# virtual methods
.method public final a(Ldv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldv",
            "<",
            "Llf;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Laid;->b:Ldv;

    return-void
.end method

.method public final getItemViewType(I)I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Laid;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Laid;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget v2, v0, Llf;->b:I

    if-eqz v2, :cond_1

    iget v2, v0, Llf;->b:I

    if-eq v2, v1, :cond_1

    iget v0, v0, Llf;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Laid;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p0, p1}, Laid;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    invoke-virtual {p0, p1}, Laid;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_5

    if-nez p2, :cond_4

    const v1, 0x7f030105

    invoke-virtual {p0, p1, v1}, Laid;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v2, Laid$a;

    invoke-direct {v2, v3}, Laid$a;-><init>(B)V

    const v1, 0x7f080325

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laid$a;->a:Landroid/widget/TextView;

    const v1, 0x7f080327

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laid$a;->b:Landroid/widget/TextView;

    const v1, 0x7f080357

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v1, v2, Laid$a;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_1
    iget-object v2, v0, Llf;->name:Ljava/lang/String;

    iget-object v3, v1, Laid$a;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v2, p0, Laid;->a:Landroid/content/Context;

    const v4, 0x7f0b0005

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Laid$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Laid$a;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Laie;

    invoke-direct {v2, p0, v0}, Laie;-><init>(Laid;Llf;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laid$a;

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez p2, :cond_6

    const v1, 0x7f030106

    invoke-virtual {p0, p1, v1}, Laid;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v2, Laid$b;

    invoke-direct {v2, v3}, Laid$b;-><init>(B)V

    const v1, 0x7f080358

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Laid$b;->a:Landroid/widget/ImageView;

    const v1, 0x7f08019a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laid$b;->b:Landroid/widget/TextView;

    const v1, 0x7f08034c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Laid$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    iget-object v2, v1, Laid$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Laid$b;->a:Landroid/widget/ImageView;

    const v3, 0x7f02016f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v1, Laid$b;->b:Landroid/widget/TextView;

    iget-object v0, v0, Llf;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Laid$b;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laid$b;

    goto :goto_2
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
