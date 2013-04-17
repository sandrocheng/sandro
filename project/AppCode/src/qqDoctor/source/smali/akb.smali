.class public final Lakb;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lit;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
            ">;",
            "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    iput-object p2, p0, Lakb;->c:Ljava/util/List;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lakb;->d:Lit;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    iget-object v0, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "monitor_setting"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b030b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "network_switch"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b035f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "show_network_warrnig"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "show_networktraffic_window"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "close_network_connection_when_runout"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "traffic_adjust_setting"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b030c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "traffic_auto_adjust_flag"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "gprs_used_for_month"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "traffic_auto_adjust_schedule_flag"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "flow_package_setting"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b030d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "traffic_auto_adjust_config"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b071f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "gprs_total_for_month"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const-string v1, "gprs_closing_day"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 13

    const/4 v2, 0x1

    const-wide/16 v11, 0x0

    const/16 v10, 0x1f

    const/4 v3, 0x0

    iget-object v0, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    const-string v1, "network_switch"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Liy;->a:Landroid/content/SharedPreferences;

    const-string v5, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v6

    invoke-virtual {v6}, Lnp;->f()Z

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lakb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "network_switch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    const-string v1, "show_network_warrnig"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->getTotalForMonth()J

    move-result-wide v5

    cmp-long v1, v5, v11

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "show_networktraffic_window"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "close_network_connection_when_runout"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->getTotalForMonth()J

    move-result-wide v5

    cmp-long v1, v5, v11

    if-lez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    const-string v1, "traffic_auto_adjust_schedule_flag"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "traffic_auto_adjust_config"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Liy;->a:Landroid/content/SharedPreferences;

    const-string v5, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v6

    invoke-virtual {v6}, Lnp;->f()Z

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "gprs_used_for_month"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->getUsedForMonth()J

    move-result-wide v5

    invoke-static {v5, v6}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "gprs_total_for_month"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->getTotalForMonth()J

    move-result-wide v5

    cmp-long v1, v5, v11

    if-nez v1, :cond_b

    iget-object v1, p0, Lakb;->mContext:Landroid/content/Context;

    const v5, 0x7f0b06d7

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v5, v6}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_c
    const-string v1, "gprs_closing_day"

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->getClosingDayForMonth()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    iget-object v1, p0, Lakb;->a:[Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lakb;->b:[Ljava/lang/String;

    if-nez v1, :cond_e

    :cond_d
    new-array v1, v10, [Ljava/lang/String;

    iput-object v1, p0, Lakb;->a:[Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/String;

    iput-object v1, p0, Lakb;->b:[Ljava/lang/String;

    move v1, v3

    :goto_4
    if-ge v1, v10, :cond_e

    iget-object v6, p0, Lakb;->b:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v6, p0, Lakb;->a:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lakb;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lakb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b042b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lakb;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEntries([Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEntryValues([Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->a:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lakb;->d:Lit;

    invoke-virtual {v1}, Lit;->getClosingDayForMonth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lakb;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemViewType(I)I
    .locals 7

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lakb;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    if-ne v6, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    if-ne v6, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v6

    if-ne v6, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v2

    if-ne v2, v5, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v2

    if-ne v2, v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getPreferenceViewType()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
