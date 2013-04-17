.class public final Lakg;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<",
        "Llz;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
            "<",
            "Llz;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Llz;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lakg;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lakg;->b:I

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    const v0, 0x7f03010c

    invoke-virtual {p0, p1, v0}, Lakg;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lakg$a;

    invoke-direct {v1}, Lakg$a;-><init>()V

    const v0, 0x7f0801e4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lakg$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f08036c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakg$a;->b:Landroid/widget/TextView;

    const v0, 0x7f08036d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakg$a;->c:Landroid/widget/TextView;

    const v0, 0x7f08036e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakg$a;->d:Landroid/widget/TextView;

    const v0, 0x7f08036f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakg$a;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lakg;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llz;

    iget-object v2, v1, Lakg$a;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Llz;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lakg$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Llz;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lakg$a;->c:Landroid/widget/TextView;

    iget-object v3, v0, Llz;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lakg$a;->d:Landroid/widget/TextView;

    iget-object v3, v0, Llz;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Llz;->f:Ljava/lang/String;

    iget-object v3, p0, Lakg;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0406

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lakg$a;->d:Landroid/widget/TextView;

    sget v3, Lakg;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v1, v1, Lakg$a;->e:Landroid/widget/TextView;

    iget-object v0, v0, Llz;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakg$a;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lakg$a;->d:Landroid/widget/TextView;

    sget v3, Lakg;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
