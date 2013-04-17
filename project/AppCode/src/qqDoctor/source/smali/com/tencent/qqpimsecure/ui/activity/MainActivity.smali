.class public Lcom/tencent/qqpimsecure/ui/activity/MainActivity;
.super Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;


# static fields
.field private static d:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;


# instance fields
.field private a:Lho;

.field private b:Lcom/tencent/qqpimsecure/view/MainPageView;

.field private c:Z

.field private e:J

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->d:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->c:Z

    new-instance v0, Ladq;

    invoke-direct {v0, p0}, Ladq;-><init>(Lcom/tencent/qqpimsecure/ui/activity/MainActivity;)V

    return-void
.end method

.method public static a()Lcom/tencent/qqpimsecure/ui/activity/MainActivity;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->d:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    return-object v0
.end method


# virtual methods
.method public getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;
    .locals 3

    sget-object v0, Laci;->b:Laci;

    if-nez v0, :cond_0

    new-instance v0, Laci;

    invoke-direct {v0}, Laci;-><init>()V

    sput-object v0, Laci;->b:Laci;

    :cond_0
    sget-object v0, Laci;->b:Laci;

    iget-object v0, v0, Laci;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    if-nez v0, :cond_3

    sget-object v0, Laci;->b:Laci;

    if-nez v0, :cond_1

    new-instance v0, Laci;

    invoke-direct {v0}, Laci;-><init>()V

    sput-object v0, Laci;->b:Laci;

    :cond_1
    sget-object v0, Laci;->b:Laci;

    new-instance v1, Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/view/MainPageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Laci;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    sget-object v0, Laci;->b:Laci;

    if-nez v0, :cond_2

    new-instance v0, Laci;

    invoke-direct {v0}, Laci;-><init>()V

    sput-object v0, Laci;->b:Laci;

    :cond_2
    sget-object v0, Laci;->b:Laci;

    iget-object v0, v0, Laci;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->resetContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->f:Z

    sput-object p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->d:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    new-instance v0, Lmx;

    invoke-direct {v0, p0}, Lmx;-><init>(Landroid/content/Context;)V

    const-string v1, "action_check_launch_first"

    invoke-static {v1}, Lmx;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lmz;

    invoke-direct {v1, v0}, Lmz;-><init>(Lmx;)V

    new-instance v2, Lna;

    invoke-direct {v2, v0}, Lna;-><init>(Lmx;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "action_check_launch_first"

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    const-string v4, "SettingInfo"

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "action_check_launch_first"

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "SettingInfo"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0, v3}, Lmx;->a(Ljava/util/List;)V

    :cond_0
    :goto_0
    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnp;->b(Landroid/app/Activity;)V

    invoke-static {}, Lf;->d()Lkm;

    move-result-object v0

    iget-object v1, v0, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v2, "last_time_of_whole_scan"

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v4, "last_time_of_whole_scan"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v1, v0, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v2, "last_time_of_update"

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v3, "last_time_of_update"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->aV()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    invoke-virtual {v0}, Lho;->m()V

    invoke-virtual {v0}, Lho;->aU()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->a()V

    :cond_4
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->a:Lho;

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0b0a9f

    invoke-static {p0, v0}, Lha;->b(Landroid/content/Context;I)V

    :cond_5
    new-instance v0, Lfv;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lfv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfv;->a()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labk;->a(Landroid/content/Context;)Labk;

    move-result-object v0

    invoke-virtual {v0}, Labk;->b()V

    return-void

    :cond_6
    const-string v1, "action_check_second"

    invoke-static {v1}, Lmx;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnb;

    invoke-direct {v1, v0}, Lnb;-><init>(Lmx;)V

    new-instance v2, Lnc;

    invoke-direct {v2, v0}, Lnc;-><init>(Lmx;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "action_check_second"

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    const-string v4, "SettingInfo"

    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "action_check_second"

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "SettingInfo"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0, v3}, Lmx;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->d:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    if-ne v0, p0, :cond_0

    sput-object v1, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->d:Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    :cond_0
    const-class v0, Laau;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    invoke-static {}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->freeInstance()V

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->b:Lcom/tencent/qqpimsecure/view/MainPageView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->a:Lho;

    sget-object v0, Laci;->b:Laci;

    if-nez v0, :cond_1

    new-instance v0, Laci;

    invoke-direct {v0}, Laci;-><init>()V

    sput-object v0, Laci;->b:Laci;

    :cond_1
    sget-object v0, Laci;->b:Laci;

    iput-object v1, v0, Laci;->a:Lcom/tencent/qqpimsecure/view/MainPageView;

    sput-object v1, Laci;->b:Laci;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->a:Landroid/content/SharedPreferences;

    const-string v1, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v2

    invoke-virtual {v2}, Lnp;->f()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onResume()V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->c:Z

    if-eqz v0, :cond_7

    new-instance v0, Lrx;

    invoke-direct {v0, p0}, Lrx;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->a:Lho;

    invoke-virtual {v1}, Lho;->f()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, v0, Lrx;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b016c

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v2, 0x7f0b01d3

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v2, 0x7f0b0045

    new-instance v3, Lsb;

    invoke-direct {v3, v0, v1}, Lsb;-><init>(Lrx;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v2, v3, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v2, 0x7f0b0033

    new-instance v3, Lsc;

    invoke-direct {v3, v1}, Lsc;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_1
    iget-object v1, v0, Lrx;->c:Lso;

    iget-object v2, v0, Lrx;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lso;->b()V

    iget-object v1, v0, Lrx;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v1

    invoke-virtual {v1}, Lqr;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lry;

    invoke-direct {v3, v1}, Lry;-><init>(Lqr;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lrx;->b:Lho;

    invoke-virtual {v3}, Lho;->aN()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lrx;->b:Lho;

    invoke-virtual {v3}, Lho;->aO()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lrx;->b:Lho;

    invoke-virtual {v3}, Lho;->aL()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    :cond_3
    iget-object v1, v0, Lrx;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.tencent.action.cloud_service"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    iget-object v1, v0, Lrx;->b:Lho;

    invoke-virtual {v1}, Lho;->aS()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v2

    invoke-virtual {v2}, Lqx;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "^^ \tString myVersion = ConfigManager.getConfigManager().getSoftVersion(); "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_5
    :goto_0
    iget-object v1, v0, Lrx;->b:Lho;

    invoke-virtual {v1}, Lho;->bj()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_a

    iget-object v0, v0, Lrx;->b:Lho;

    invoke-virtual {v0, v3, v4}, Lho;->k(J)V

    :cond_6
    :goto_1
    iput-boolean v7, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->c:Z

    :cond_7
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->f:Z

    if-eqz v0, :cond_8

    iput-boolean v7, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->f:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->e:J

    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    :cond_8
    return-void

    :cond_9
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, v0, Lrx;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    iget-object v2, v0, Lrx;->a:Landroid/content/Context;

    const v3, 0x7f0b04d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lrx;->b:Lho;

    invoke-virtual {v2}, Lho;->aT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b03fb

    new-instance v3, Lrz;

    invoke-direct {v3, v0, v1}, Lrz;-><init>(Lrx;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v2, v3, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v2, Lsa;

    invoke-direct {v2, v0, v1}, Lsa;-><init>(Lrx;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :cond_a
    sub-long v1, v3, v1

    const-wide/32 v5, 0x4d3f6400

    cmp-long v1, v1, v5

    if-lez v1, :cond_6

    iget-object v1, v0, Lrx;->b:Lho;

    invoke-virtual {v1, v3, v4}, Lho;->k(J)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lsd;

    invoke-direct {v2, v0}, Lsd;-><init>(Lrx;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mActivityTitleStack:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->onStart()V

    return-void
.end method
