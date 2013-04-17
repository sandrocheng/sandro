.class public Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;
.super Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;


# instance fields
.field private mIsExpand:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->mIsExpand:Z

    return-void
.end method


# virtual methods
.method public createActionBody()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->mIsExpand:Z

    return v0
.end method

.method public setExpand(Z)V
    .locals 5

    const v4, 0x7f08021e

    const v3, 0x7f08021d

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->mIsExpand:Z

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->mIsExpand:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/preference/ExpandPreferenceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
