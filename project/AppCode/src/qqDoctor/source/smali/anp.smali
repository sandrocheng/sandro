.class public final Lanp;
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
.field private a:Lahz;

.field private b:I

.field private c:Lhh;

.field private d:Lho;

.field private e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lanp;->b:I

    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    iput-object v0, p0, Lanp;->c:Lhh;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lanp;->d:Lho;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v1, 0x7f0b0216

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEvent(II)V

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v1, 0x7f0b0217

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEvent(II)V

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v1, 0x7f0b0218

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEvent(II)V

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v0, 0x7f0b0219

    invoke-virtual {p2, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEvent(II)V

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lahz;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lanp;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lahz;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    iput-object v0, p0, Lanp;->a:Lahz;

    iget-object v0, p0, Lanp;->a:Lahz;

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_standard_mod"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setOnCheckedNoClick(Z)V

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setCheckBoxType(I)V

    iget-object v0, p0, Lanp;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_block_blacklist_only"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setOnCheckedNoClick(Z)V

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setCheckBoxType(I)V

    iget-object v0, p0, Lanp;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_accept_whitelist_only"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setOnCheckedNoClick(Z)V

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setCheckBoxType(I)V

    iget-object v0, p0, Lanp;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_custom_setting"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setOnCheckedNoClick(Z)V

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setCheckBoxType(I)V

    iget-object v0, p0, Lanp;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanp;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanp;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanp;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_current_custom_setting"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanp;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lanp;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setPadding(IIII)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v3, 0x1

    instance-of v0, p2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lanp;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_standard_mod"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lanp;->a(Ljava/lang/String;Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lanp;->b:I

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v0, 0x7f0b0216

    invoke-virtual {p2, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEvent(II)V

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lanp;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lanp;->c:Lhh;

    iget v1, p0, Lanp;->b:I

    invoke-virtual {v0, v1}, Lhh;->b(I)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnd;->a(I)V

    iget-object v0, p0, Lanp;->a:Lahz;

    invoke-virtual {v0}, Lahz;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    const-string v0, "key_block_blacklist_only"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lanp;->a(Ljava/lang/String;Landroid/view/View;)V

    iput v3, p0, Lanp;->b:I

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v0, 0x7f0b0217

    invoke-virtual {p2, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEvent(II)V

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const-string v0, "key_accept_whitelist_only"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lanp;->a(Ljava/lang/String;Landroid/view/View;)V

    const/4 v0, 0x2

    iput v0, p0, Lanp;->b:I

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v0, 0x7f0b0218

    invoke-virtual {p2, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEvent(II)V

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto :goto_1

    :cond_5
    const-string v0, "key_custom_setting"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lanp;->a(Ljava/lang/String;Landroid/view/View;)V

    const/4 v0, 0x3

    iput v0, p0, Lanp;->b:I

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const v0, 0x7f0b0219

    invoke-virtual {p2, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEvent(II)V

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanp;->d:Lho;

    invoke-virtual {v0}, Lho;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanp;->d:Lho;

    invoke-virtual {v0}, Lho;->e()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/FilterCustomizeSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "key_current_custom_setting"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/FilterCustomizeSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    return-void
.end method

.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lanp;->c:Lhh;

    invoke-virtual {v0}, Lhh;->d()I

    move-result v0

    iput v0, p0, Lanp;->b:I

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b027c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0216

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b027d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0217

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b027e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0218

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b027f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanp;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0280

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanp;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget v0, p0, Lanp;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lanp;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lanp;->a:Lahz;

    invoke-virtual {v0}, Lahz;->notifyDataSetChanged()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lanp;->e:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lanp;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lanp;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lanp;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0459

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
