.class public Lcom/tencent/qqpimsecure/uilib/view/preference/RadioButtonPreferenceView;
.super Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;


# instance fields
.field mRadioButton:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createActionBody()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/RadioButtonPreferenceView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCheck()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/RadioButtonPreferenceView;->mRadioButton:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getRadioButton()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/RadioButtonPreferenceView;->mRadioButton:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->onBindView(Landroid/view/View;)V

    const v0, 0x7f08009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/RadioButtonPreferenceView;->mRadioButton:Landroid/widget/CheckBox;

    return-void
.end method

.method public setCheck(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/RadioButtonPreferenceView;->mRadioButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
