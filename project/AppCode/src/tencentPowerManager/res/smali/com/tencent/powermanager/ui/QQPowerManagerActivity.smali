.class public Lcom/tencent/powermanager/ui/QQPowerManagerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/powermanager/uilib/view/BaseTabView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/powermanager/uilib/TabButtonView;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/ImageView;

.field private g:Z

.field private h:Lcom/tencent/powermanager/view/PowerManagerView;

.field private i:Lcom/tencent/powermanager/view/DeepSaveView;

.field private j:Lcom/tencent/powermanager/view/PowerMaintainView;

.field private k:Landroid/os/Handler;

.field private l:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    iput-object v1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b:Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->c:Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->f:Landroid/widget/ImageView;

    new-instance v0, Lcr;

    invoke-direct {v0, p0}, Lcr;-><init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->k:Landroid/os/Handler;

    new-instance v0, Lcs;

    invoke-direct {v0, p0}, Lcs;-><init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->l:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    return p1
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/TabButtonView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/TabButtonView;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/TabButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/TabButtonView;->setChecked(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->g:Z

    return v0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a(I)V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a(I)V

    return-void
.end method

.method public declared-synchronized onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->setContentView(I)V

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->f:Landroid/widget/ImageView;

    new-instance v3, Lct;

    invoke-direct {v3, p0}, Lct;-><init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;-><init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;B)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->c:Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;

    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->c:Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->l:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    new-instance v0, Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/view/PowerManagerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->h:Lcom/tencent/powermanager/view/PowerManagerView;

    new-instance v0, Lcom/tencent/powermanager/view/DeepSaveView;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/view/DeepSaveView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->i:Lcom/tencent/powermanager/view/DeepSaveView;

    new-instance v0, Lcom/tencent/powermanager/view/PowerMaintainView;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/view/PowerMaintainView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->j:Lcom/tencent/powermanager/view/PowerMaintainView;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->h:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->i:Lcom/tencent/powermanager/view/DeepSaveView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->j:Lcom/tencent/powermanager/view/PowerMaintainView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/TabButtonView;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/TabButtonView;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/TabButtonView;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/TabButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/powermanager/uilib/TabButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v0

    invoke-virtual {v0}, Lz;->h()Z

    move-result v3

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v3, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->j:Lcom/tencent/powermanager/view/PowerMaintainView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->j:Lcom/tencent/powermanager/view/PowerMaintainView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->d()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    invoke-direct {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->g:Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->k:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v3, Lbu;

    invoke-direct {v3, p0}, Lbu;-><init>(Landroid/content/Context;)V

    iget-object v0, v3, Lbu;->b:Lz;

    invoke-virtual {v0}, Lz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbt;->a()Lbt;

    move-result-object v4

    invoke-virtual {v4}, Lbt;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "^^ \tString myVersion = ConfigManager.getConfigManager().getSoftVersion(); "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgk;->b(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, v3, Lbu;->b:Lz;

    invoke-virtual {v0}, Lz;->d()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0xf731400

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    move v0, v1

    :goto_3
    if-eqz v0, :cond_3

    new-instance v0, Lax;

    iget-object v1, v3, Lbu;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lax;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lax;->c()V

    :cond_3
    invoke-static {}, Lbt;->a()Lbt;

    move-result-object v0

    invoke-virtual {v0}, Lbt;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f060002

    invoke-static {p0, v0}, Lp;->b(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    invoke-virtual {v0}, Lz;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lz;->i()V

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->h:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->h:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->d()V

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lde;

    iget-object v4, v3, Lbu;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lde;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Lbu;->a:Landroid/content/Context;

    const v5, 0x7f06007c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lbu;->b:Lz;

    invoke-virtual {v4}, Lz;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde;->a(Ljava/lang/CharSequence;)V

    const v4, 0x7f06007d

    new-instance v5, Lbv;

    invoke-direct {v5, v3, v0}, Lbv;-><init>(Lbu;Lde;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lde;->a(ILandroid/view/View$OnClickListener;I)V

    new-instance v4, Lbw;

    invoke-direct {v4, v0}, Lbw;-><init>(Lde;)V

    invoke-virtual {v0, v4}, Lde;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lde;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method protected declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->g:Z

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BaseTabView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcc;

    invoke-direct {v0}, Lcc;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "powermanager_action_report"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BaseTabView;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onPause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    iget v1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BaseTabView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onResume()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->d:Ljava/util/List;

    iget v1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/view/BaseTabView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->e()V

    const/4 v0, 0x0

    sput-boolean v0, Le;->a:Z

    const v0, 0xc368

    invoke-static {v0}, Lab;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
