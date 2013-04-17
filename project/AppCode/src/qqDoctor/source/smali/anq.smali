.class public final Lanq;
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

.field private b:Lho;

.field private c:I

.field private d:Lhh;

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private k:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private p:Z

.field private q:Z

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lanq;->c:I

    return-void
.end method

.method static synthetic a(Lanq;)Lho;
    .locals 1

    iget-object v0, p0, Lanq;->b:Lho;

    return-object v0
.end method

.method static synthetic b(Lanq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lanq;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lanq;)Lahz;
    .locals 1

    iget-object v0, p0, Lanq;->a:Lahz;

    return-object v0
.end method

.method static synthetic d(Lanq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lanq;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lanq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lanq;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lahz;

    iget-object v1, p0, Lanq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lahz;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    iput-object v0, p0, Lanq;->a:Lahz;

    iget-object v0, p0, Lanq;->a:Lahz;

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
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lanq;->b:Lho;

    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    iput-object v0, p0, Lanq;->d:Lhh;

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->h()I

    move-result v0

    sget v3, Lqx$a;->q:I

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lanq;->p:Z

    iget-object v0, p0, Lanq;->b:Lho;

    invoke-virtual {v0}, Lho;->ab()I

    move-result v0

    if-ne v0, v1, :cond_6

    iput-boolean v1, p0, Lanq;->q:Z

    :goto_1
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_setting_title"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const v1, 0x7f02030a

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitlBG_ID(I)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_filter_mode"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_setting_keyword"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "key_filter"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lft;->d()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "holdoff_mode_preference"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->k:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->k:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->k:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "show_block_icon"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->k:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "auto_reply_switch"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "reply_content_preference"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p0, Lanq;->q:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lanq;->p:Z

    if-nez v0, :cond_3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "one_ring_listener"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v0, p0, Lanq;->p:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    iput-object v0, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v0, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "double_call_listener"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lanq;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setPadding(IIII)V

    iget-object v0, p0, Lanq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lanq;->e:Landroid/view/LayoutInflater;

    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    iput-boolean v2, p0, Lanq;->q:Z

    goto/16 :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v5, 0x7f0b0019

    const v4, 0x7f0b0018

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

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

    const-string v0, "key_filter_mode"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanq;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/FilterSettingModeActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lanq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    iget-object v0, p0, Lanq;->a:Lahz;

    invoke-virtual {v0}, Lahz;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    const-string v0, "key_setting_keyword"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lanq;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/InterceptKeywordActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lanq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string v0, "show_block_icon"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lanq;->b:Lho;

    invoke-virtual {v1, v0}, Lho;->v(Z)V

    iget-object v1, p0, Lanq;->b:Lho;

    invoke-virtual {v1, v0}, Lho;->h(Z)V

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    if-eqz v0, :cond_6

    const v0, 0x7f0b002e

    :goto_3
    invoke-virtual {p2, v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3}, Lov;->a(ZZZ)V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    const v0, 0x7f0b002f

    goto :goto_3

    :cond_7
    const-string v0, "holdoff_mode_preference"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput p3, p0, Lanq;->r:I

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->doClickEvent()V

    goto/16 :goto_1

    :cond_8
    const-string v0, "auto_reply_switch"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    invoke-virtual {p2, v6, v4}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    :goto_5
    iget-object v1, p0, Lanq;->b:Lho;

    invoke-virtual {v1, v0}, Lho;->b(Z)V

    goto/16 :goto_1

    :cond_9
    move v1, v3

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    invoke-virtual {p2, v6, v5}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    goto :goto_5

    :cond_b
    const-string v0, "reply_content_preference"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lanq;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b021e

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lanq;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f030024

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080061

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v4, p0, Lanq;->b:Lho;

    invoke-virtual {v4}, Lho;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_c
    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    const v3, 0x7f0b0045

    new-instance v4, Lanr;

    invoke-direct {v4, p0, v0, p2, v1}, Lanr;-><init>(Lanq;Landroid/widget/EditText;Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v3, v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v3, Lans;

    invoke-direct {v3, v1}, Lans;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_1

    :cond_d
    const-string v0, "one_ring_listener"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v1

    if-nez v1, :cond_e

    move v3, v2

    :cond_e
    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lanq;->b:Lho;

    invoke-virtual {v1, v0}, Lho;->f(Z)V

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    if-eqz v0, :cond_f

    move v0, v4

    :goto_6
    invoke-virtual {p2, v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    goto/16 :goto_1

    :cond_f
    move v0, v5

    goto :goto_6

    :cond_10
    const-string v0, "double_call_listener"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v1

    if-nez v1, :cond_11

    move v3, v2

    :cond_11
    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lanq;->b:Lho;

    invoke-virtual {v1, v0}, Lho;->e(Z)V

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    if-eqz v0, :cond_12

    :goto_7
    invoke-virtual {p2, v6, v4}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    goto/16 :goto_1

    :cond_12
    move v4, v5

    goto :goto_7
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lanq;->mDataList:Ljava/util/List;

    iget v4, p0, Lanq;->r:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    iget-object v0, p0, Lanq;->d:Lhh;

    invoke-virtual {v0}, Lhh;->e()I

    move-result v4

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lanq;->d:Lhh;

    invoke-virtual {v4, v2}, Lhh;->c(I)V

    iget-object v4, p0, Lanq;->d:Lhh;

    invoke-virtual {v4}, Lhh;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setHoldoffMode(I)V

    move v0, v1

    :goto_1
    if-nez v3, :cond_5

    iget-object v3, p0, Lanq;->d:Lhh;

    invoke-virtual {v3, v2}, Lhh;->c(I)V

    :cond_1
    :goto_2
    iget-object v3, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v3, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lanq;->d:Lhh;

    invoke-virtual {v4, v5}, Lhh;->c(I)V

    iget-object v4, p0, Lanq;->d:Lhh;

    invoke-virtual {v4}, Lhh;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setHoldoffMode(I)V

    move v0, v2

    goto :goto_1

    :cond_3
    if-ne v3, v5, :cond_4

    if-eq v4, v1, :cond_4

    iget-object v4, p0, Lanq;->d:Lhh;

    invoke-virtual {v4, v1}, Lhh;->c(I)V

    iget-object v4, p0, Lanq;->d:Lhh;

    invoke-virtual {v4}, Lhh;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setHoldoffMode(I)V

    move v0, v2

    goto :goto_1

    :cond_4
    if-ne v3, v6, :cond_9

    if-eq v4, v6, :cond_9

    iget-object v4, p0, Lanq;->d:Lhh;

    invoke-virtual {v4, v6}, Lhh;->c(I)V

    iget-object v4, p0, Lanq;->d:Lhh;

    invoke-virtual {v4}, Lhh;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setHoldoffMode(I)V

    move v0, v2

    goto :goto_1

    :cond_5
    if-ne v3, v1, :cond_6

    iget-object v3, p0, Lanq;->d:Lhh;

    invoke-virtual {v3, v5}, Lhh;->c(I)V

    goto :goto_2

    :cond_6
    if-ne v3, v5, :cond_7

    iget-object v3, p0, Lanq;->d:Lhh;

    invoke-virtual {v3, v1}, Lhh;->c(I)V

    goto :goto_2

    :cond_7
    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lanq;->d:Lhh;

    invoke-virtual {v3, v6}, Lhh;->c(I)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    invoke-virtual {v0}, Lop;->d()V

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
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lanq;->d:Lhh;

    invoke-virtual {v0}, Lhh;->d()I

    move-result v0

    iput v0, p0, Lanq;->c:I

    iget-object v0, p0, Lanq;->f:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b045a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0459

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b045b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->h:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b045c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->i:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b016b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->d:Lhh;

    invoke-virtual {v0}, Lhh;->e()I

    move-result v0

    iget-object v3, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    if-eqz v3, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0165

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEntries([Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEntryValues([Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getEntry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    invoke-static {}, Lft;->d()I

    move-result v0

    iget-object v3, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/4 v4, -0x2

    if-eq v0, v4, :cond_3

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lanq;->b:Lho;

    invoke-virtual {v0}, Lho;->ae()Z

    move-result v0

    iget-object v3, p0, Lanq;->k:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v4, p0, Lanq;->mContext:Landroid/content/Context;

    const v5, 0x7f0b027b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lanq;->k:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0215

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->b:Lho;

    invoke-virtual {v0}, Lho;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    :goto_2
    iget-object v3, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->d:Lhh;

    invoke-virtual {v0}, Lhh;->e()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v3, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0214

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget v0, p0, Lanq;->c:I

    packed-switch v0, :pswitch_data_1

    :goto_5
    iget-boolean v0, p0, Lanq;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lanq;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lanq;->n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lanq;->n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b01d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lanq;->n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v0, p0, Lanq;->b:Lho;

    invoke-virtual {v0}, Lho;->ab()I

    move-result v0

    if-eq v0, v1, :cond_7

    iget v0, p0, Lanq;->c:I

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lanq;->n:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->b:Lho;

    invoke-virtual {v3}, Lho;->r()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    :cond_1
    iget-boolean v0, p0, Lanq;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    iget-object v0, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b03e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b03e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->b:Lho;

    invoke-virtual {v3}, Lho;->z()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanq;->o:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->b:Lho;

    invoke-virtual {v3}, Lho;->ab()I

    move-result v3

    if-eq v3, v1, :cond_8

    iget v3, p0, Lanq;->c:I

    if-nez v3, :cond_8

    :goto_7
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lanq;->a:Lahz;

    invoke-virtual {v0}, Lahz;->notifyDataSetChanged()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lanq;->j:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lanq;->l:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lanq;->m:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto/16 :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b027c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    iget-object v0, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b027d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b027e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p0, Lanq;->g:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v3, p0, Lanq;->mContext:Landroid/content/Context;

    const v4, 0x7f0b027f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_6

    :cond_8
    move v1, v2

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0071

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
