.class public Lcom/tencent/qqpimsecure/uilib/ui/adapter/SysSettingPreferenceAdapter;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;


# instance fields
.field private isHTC:Z

.field private isListGone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
            ">;",
            "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    iput-boolean p4, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/SysSettingPreferenceAdapter;->isListGone:Z

    iput-boolean p5, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/SysSettingPreferenceAdapter;->isHTC:Z

    return-void
.end method
