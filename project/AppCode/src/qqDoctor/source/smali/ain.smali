.class public final Lain;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lain$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lmb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Lsl;

.field private c:Landroid/widget/ListView;

.field private d:[Z

.field private e:[Lain$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseListView;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lmb;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lain;->f:Ljava/util/List;

    iget-object v0, p0, Lain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lain;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lain;->b:Lsl;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lain;->c:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lain;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lain;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lain;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lain;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lain;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb;

    iget-object v4, v0, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    iput-object p2, v0, Lmb;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lain;->notifyDataSetChanged()V

    iget-object v0, p0, Lain;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lain;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lain;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmb;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lain;->e:[Lain$a;

    array-length v3, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v2, p0, Lain;->e:[Lain$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lain;->e:[Lain$a;

    aget-object v2, v2, v0

    iget-object v5, v2, Lain$a;->e:Lmb;

    iget-object v2, p0, Lain;->e:[Lain$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lain$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v5, Lmb;->e:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method public final a(I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lain;->e:[Lain$a;

    array-length v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    if-ne p1, v0, :cond_4

    iget-object v4, p0, Lain;->e:[Lain$a;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    iget-object v3, p0, Lain;->e:[Lain$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lain$a;->c:Landroid/widget/CheckBox;

    iget-object v4, p0, Lain;->e:[Lain$a;

    aget-object v4, v4, v0

    iget-object v4, v4, Lain$a;->e:Lmb;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lain;->e:[Lain$a;

    aget-object v0, v4, v0

    iget-object v0, v0, Lain$a;->e:Lmb;

    iget v0, v0, Lmb;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lain;->d:[Z

    iget-object v3, p0, Lain;->d:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_3

    :goto_3
    aput-boolean v1, v0, p1

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    const v0, 0x7f030135

    invoke-virtual {p0, p1, v0}, Lain;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lain$a;

    invoke-direct {v1, p0}, Lain$a;-><init>(Lain;)V

    const v0, 0x7f0803b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lain$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0800f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lain$a;->b:Landroid/widget/TextView;

    const v0, 0x7f08014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lain$a;->c:Landroid/widget/CheckBox;

    const v0, 0x7f08031b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lain$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lain;->e:[Lain$a;

    aput-object v1, v0, p1

    iget-object v0, p0, Lain;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb;

    iget-object v4, v0, Lmb;->b:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lmb;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, v1, Lain$a;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lmb;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iput-object v0, v1, Lain$a;->e:Lmb;

    iget v4, v0, Lmb;->e:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    move v4, v2

    :goto_2
    if-eqz v4, :cond_4

    iget-object v4, v1, Lain$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v4, v1, Lain$a;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v4, v1, Lain$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v4, v0, Lmb;->g:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    iget-object v4, v1, Lain$a;->a:Landroid/widget/ImageView;

    iget-object v5, p0, Lain;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v1, Lain$a;->a:Landroid/widget/ImageView;

    iget-object v4, v0, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v4, Lkw;

    invoke-direct {v4}, Lkw;-><init>()V

    iget-object v1, v0, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lkw;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lkw;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lain;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v1, v3

    :goto_4
    if-ge v1, v6, :cond_6

    iget-object v0, p0, Lain;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_5
    if-nez v0, :cond_0

    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Llv;->b:I

    invoke-virtual {v4}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmp;->g:I

    invoke-virtual {v4}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llv;->d:Ljava/lang/String;

    iput v3, v0, Llv;->a:I

    iput-object v4, v0, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Laio;

    invoke-direct {v1, p0}, Laio;-><init>(Lain;)V

    iput-object v1, v0, Lmp;->i:Labu$a;

    iget-object v1, p0, Lain;->b:Lsl;

    invoke-virtual {v1, v0}, Lsl;->b(Lmp;)Z

    :cond_0
    :goto_6
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lain$a;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v4, v1, Lain$a;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    move v4, v3

    goto/16 :goto_2

    :cond_4
    iget-object v4, v1, Lain$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v4, v1, Lain$a;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v1, Lain$a;->c:Landroid/widget/CheckBox;

    iget-object v5, p0, Lain;->d:[Z

    aget-boolean v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_5

    :cond_7
    iget-object v1, v1, Lain$a;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lmb;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public final notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lain;->getCount()I

    move-result v0

    iget-object v1, p0, Lain;->d:[Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lain;->d:[Z

    array-length v1, v1

    if-eq v1, v0, :cond_1

    :cond_0
    new-array v1, v0, [Z

    iput-object v1, p0, Lain;->d:[Z

    :cond_1
    iget-object v1, p0, Lain;->e:[Lain$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lain;->e:[Lain$a;

    array-length v1, v1

    if-eq v1, v0, :cond_3

    :cond_2
    new-array v0, v0, [Lain$a;

    iput-object v0, p0, Lain;->e:[Lain$a;

    :cond_3
    return-void
.end method
