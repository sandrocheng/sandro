.class public final Laik;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laik$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<",
        "Lmb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Lsl;

.field private e:Lja;

.field private f:I

.field private g:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
            "<",
            "Lmb;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lmb;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, -0x1

    iput v0, p0, Laik;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laik;->g:Ljava/util/List;

    iput-object p2, p0, Laik;->b:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iput-object v0, p0, Laik;->a:Landroid/widget/ListView;

    iget-object v0, p0, Laik;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Laik;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Laik;->d:Lsl;

    new-instance v0, Lja;

    invoke-direct {v0}, Lja;-><init>()V

    iput-object v0, p0, Laik;->e:Lja;

    return-void
.end method

.method static synthetic a(Laik;)Lja;
    .locals 1

    iget-object v0, p0, Laik;->e:Lja;

    return-object v0
.end method

.method static synthetic a(Laik;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Laik;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Laik;->mDataList:Ljava/util/List;

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
    invoke-virtual {p0}, Laik;->notifyDataSetChanged()V

    iget-object v0, p0, Laik;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Laik;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Laik;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic b(Laik;)V
    .locals 1

    iget-object v0, p0, Laik;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lwn;->a(Landroid/content/Context;)Lwn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwn;->b()V

    :cond_0
    return-void
.end method

.method static synthetic c(Laik;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 1

    iget-object v0, p0, Laik;->b:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-object v0
.end method

.method static synthetic d(Laik;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Laik;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Laik;->f:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Laik;->f:I

    if-ne v0, v4, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lxi;->b()Z

    move-result v0

    :cond_1
    iget v3, p0, Laik;->f:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Laik;->f:I

    if-ne v3, v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Lxi;->b()Z

    move-result v1

    :cond_4
    if-eq v0, v1, :cond_5

    iget-object v0, p0, Laik;->b:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Laik;->f:I

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Laik;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb;

    if-nez p2, :cond_0

    const v1, 0x7f030134

    invoke-virtual {p0, p1, v1}, Laik;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v4, Laik$a;

    invoke-direct {v4, p0}, Laik$a;-><init>(Laik;)V

    const v1, 0x7f0803b8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Laik$a;->a:Landroid/widget/ImageView;

    const v1, 0x7f0800f9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Laik$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0803bb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v1, v4, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v1, v4, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v4, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v5, 0x7f02004f

    invoke-virtual {v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setBackGroundRes(I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v1, p2

    :goto_0
    if-nez v5, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laik$a;

    move-object v5, v1

    move-object v1, p2

    goto :goto_0

    :cond_1
    iget-object v4, v5, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lmb;->b:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lmb;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, v5, Laik$a;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lmb;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget v4, v0, Lmb;->c:I

    if-ne v4, v8, :cond_7

    move v4, v2

    :goto_3
    if-eqz v4, :cond_8

    iget-object v4, v5, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    :goto_4
    iget v4, p0, Laik;->f:I

    if-eq v4, v2, :cond_2

    iget v4, p0, Laik;->f:I

    if-ne v4, v8, :cond_d

    :cond_2
    move v4, v3

    :goto_5
    if-eqz v4, :cond_3

    invoke-static {}, Lxi;->b()Z

    move-result v4

    :cond_3
    if-eqz v4, :cond_9

    iget-object v4, v5, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v4, v5, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v4, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setEnabled(Z)V

    iget-object v4, v5, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v6, Lail;

    invoke-direct {v6, p0}, Lail;-><init>(Laik;)V

    invoke-virtual {v4, v6}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    iget-object v4, v0, Lmb;->g:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_c

    iget-object v4, v5, Laik$a;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Laik;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v5, Laik$a;->a:Landroid/widget/ImageView;

    iget-object v5, v0, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v5, Lkw;

    invoke-direct {v5}, Lkw;-><init>()V

    iget-object v4, v0, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lkw;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lkw;->a(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Laik;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    :goto_7
    if-ge v4, v7, :cond_b

    iget-object v0, p0, Laik;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_8
    if-nez v0, :cond_4

    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    iput v8, v0, Llv;->b:I

    invoke-virtual {v5}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v0, Lmp;->g:I

    invoke-virtual {v5}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Llv;->d:Ljava/lang/String;

    iput v3, v0, Llv;->a:I

    iput-object v5, v0, Lmp;->h:Ljava/lang/Object;

    new-instance v2, Laim;

    invoke-direct {v2, p0}, Laim;-><init>(Laik;)V

    iput-object v2, v0, Lmp;->i:Labu$a;

    iget-object v2, p0, Laik;->d:Lsl;

    invoke-virtual {v2, v0}, Lsl;->b(Lmp;)Z

    :cond_4
    :goto_9
    iget-object v0, p0, Laik;->mItemModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->getItemStyle()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v1, v0}, Laik;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    :cond_5
    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    iget-object v4, v5, Laik$a;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    move v4, v3

    goto/16 :goto_3

    :cond_8
    iget-object v4, v5, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v4, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    goto/16 :goto_4

    :cond_9
    iget-object v4, v5, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v4, v5, Laik$a;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7

    :cond_b
    move v0, v3

    goto :goto_8

    :cond_c
    iget-object v2, v5, Laik$a;->a:Landroid/widget/ImageView;

    iget-object v0, v0, Lmb;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_d
    move v4, v2

    goto/16 :goto_5
.end method
