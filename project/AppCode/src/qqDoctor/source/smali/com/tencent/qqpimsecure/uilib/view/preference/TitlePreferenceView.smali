.class public Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;
.super Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;


# instance fields
.field protected context:Landroid/content/Context;

.field private drawAble:Landroid/graphics/drawable/Drawable;

.field protected hasIcon:Z

.field protected imageView:Landroid/widget/ImageView;

.field protected mainLayout:Landroid/view/View;

.field private title:Ljava/lang/CharSequence;

.field protected titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->title:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->drawAble:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->hasIcon:Z

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected createMainView()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public doClickEvent(II)V
    .locals 0

    return-void
.end method

.method public doClickEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->drawAble:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitltView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initData(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->titleView:Landroid/widget/TextView;

    const v0, 0x7f08010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->drawAble:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->drawAble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->drawAble:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->drawAble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/TitlePreferenceView;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
