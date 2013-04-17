.class public final Lss;
.super Lpe;


# instance fields
.field private k:Lho;

.field private l:Z

.field private m:Laaq;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lpe;->a:I

    invoke-direct {p0, p1, p2, v0}, Lpe;-><init>(Landroid/content/Context;ZZ)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lss;->k:Lho;

    iget-object v0, p0, Lss;->k:Lho;

    invoke-virtual {v0}, Lho;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lss;->g()V

    :cond_0
    new-instance v0, Laaq;

    iget-object v1, p0, Lss;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Laaq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lss;->m:Laaq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    sget v0, Lpe;->a:I

    invoke-direct {p0, p1, p2, p3}, Lpe;-><init>(Landroid/content/Context;ZZ)V

    new-instance v0, Laaq;

    iget-object v1, p0, Lss;->b:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Laaq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lss;->m:Laaq;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lss;->k:Lho;

    iget-object v0, p0, Lss;->k:Lho;

    invoke-virtual {v0}, Lho;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lss;->g()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/tmsecure/module/update/CheckResult;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;LQQPIM/CloudInfo;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    iget v0, v0, LQQPIM/CloudCmd;->cmdid:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    invoke-static {p0, p1}, Laaq;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v0

    invoke-static {v0}, Lss;->a(Lcom/tencent/tmsecure/module/update/CheckResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v2

    invoke-virtual {v2}, Lqx;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->cD()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;LQQPIM/CloudInfo;)V
    .locals 3

    invoke-static {p0, p1}, Laaq;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v0

    invoke-static {v0}, Lss;->a(Lcom/tencent/tmsecure/module/update/CheckResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aR()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Lho;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lho;->t(Z)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lss;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b016c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0045

    new-instance v2, Lsu;

    invoke-direct {v2, p0}, Lsu;-><init>(Lss;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0033

    new-instance v2, Lst;

    invoke-direct {v2, p0}, Lst;-><init>(Lss;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6641

    invoke-virtual {v0, v1, p1}, Lnd;->a(II)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V
    .locals 1

    iget-boolean v0, p0, Lss;->l:Z

    invoke-static {p1, p2, v0, p3}, La;->a(Landroid/content/Context;Lcom/tencent/tmsecure/module/update/CheckResult;ZLcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    return-void
.end method

.method protected final a(Lcom/tencent/tmsecure/module/update/CheckResult;I)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lss;->d:Lcom/tencent/tmsecure/module/update/CheckResult;

    invoke-static {v0}, Lss;->a(Lcom/tencent/tmsecure/module/update/CheckResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aR()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Lho;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lho;->t(Z)V

    :cond_1
    if-nez p2, :cond_2

    :try_start_0
    new-instance v0, Lzs;

    iget-object v1, p0, Lss;->b:Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    new-instance v1, Lmk;

    invoke-direct {v1}, Lmk;-><init>()V

    new-instance v2, Lzv;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v1, v4}, Lzv;-><init>(Lzs;ZLmk;Ldv;)V

    invoke-virtual {v2}, Lzv;->start()V

    invoke-virtual {v0}, Lzs;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    .locals 2

    iget-object v0, p0, Lss;->m:Laaq;

    invoke-virtual {v0, p1}, Laaq;->a(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    iget-object v0, p0, Lpe;->e:Lpe$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpe;->e:Lpe$a;

    iget v1, p0, Lpe;->g:I

    invoke-interface {v0, v1}, Lpe$a;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lss;->l:Z

    return-void
.end method

.method protected final b(I)V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lss;->m:Laaq;

    iget-object v1, p0, Lss;->i:Lcom/tencent/tmsecure/module/update/ICheckListener;

    invoke-virtual {v0, v1}, Laaq;->a(Lcom/tencent/tmsecure/module/update/ICheckListener;)Lcom/tencent/tmsecure/module/update/CheckResult;

    return-void
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, Lss;->m:Laaq;

    invoke-virtual {v0}, Laaq;->a()V

    return-void
.end method
