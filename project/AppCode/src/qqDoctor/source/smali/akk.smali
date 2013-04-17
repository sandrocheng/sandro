.class public final Lakk;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lkx;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lsl;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/widget/ListView;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
            "<",
            "Lkx;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkx;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lakk;->c:Landroid/widget/ListView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lakk;->a:Lsl;

    iget-object v0, p0, Lakk;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lakk;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static a(Lkx;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lkx;->a()[B

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-byte v4, v2, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic a(Lakk;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lakk;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lakk;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lakk;->c:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lakk;->d:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lakk;->e:Z

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_1

    const v0, 0x7f03012c

    invoke-virtual {p0, p1, v0}, Lakk;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lakk$a;

    invoke-direct {v1, p0}, Lakk$a;-><init>(Lakk;)V

    const v0, 0x7f080095

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lakk$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f080139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakk$a;->b:Landroid/widget/TextView;

    const v0, 0x7f080361

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakk$a;->c:Landroid/widget/TextView;

    const v0, 0x7f08021a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, v1, Lakk$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, v1, Lakk$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v2, 0x7f020050

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setBackGroundRes(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lakk;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    iget-object v2, v0, Lkx;->d:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, v1, Lakk$a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lakk;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lakk$a;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lkx;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lkw;

    invoke-direct {v2}, Lkw;-><init>()V

    iget-object v3, v0, Lkx;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lkw;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lkw;->a(Ljava/lang/Object;)V

    new-instance v3, Llv;

    invoke-direct {v3}, Llv;-><init>()V

    const/4 v4, 0x2

    iput v4, v3, Llv;->b:I

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    iput v4, v3, Lmp;->g:I

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Llv;->d:Ljava/lang/String;

    iput v6, v3, Llv;->a:I

    iput-object v2, v3, Lmp;->h:Ljava/lang/Object;

    new-instance v2, Lakm;

    invoke-direct {v2, p0}, Lakm;-><init>(Lakk;)V

    iput-object v2, v3, Lmp;->i:Labu$a;

    iget-object v2, p0, Lakk;->a:Lsl;

    invoke-virtual {v2, v3}, Lsl;->b(Lmp;)Z

    :goto_1
    iget-object v2, v1, Lakk$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lkx;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lakk$a;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lakk;->mContext:Landroid/content/Context;

    const v4, 0x7f0b06e9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lakk;->a(Lkx;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lakk;->e:Z

    if-nez v2, :cond_3

    iget-object v0, v1, Lakk$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lakk;->mItemModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->getItemStyle()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2, v0}, Lakk;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk$a;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v2, v1, Lakk$a;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lkx;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lakk$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v2, v6}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v2, v1, Lakk$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-boolean v0, v0, Lkx;->g:Z

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-object v0, v1, Lakk$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lakk$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v1, Lakl;

    invoke-direct {v1, p0}, Lakl;-><init>(Lakk;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
