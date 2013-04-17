.class public final Lbgx;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
        ">;",
        "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private a:Lako;

.field private b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private g:Lho;

.field private h:Lhm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbgx;->g:Lho;

    new-instance v0, Lyj;

    invoke-direct {v0, p1}, Lyj;-><init>(Landroid/content/Context;)V

    new-instance v0, Lhm;

    invoke-direct {v0, p1}, Lhm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbgx;->h:Lhm;

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lbgx;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lbgx;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v4, p0, Lbgx;->mContext:Landroid/content/Context;

    const v5, 0x7f0b09cc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lbgx;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbgx;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lbgx;->g:Lho;

    invoke-virtual {v3}, Lho;->ci()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lbgx;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lbgx;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbgx;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_4

    move v3, v1

    :goto_1
    if-nez v3, :cond_0

    iget-object v3, p0, Lbgx;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbgx;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lbgx;->g:Lho;

    invoke-virtual {v3}, Lho;->cH()Z

    move-result v3

    iget-object v4, p0, Lbgx;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbgx;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbgx;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lbgx;->g:Lho;

    invoke-virtual {v3}, Lho;->w()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbgx;->mDataList:Ljava/util/List;

    iget-object v4, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    :cond_2
    :goto_2
    iget-object v3, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    if-nez v0, :cond_7

    :goto_3
    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lbgx;->a:Lako;

    invoke-virtual {v0}, Lako;->notifyDataSetChanged()V

    return-void

    :cond_3
    iget-object v3, p0, Lbgx;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v4, p0, Lbgx;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0ae6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/faceverify/util/Utils;->hasFrontCamera()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    invoke-static {}, La;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lbgx;->g:Lho;

    invoke-virtual {v0}, Lho;->cE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbgx;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/faceverify/FaceVerifyIntroduceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbgx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbgx;->mContext:Landroid/content/Context;

    invoke-static {v0}, La;->c(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lako;

    iget-object v1, p0, Lbgx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbgx;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lako;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    iput-object v0, p0, Lbgx;->a:Lako;

    iget-object v0, p0, Lbgx;->a:Lako;

    return-object v0
.end method

.method public final loadDataList()V
    .locals 0

    return-void
.end method

.method public final onCreate()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbgx;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbgx;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbgx;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "change_psw"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->b:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbgx;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbgx;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbgx;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "psw_protect"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbgx;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ae2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->c:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbgx;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbgx;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbgx;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "face_verify_switch"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbgx;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0a69

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->d:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbgx;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbgx;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbgx;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "face_verify_change"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbgx;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0b24

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "camera_box_switch"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbgx;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0a6a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lbgx;->h:Lhm;

    iget-object v1, v1, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v2, "need_show_box"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, -0x1

    instance-of v0, p2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbgx;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "change_psw"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbgx;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordSettingActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x3

    invoke-static {v1, v5, v2, v4}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "psw_protect"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbgx;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacySafeSettingActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v5, v5, v4}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "face_verify_switch"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cH()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbgx;->g:Lho;

    invoke-virtual {v0, v2}, Lho;->K(Z)V

    invoke-direct {p0}, Lbgx;->a()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lbgx;->b()V

    goto :goto_0

    :cond_5
    const-string v0, "face_verify_change"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lbgx;->b()V

    goto :goto_0

    :cond_6
    const-string v0, "camera_box_switch"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lbgx;->h:Lhm;

    iget-object v0, p0, Lbgx;->h:Lhm;

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v4, "need_show_box"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    iget-object v2, v3, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "need_show_box"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbgx;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v2, p0, Lbgx;->h:Lhm;

    iget-object v2, v2, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v3, "need_show_box"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v0, 0x7f0b0a6a

    invoke-virtual {p2, v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    invoke-virtual {p0}, Lbgx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    invoke-direct {p0}, Lbgx;->a()V

    return-void
.end method

.method public final refreshListData()V
    .locals 0

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    iget-object v0, p0, Lbgx;->mContext:Landroid/content/Context;

    const v1, 0x7f020102

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarBackground(Landroid/content/Context;I)V

    const v0, 0x7f0b0add

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
