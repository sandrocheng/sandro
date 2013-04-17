.class public Lcom/tencent/qqpimsecure/uilib/view/preference/ButtonBasePreferenceView;
.super Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;


# instance fields
.field private mButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createActionBody()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ButtonBasePreferenceView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ad

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getButton()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ButtonBasePreferenceView;->mButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->onBindView(Landroid/view/View;)V

    const v0, 0x7f080219

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ButtonBasePreferenceView;->mButton:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-void
.end method
