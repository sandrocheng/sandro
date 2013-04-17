.class public final Lakh;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<",
        "Lkx;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lsl;

.field private b:Landroid/widget/ListView;

.field private c:Lmd;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;Lmd;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
            "<",
            "Lkx;",
            ">;",
            "Lmd;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkx;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, -0x1

    iput v0, p0, Lakh;->d:I

    iput-object p3, p0, Lakh;->c:Lmd;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iput-object v0, p0, Lakh;->b:Landroid/widget/ListView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getImageLoaderService()Lsl;

    move-result-object v0

    iput-object v0, p0, Lakh;->a:Lsl;

    iget-object v0, p0, Lakh;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lakh;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Lkx;)I
    .locals 6

    const/4 v2, 0x2

    iget-object v3, p1, Lkx;->e:[B

    const/4 v0, 0x1

    iget-object v1, p0, Lakh;->c:Lmd;

    iget-object v1, v1, Lmd;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-byte v5, v3, v0

    if-nez v5, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    aget-byte v0, v3, v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lakh;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lakh;->b:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lakh;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lakh;->i:I

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lakh;->f:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lakh;->g:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lakh;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lakh;->j:Z

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lakh;->d:I

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v9, 0x7f080095

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const v5, 0x7f080098

    if-nez p2, :cond_2

    const v0, 0x7f030112

    invoke-virtual {p0, p1, v0}, Lakh;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lakh$a;

    invoke-direct {v1, p0}, Lakh$a;-><init>(Lakh;)V

    const v0, 0x7f08035f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lakh$a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lakh$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f080139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakh$a;->c:Landroid/widget/TextView;

    const v0, 0x7f080361

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lakh$a;->d:Landroid/widget/TextView;

    const v0, 0x7f080362

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lakh$a;->e:Landroid/widget/ImageView;

    const v0, 0x7f080320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lakh$a;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f08035c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lakh$a;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f08035d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lakh$a;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f08035e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lakh$a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lakh;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    iget-object v2, v0, Lkx;->d:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, v1, Lakh$a;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lakh;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lakh$a;->b:Landroid/widget/ImageView;

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

    new-instance v2, Laki;

    invoke-direct {v2, p0}, Laki;-><init>(Lakh;)V

    iput-object v2, v3, Lmp;->i:Labu$a;

    iget-object v2, p0, Lakh;->a:Lsl;

    invoke-virtual {v2, v3}, Lsl;->b(Lmp;)Z

    :goto_1
    iget-object v2, v1, Lakh$a;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lkx;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, v0, Lkx;->g:Z

    if-nez v2, :cond_0

    iget v2, p0, Lakh;->i:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lakh;->j:Z

    if-nez v2, :cond_4

    :cond_0
    iget-object v0, v1, Lakh$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lakh;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_2
    iget-object v0, p0, Lakh;->mItemModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->getItemStyle()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2, v0}, Lakh;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakh$a;

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    iget-object v2, v1, Lakh$a;->b:Landroid/widget/ImageView;

    iget-object v3, v0, Lkx;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lakh$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lakh$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lakh$a;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lakh;->a(Lkx;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lakh$a;->g:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lakh;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lakh$a;->h:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lakh;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lakh$a;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lakh;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lakh;->a(Lkx;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_4
    iget v0, p0, Lakh;->d:I

    if-eq p1, v0, :cond_5

    iget-object v0, v1, Lakh$a;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lakh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, v1, Lakh$a;->e:Landroid/widget/ImageView;

    const v2, 0x7f0200a7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lakh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    iget-object v0, v1, Lakh$a;->g:Landroid/widget/LinearLayout;

    const v2, 0x7f08001c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b06d2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v1, Lakh$a;->h:Landroid/widget/LinearLayout;

    const v2, 0x7f08001c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b06d1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v1, Lakh$a;->i:Landroid/widget/LinearLayout;

    const v2, 0x7f08001c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b06d3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v1, Lakh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020129

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lakh$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020128

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lakh$a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lakh;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0671

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_1
    iget-object v2, p0, Lakh;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0670

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_2
    iget-object v2, p0, Lakh;->mContext:Landroid/content/Context;

    const v4, 0x7f0b06d3

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :pswitch_3
    iget-object v0, v1, Lakh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lakh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, v1, Lakh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lakh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, v1, Lakh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lakh$a;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lakh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, v1, Lakh$a;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lakh;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, v1, Lakh$a;->e:Landroid/widget/ImageView;

    const v2, 0x7f02034e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lakh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
