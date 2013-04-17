.class public Lcom/tencent/qqpimsecure/uilib/view/preference/DialogPreferenceView;
.super Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createActionBody()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/preference/DialogPreferenceView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
