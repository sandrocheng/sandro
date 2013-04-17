.class public final Laii;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laii$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<",
        "Lmb$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Lsl;

.field private e:I

.field private f:I

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Ljava/util/List;
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
            "Lmb$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lmb$a;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Laii;->e:I

    const/4 v0, -0x1

    iput v0, p0, Laii;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laii;->i:Ljava/util/List;

    iput-object p2, p0, Laii;->b:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iput-object v0, p0, Laii;->a:Landroid/widget/ListView;

    iget-object v0, p0, Laii;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Laii;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Laii;->d:Lsl;

    return-void
.end method

.method static synthetic a(Laii;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Laii;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Laii;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Laii;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Laii;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb$a;

    iget-object v4, v0, Lmb$a;->i:Lmb;

    iget-object v4, v4, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v0, Lmb$a;->i:Lmb;

    iput-object p2, v0, Lmb;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laii;->notifyDataSetChanged()V

    iget-object v0, p0, Laii;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Laii;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Laii;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Laii;->e:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Laii;->f:I

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Laii;->h:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Laii;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Laii;->f:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Laii;->f:I

    if-ne v0, v4, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lxi;->b()Z

    move-result v0

    :cond_1
    iget v3, p0, Laii;->f:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Laii;->f:I

    if-ne v3, v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Lxi;->b()Z

    move-result v1

    :cond_4
    if-eq v0, v1, :cond_5

    iget-object v0, p0, Laii;->b:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

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

.method public final b(I)V
    .locals 0

    iput p1, p0, Laii;->e:I

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x2

    const v7, 0x7f090024

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_6

    const v0, 0x7f030133

    invoke-virtual {p0, p1, v0}, Laii;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Laii$a;

    invoke-direct {v1, p0}, Laii$a;-><init>(Laii;)V

    const v0, 0x7f08035f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Laii$a;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0803b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laii$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f0800f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laii$a;->c:Landroid/widget/TextView;

    const v0, 0x7f0803ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laii$a;->d:Landroid/widget/TextView;

    const v0, 0x7f0803b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laii$a;->e:Landroid/widget/TextView;

    const v0, 0x7f080320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Laii$a;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f08035c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Laii$a;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f08035d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Laii$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Laii;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb$a;

    iget-object v1, v0, Lmb$a;->i:Lmb;

    iget-object v1, v1, Lmb;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lmb$a;->i:Lmb;

    iget-object v1, v1, Lmb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, v2, Laii$a;->c:Landroid/widget/TextView;

    iget-object v5, v0, Lmb$a;->i:Lmb;

    iget-object v5, v5, Lmb;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v2, Laii$a;->d:Landroid/widget/TextView;

    iget-object v5, v0, Lmb$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Laii$a;->e:Landroid/widget/TextView;

    iget-object v5, v0, Lmb$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lmb$a;->i:Lmb;

    iget v1, v1, Lmb;->c:I

    if-eqz v1, :cond_8

    move v1, v3

    :goto_2
    if-eqz v1, :cond_0

    iget v1, v0, Lmb$a;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    move v1, v3

    :goto_3
    if-nez v1, :cond_3

    :cond_0
    iget v1, p0, Laii;->f:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Laii;->f:I

    if-ne v1, v8, :cond_10

    :cond_1
    move v1, v4

    :goto_4
    if-eqz v1, :cond_2

    invoke-static {}, Lxi;->b()Z

    move-result v1

    :cond_2
    if-nez v1, :cond_a

    :cond_3
    move v1, v3

    :goto_5
    if-nez v1, :cond_c

    iget-object v1, v2, Laii$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v2, Laii$a;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Laii;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, v2, Laii$a;->g:Landroid/widget/LinearLayout;

    iget-object v5, p0, Laii;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Laii$a;->h:Landroid/widget/LinearLayout;

    iget-object v5, p0, Laii;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Laii$a;->g:Landroid/widget/LinearLayout;

    const v5, 0x7f080098

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v2, Laii$a;->h:Landroid/widget/LinearLayout;

    const v5, 0x7f080098

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Laii;->e:I

    if-eq p1, v1, :cond_b

    iget-object v1, v2, Laii$a;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Laii;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, v2, Laii$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    iget-object v1, v2, Laii$a;->g:Landroid/widget/LinearLayout;

    const v5, 0x7f08001c

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0b0b36

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v2, Laii$a;->h:Landroid/widget/LinearLayout;

    const v5, 0x7f08001c

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0b0b37

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v2, Laii$a;->g:Landroid/widget/LinearLayout;

    const v5, 0x7f080095

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f020128

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Laii$a;->h:Landroid/widget/LinearLayout;

    const v5, 0x7f080095

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f020129

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    iget-object v1, v0, Lmb$a;->i:Lmb;

    iget-object v1, v1, Lmb;->g:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_f

    iget-object v1, v2, Laii$a;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Laii;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v2, Laii$a;->b:Landroid/widget/ImageView;

    iget-object v2, v0, Lmb$a;->i:Lmb;

    iget-object v2, v2, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lkw;

    invoke-direct {v2}, Lkw;-><init>()V

    iget-object v1, v0, Lmb$a;->i:Lmb;

    iget-object v1, v1, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lkw;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lkw;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Laii;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v1, v4

    :goto_8
    if-ge v1, v6, :cond_e

    iget-object v0, p0, Laii;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v3

    :goto_9
    if-nez v0, :cond_4

    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    iput v8, v0, Llv;->b:I

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmp;->g:I

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llv;->d:Ljava/lang/String;

    iput v4, v0, Llv;->a:I

    iput-object v2, v0, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Laij;

    invoke-direct {v1, p0}, Laij;-><init>(Laii;)V

    iput-object v1, v0, Lmp;->i:Labu$a;

    iget-object v1, p0, Laii;->d:Lsl;

    invoke-virtual {v1, v0}, Lsl;->b(Lmp;)Z

    iget-object v0, p0, Laii;->i:Ljava/util/List;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_a
    iget-object v0, p0, Laii;->mItemModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->getItemStyle()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p2, v0}, Laii;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    :cond_5
    return-object p2

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laii$a;

    move-object v2, v0

    goto/16 :goto_0

    :cond_7
    iget-object v1, v2, Laii$a;->c:Landroid/widget/TextView;

    iget-object v5, v0, Lmb$a;->i:Lmb;

    iget-object v5, v5, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    move v1, v4

    goto/16 :goto_2

    :cond_9
    move v1, v4

    goto/16 :goto_3

    :cond_a
    move v1, v4

    goto/16 :goto_5

    :cond_b
    iget-object v1, v2, Laii$a;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Laii;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, v2, Laii$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_c
    iget-object v1, v2, Laii$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v2, Laii$a;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Laii;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_7

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_8

    :cond_e
    move v0, v4

    goto/16 :goto_9

    :cond_f
    iget-object v1, v2, Laii$a;->b:Landroid/widget/ImageView;

    iget-object v0, v0, Lmb$a;->i:Lmb;

    iget-object v0, v0, Lmb;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_10
    move v1, v3

    goto/16 :goto_4
.end method
