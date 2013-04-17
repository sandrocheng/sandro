.class public Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;
.super Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;


# instance fields
.field mButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/BasePreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected createMainView()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080155

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;->mButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;->mButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public doClickEvent(II)V
    .locals 0

    return-void
.end method

.method public doClickEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getButton()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/SimpleButtonPreferenceView;->mButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    return-void
.end method
