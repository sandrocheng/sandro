.class public final Lacg;
.super Lpe;


# instance fields
.field private k:Lcom/tencent/tmsecure/module/update/UpdateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lpe;-><init>(Landroid/content/Context;ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lacg;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    iput-object v0, p0, Lacg;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    return-void
.end method

.method private static g()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lhq;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lhq;-><init>(I)V

    invoke-virtual {v0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    new-instance v3, LQQPIM/FBWBList;

    invoke-direct {v3}, LQQPIM/FBWBList;-><init>()V

    sget-object v4, LQQPIM/EListType;->ELT_Black:LQQPIM/EListType;

    invoke-virtual {v4}, LQQPIM/EListType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, LQQPIM/FBWBList;->setListtype(I)V

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v0}, LQQPIM/FBWBList;->setPhone(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lhq;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lhq;-><init>(I)V

    invoke-virtual {v0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    new-instance v3, LQQPIM/FBWBList;

    invoke-direct {v3}, LQQPIM/FBWBList;-><init>()V

    sget-object v4, LQQPIM/EListType;->ELT_White:LQQPIM/EListType;

    invoke-virtual {v4}, LQQPIM/EListType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, LQQPIM/FBWBList;->setListtype(I)V

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v0}, LQQPIM/FBWBList;->setPhone(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportWBList(Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v0}, La;->b(I)Lfc;

    move-result-object v0

    sget-object v1, Lfc;->a:Lfc;

    if-ne v0, v1, :cond_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6640

    invoke-virtual {v0, v1, p1}, Lnd;->a(II)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V
    .locals 4

    const v0, 0x7f0b02de

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v2, p1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0a25

    new-instance v1, Lej;

    invoke-direct {v1, v2, p3}, Lej;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0a29

    new-instance v1, Lek;

    invoke-direct {v1, v2, p3}, Lek;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lel;

    invoke-direct {v0, v2, p3}, Lel;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/tmsecure/module/update/CheckResult;I)V
    .locals 5

    if-nez p2, :cond_2

    invoke-static {}, Lf;->d()Lkm;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v4, "last_time_of_update"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, v0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ever_update"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lacg;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lzs;

    iget-object v1, p0, Lacg;->b:Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    new-instance v1, Lmk;

    invoke-direct {v1}, Lmk;-><init>()V

    new-instance v2, Lzv;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v1, v4}, Lzv;-><init>(Lzs;ZLmk;Ldv;)V

    invoke-virtual {v2}, Lzv;->start()V

    invoke-virtual {v0}, Lzs;->a()V

    :cond_0
    iget-object v0, p0, Lacg;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Laan;->b:Laan;

    if-nez v1, :cond_1

    new-instance v1, Laan;

    invoke-direct {v1, v0}, Laan;-><init>(Landroid/content/Context;)V

    sput-object v1, Laan;->b:Laan;

    :cond_1
    sget-object v0, Laan;->b:Laan;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Laap;

    invoke-direct {v2, v0}, Laap;-><init>(Laan;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method protected final a(Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    .locals 3

    iget-object v0, p0, Lacg;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "131072 UpdateInfoManager doUpdate mCheckResult.mUpdateInfoList.get(i).flag "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    iget v0, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    iget v0, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    const/high16 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-static {}, Lyf;->a()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lacg;->g()V

    return-void
.end method

.method protected final b(I)V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lacg;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    const v1, 0xe1eee

    iget-object v2, p0, Lacg;->i:Lcom/tencent/tmsecure/module/update/ICheckListener;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V

    return-void
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, Lacg;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg;->k:Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/update/UpdateManager;->cancel()V

    :cond_0
    return-void
.end method
