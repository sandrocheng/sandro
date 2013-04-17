.class public Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;
.super Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$OnCheckBoxClickListener;
    }
.end annotation


# instance fields
.field private checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private checkBoxRadio:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private checkBoxSleek:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private checkBoxTick:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private checkboxType:I

.field private isChecked:Z

.field private isOnCheckNoClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkboxType:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->initCheckBoxStation()V

    return-void
.end method

.method private initCheckBoxStation()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkboxType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxSleek:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxTick:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxRadio:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxSleek:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxSleek:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxTick:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxRadio:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickable(Z)V

    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkboxType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxTick:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxSleek:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxRadio:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxTick:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkboxType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxRadio:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxTick:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxSleek:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxRadio:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    goto :goto_0
.end method


# virtual methods
.method public clickCheckeBox()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public clickCheckeBox(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;)V
    .locals 0

    invoke-virtual {p1, p1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public createActionBody()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300af

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public doClickEvent()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->doClickEvent()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public doClickEvent(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isOnCheckNoClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->doClickEvent(II)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isChecked:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isChecked:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doClickEventNoAnimation(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isOnCheckNoClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->doClickEvent(II)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isChecked:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isChecked:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isChecked:Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckBox()Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isChecked:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->onBindView(Landroid/view/View;)V

    const v0, 0x7f08021a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxSleek:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v0, 0x7f08021b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxTick:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v0, 0x7f08021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBoxRadio:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    return-void
.end method

.method public setCheckBoxClickListener(Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$OnCheckBoxClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView$OnCheckBoxClickListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCheckBoxClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->checkBox:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickable(Z)V

    return-void
.end method

.method public setOnCheckedNoClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->isOnCheckNoClick:Z

    return-void
.end method
