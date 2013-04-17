.class public final Lazu;
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


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private c:Lakb;

.field private d:Liu;

.field private e:Lcom/tencent/tmsecure/module/network/NetworkManager;

.field private f:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

.field private g:Lwr;

.field private h:Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

.field private i:J

.field private j:J

.field private k:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    iput-wide v0, p0, Lazu;->i:J

    iput-wide v0, p0, Lazu;->j:J

    new-instance v0, Lazv;

    invoke-direct {v0, p0}, Lazv;-><init>(Lazu;)V

    iput-object v0, p0, Lazu;->k:Ldv;

    new-instance v0, Lbaa;

    invoke-direct {v0, p0}, Lbaa;-><init>(Lazu;)V

    iput-object v0, p0, Lazu;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lazu;J)J
    .locals 0

    iput-wide p1, p0, Lazu;->i:J

    return-wide p1
.end method

.method static synthetic a(Lazu;)Lakb;
    .locals 1

    iget-object v0, p0, Lazu;->c:Lakb;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x2

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v6, p0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b04dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v4, ""

    const-string v5, ""

    invoke-static {p0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    invoke-virtual {v0}, Lwr;->h()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v4, v0, v1

    const/4 v1, 0x1

    aget-object v5, v0, v1

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0b0045

    new-instance v0, Lazy;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lazy;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v6, v7, v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lazz;

    invoke-direct {v1, v6}, Lazz;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v6, v0, v1, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic b(Lazu;J)J
    .locals 0

    iput-wide p1, p0, Lazu;->j:J

    return-wide p1
.end method

.method static synthetic b(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lazu;)Lwr;
    .locals 1

    iget-object v0, p0, Lazu;->g:Lwr;

    return-object v0
.end method

.method static synthetic d(Lazu;)J
    .locals 2

    iget-wide v0, p0, Lazu;->i:J

    return-wide v0
.end method

.method static synthetic e(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lazu;)Liu;
    .locals 1

    iget-object v0, p0, Lazu;->d:Liu;

    return-object v0
.end method

.method static synthetic h(Lazu;)Lcom/tencent/tmsecure/module/network/NetworkManager;
    .locals 1

    iget-object v0, p0, Lazu;->e:Lcom/tencent/tmsecure/module/network/NetworkManager;

    return-object v0
.end method

.method static synthetic i(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lazu;)J
    .locals 2

    iget-wide v0, p0, Lazu;->j:J

    return-wide v0
.end method

.method static synthetic t(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u(Lazu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic w(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic x(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic y(Lazu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lakb;

    iget-object v1, p0, Lazu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lakb;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    iput-object v0, p0, Lazu;->c:Lakb;

    iget-object v0, p0, Lazu;->c:Lakb;

    return-object v0
.end method

.method public final onBackClick()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManagerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_back_to_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-static {}, Lfs;->a()V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lazu;->d:Liu;

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    iput-object v0, p0, Lazu;->e:Lcom/tencent/tmsecure/module/network/NetworkManager;

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    iput-object v0, p0, Lazu;->g:Lwr;

    const-class v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    iput-object v0, p0, Lazu;->h:Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    iget-object v0, p0, Lazu;->f:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iput-object v0, p0, Lazu;->f:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    :cond_0
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Lakb;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "network_switch"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    :goto_1
    invoke-static {v0, v2}, Lxb;->a(ZZ)V

    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->f()V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0, v3}, Liu;->e(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lazu;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lazu;->d:Liu;

    invoke-virtual {v1, v2}, Liu;->f(Z)V

    const-string v1, "switch_suspession_window"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    :goto_2
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Lakb;->b()V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "gprs_total_for_month"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6670

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b03a7

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f08004a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v5, p0, Lazu;->mContext:Landroid/content/Context;

    const v6, 0x7f0b03b0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    new-instance v5, Lbad;

    invoke-direct {v5}, Lbad;-><init>()V

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f080049

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setInputType(I)V

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, v3, v3}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v2, p0, Lazu;->d:Liu;

    invoke-virtual {v2}, Liu;->getTotalForMonth()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    const v3, 0x7f0b0045

    new-instance v4, Lbae;

    invoke-direct {v4, p0, v0, v2, v1}, Lbae;-><init>(Lazu;Landroid/widget/EditText;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v3, v4, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v2, Lbaf;

    invoke-direct {v2, v1}, Lbaf;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v0, v2, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "gprs_closing_day"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6671

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->doClickEvent()V

    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->q()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "traffic_auto_adjust_config"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v2, 0x666b

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    invoke-virtual {p0}, Lazu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    sget v2, Lfs;->b:I

    invoke-static {v0, v2, v1}, Lfs;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "show_network_warrnig"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lazu;->d:Liu;

    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_3
    invoke-virtual {v1, v2}, Liu;->b(Z)V

    goto/16 :goto_2

    :cond_a
    move v2, v3

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "close_network_connection_when_runout"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lazu;->d:Liu;

    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_4
    invoke-virtual {v1, v2}, Liu;->g(Z)V

    goto/16 :goto_2

    :cond_c
    move v2, v3

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "gprs_used_for_month"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x666c

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b03ad

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03001b

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f08004a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v5, 0x7f080049

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setInputType(I)V

    const v5, 0x7f0200c0

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v5, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x4100

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    new-array v5, v2, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xc

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v5, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v5, v3, v2}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v2, Lbag;

    invoke-direct {v2, p0, v4}, Lbag;-><init>(Lazu;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0045

    new-instance v2, Lbah;

    invoke-direct {v2, p0, v1, p3, v4}, Lbah;-><init>(Lazu;Landroid/widget/EditText;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v4, v0, v2, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lazx;

    invoke-direct {v1, v4}, Lazx;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v4, v0, v1, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "show_networktraffic_window"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_5
    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0, v2}, Liu;->e(Z)V

    if-eqz v2, :cond_10

    iget-object v0, p0, Lazu;->e:Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    :goto_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lazu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "switch_suspession_window"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lazu;->e:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    goto/16 :goto_2

    :cond_f
    move v2, v3

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lazu;->e:Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "traffic_auto_adjust_schedule_flag"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v0

    iget-object v4, p0, Lazu;->d:Liu;

    invoke-virtual {v4}, Liu;->i()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v1, p0, Lazu;->d:Liu;

    if-nez v0, :cond_12

    :goto_7
    invoke-virtual {v1, v2}, Liu;->d(Z)V

    if-nez v0, :cond_13

    iget-object v0, p0, Lazu;->h:Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Lbab;

    invoke-direct {v1, p0}, Lbab;-><init>(Lazu;)V

    invoke-virtual {v0, v1, v5, v6}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_12
    move v2, v3

    goto :goto_7

    :cond_13
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->i()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->getTotalForMonth()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-gtz v0, :cond_15

    invoke-virtual {p0}, Lazu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    sget v2, Lfs;->a:I

    invoke-static {v0, v2, v1}, Lfs;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->g()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "guide_type"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_8
    invoke-virtual {p0}, Lazu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    sget v2, Lfs;->b:I

    invoke-static {v1, v2, v0}, Lfs;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "traffic_auto_adjust_flag"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->i()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lazu;->h:Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Lbac;

    invoke-direct {v1, p0}, Lbac;-><init>(Lazu;)V

    invoke-virtual {v0, v1, v5, v6}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_17
    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->i()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->getTotalForMonth()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-gtz v0, :cond_18

    invoke-virtual {p0}, Lazu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    sget v2, Lfs;->a:I

    invoke-static {v0, v2, v1}, Lfs;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_18
    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->g()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "guide_type"

    invoke-virtual {v1, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_19
    invoke-virtual {p0}, Lazu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    sget v2, Lfs;->b:I

    invoke-static {v0, v2, v1}, Lfs;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_1a
    move-object v0, v1

    goto :goto_8
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;->getKey()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lazu;->c:Lakb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "gprs_closing_day"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazu;->d:Liu;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Liu;->setClosingDayForMonth(I)V

    sput-boolean v3, Lazu;->a:Z

    sput-boolean v3, Lazu;->b:Z

    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSelectItemIndex(I)V

    iget-object v0, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-object v1, p0, Lazu;->mDataList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lazu;->d:Liu;

    invoke-virtual {v0}, Liu;->u()J

    move-result-wide v0

    iget-object v2, p0, Lazu;->d:Liu;

    invoke-virtual {v2, v0, v1}, Liu;->setUsedForMonth(J)V

    sput-boolean v4, Lwe;->a:Z

    iget-object v0, p0, Lazu;->e:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Lakb;->b()V

    :cond_0
    return v4
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lazu;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    iget-object v1, p0, Lazu;->k:Ldv;

    invoke-virtual {v0, v1}, Lwr;->b(Ldv;)V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lazu;->c:Lakb;

    invoke-virtual {v0}, Lakb;->b()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lazu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lazu;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lazu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    iget-object v1, p0, Lazu;->k:Ldv;

    invoke-virtual {v0, v1}, Lwr;->a(Ldv;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onStart()V

    const v0, 0x7f0b02a0

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0360

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
