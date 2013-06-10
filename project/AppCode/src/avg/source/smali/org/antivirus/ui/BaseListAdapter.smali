.class public Lorg/antivirus/ui/BaseListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    invoke-static {v0}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->b(Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-long v0, p1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    invoke-static {v0}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->b(Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;-><init>(Lorg/antivirus/ui/BaseListAdapter;)V

    const v0, 0x7f08009a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f08000b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0800d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f08009b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    invoke-virtual {p0, p1, v0, v1}, Lorg/antivirus/ui/BaseListAdapter;->updateItemView(ILorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;Lorg/antivirus/ui/BaseListAdapter$ViewHolder;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/BaseListAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public updateItemView(ILorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;Lorg/antivirus/ui/BaseListAdapter$ViewHolder;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v0, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mImage:I

    if-ne v3, v0, :cond_1

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSpannable:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_1
    iget v0, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTextColor:I

    if-eq v0, v3, :cond_0

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget v1, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p2}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->a(Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mCheck:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-boolean v0, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mCheck:Z

    if-eqz v0, :cond_3

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget v1, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v1, p2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
