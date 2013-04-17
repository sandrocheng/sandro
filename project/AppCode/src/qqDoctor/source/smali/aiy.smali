.class public final Laiy;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 8

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Laiy;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    if-ne v6, v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    if-ne v6, v3, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v3

    if-ne v3, v4, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v3

    if-ne v3, v2, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
