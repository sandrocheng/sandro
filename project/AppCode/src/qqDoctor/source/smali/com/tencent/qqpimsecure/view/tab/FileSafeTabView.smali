.class public Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TabHost$OnTabChangeListener;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v3, 0x7f0802d3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->l:I

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0802d6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0802d9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0802d4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->e:Landroid/widget/ImageView;

    const v1, 0x7f0802d7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->f:Landroid/widget/ImageView;

    const v1, 0x7f0802db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->g:Landroid/widget/ImageView;

    const v1, 0x7f0802d5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->h:Landroid/widget/TextView;

    const v1, 0x7f0802d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->i:Landroid/widget/TextView;

    const v1, 0x7f0802da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->l:I

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a(I)V

    return-void
.end method

.method private a()V
    .locals 3

    const v2, 0x7f090011

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0202bc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0202bd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0202be

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->e:Landroid/widget/ImageView;

    const v1, 0x7f0202c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->g:Landroid/widget/ImageView;

    const v1, 0x7f0202c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private a(I)V
    .locals 3

    const v2, 0x7f090013

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a()V

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->k:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->k:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->e:Landroid/widget/ImageView;

    const v1, 0x7f0202c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0202c6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0202c7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->g:Landroid/widget/ImageView;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0802d3 -> :sswitch_0
        0x7f0802d6 -> :sswitch_1
        0x7f0802d9 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a(I)V

    return-void
.end method

.method public setOnTabChangeListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->k:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setTabBackground(I)V
    .locals 3

    const v2, 0x7f090013

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->e:Landroid/widget/ImageView;

    const v1, 0x7f0202c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0202c6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f0202c7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->g:Landroid/widget/ImageView;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
