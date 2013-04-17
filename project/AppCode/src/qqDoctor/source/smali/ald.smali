.class public final Lald;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lald$a;
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
.field private a:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lsl;

.field private c:I

.field private d:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/BaseListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseListView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, -0x1

    iput v0, p0, Lald;->c:I

    invoke-virtual {p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lald;->b:Lsl;

    const/4 v0, 0x2

    iput v0, p0, Lald;->c:I

    invoke-virtual {p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput-object v0, p0, Lald;->d:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-void
.end method

.method static synthetic a(Lald;)Ldv;
    .locals 1

    iget-object v0, p0, Lald;->a:Ldv;

    return-object v0
.end method

.method static synthetic b(Lald;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lald;->d:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic c(Lald;)Lsl;
    .locals 1

    iget-object v0, p0, Lald;->b:Lsl;

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
            "Lkw;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lald;->a:Ldv;

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lald;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    if-nez p2, :cond_1

    const v1, 0x7f030104

    invoke-virtual {p0, p1, v1}, Lald;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lald$a;

    invoke-direct {v2, v7}, Lald$a;-><init>(B)V

    const v1, 0x7f080095

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lald$a;->a:Landroid/widget/ImageView;

    const v1, 0x7f080139

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lald$a;->b:Landroid/widget/TextView;

    const v1, 0x7f080097

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lald$a;->c:Landroid/widget/TextView;

    const v1, 0x7f080357

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v1, v2, Lald$a;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, v2, Lald$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v2, Lald$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lald$a;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lald;->mContext:Landroid/content/Context;

    const v6, 0x7f0b001e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lald$a;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v4, p0, Lald;->mContext:Landroid/content/Context;

    const v5, 0x7f0b000d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v1, v2, Lald$a;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v4, Lale;

    invoke-direct {v4, p0, v0}, Lale;-><init>(Lald;Lkw;)V

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Lald$a;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/high16 v4, 0x4170

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setTextSize(F)V

    iget-object v1, v2, Lald$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lald;->b:Lsl;

    if-eqz v1, :cond_2

    iget-object v1, v2, Lald$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Llv;

    invoke-direct {v1}, Llv;-><init>()V

    iget v2, p0, Lald;->c:I

    iput v2, v1, Llv;->b:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v1, Lmp;->g:I

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llv;->d:Ljava/lang/String;

    iput v7, v1, Llv;->a:I

    iput-object v0, v1, Lmp;->h:Ljava/lang/Object;

    new-instance v0, Lalf;

    invoke-direct {v0, p0}, Lalf;-><init>(Lald;)V

    iput-object v0, v1, Lmp;->i:Labu$a;

    iget-object v0, p0, Lald;->b:Lsl;

    invoke-virtual {v0, v1}, Lsl;->b(Lmp;)Z

    :goto_2
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lald$a;

    move-object v2, v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v1, v2, Lald$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    iget-object v0, v2, Lald$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    move-object v1, v3

    goto :goto_1
.end method
