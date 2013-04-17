.class public final Lamc;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lkw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lsl;

.field private b:Landroid/widget/ListView;

.field private final c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Landroid/widget/ListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseView;",
            "Landroid/widget/ListView;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Lamc;->b:Landroid/widget/ListView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lamc;->a:Lsl;

    invoke-static {}, Lzo;->a()Lzo;

    iget-object v0, p0, Lamc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lamc;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lamc;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lamc;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lamc;)Lsl;
    .locals 1

    iget-object v0, p0, Lamc;->a:Lsl;

    return-object v0
.end method


# virtual methods
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
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lamc;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_1

    const v0, 0x7f030106

    invoke-virtual {p0, p1, v0}, Lamc;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lamc$a;

    invoke-direct {v1}, Lamc$a;-><init>()V

    const v0, 0x7f080358

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lamc$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f08019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lamc$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    iget-object v1, v0, Lamc$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lamc$a;->a:Landroid/widget/ImageView;

    const v2, 0x7f02016f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lamc$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lamc;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0979

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08034c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamc$a;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lamc;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    if-nez p2, :cond_4

    const v1, 0x7f03011f

    invoke-virtual {p0, p1, v1}, Lamc;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lamc$a;

    invoke-direct {v2}, Lamc$a;-><init>()V

    const v1, 0x7f080095

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lamc$a;->a:Landroid/widget/ImageView;

    const v1, 0x7f080384

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lamc$a;->b:Landroid/widget/TextView;

    const v1, 0x7f080219

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lamc$a;->c:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    iget-object v2, v1, Lamc$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lamc;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lamc;->a:Lsl;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lamc$a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lamc;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Llv;

    invoke-direct {v2}, Llv;-><init>()V

    const/4 v3, 0x2

    iput v3, v2, Llv;->b:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v2, Lmp;->g:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Llv;->d:Ljava/lang/String;

    iput v4, v2, Llv;->a:I

    iput-object v0, v2, Lmp;->h:Ljava/lang/Object;

    new-instance v3, Lamd;

    invoke-direct {v3, p0}, Lamd;-><init>(Lamc;)V

    iput-object v3, v2, Lmp;->i:Labu$a;

    iget-object v3, p0, Lamc;->a:Lsl;

    invoke-virtual {v3, v2}, Lsl;->b(Lmp;)Z

    :goto_3
    iget-object v2, v1, Lamc$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lamc$a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, v1, Lamc$a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamc$a;

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lamc;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    iget-object v2, v1, Lamc$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    iget-object v2, v1, Lamc$a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lamc;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
