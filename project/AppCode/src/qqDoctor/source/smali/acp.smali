.class public final Lacp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lho;

.field private c:Lkl;

.field private final d:Lov;

.field private final e:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lacp;->b:Lho;

    new-instance v0, Lkl;

    invoke-direct {v0}, Lkl;-><init>()V

    iput-object v0, p0, Lacp;->c:Lkl;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iput-object v0, p0, Lacp;->d:Lov;

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lacp;->e:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    return-void
.end method

.method static synthetic a(Lacp;Ljava/lang/String;)V
    .locals 14

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0, p1, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v10, v0

    :goto_0
    iget-object v0, p0, Lacp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lacp;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lms;

    invoke-direct {v11}, Lms;-><init>()V

    iput-object v0, v11, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lmu;

    const-wide/16 v1, 0x0

    const-string v4, ""

    move v5, v3

    move v7, v3

    move v8, v6

    invoke-direct/range {v0 .. v9}, Lmu;-><init>(JILjava/lang/String;IIIILjava/util/List;)V

    move-object v1, v11

    move-object v2, v0

    :goto_1
    if-eqz v1, :cond_5

    iget-object v0, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-object v0, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    if-ne v0, v13, :cond_5

    :cond_0
    iget-object v0, p0, Lacp;->c:Lkl;

    iget-object v3, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lkl;->a:Lhs;

    const-string v5, "virus_notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lmt;->i:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v12}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, v0, Lkl;->a:Lhs;

    invoke-virtual {v3}, Lhs;->b()V

    iget-object v0, v0, Lkl;->a:Lhs;

    const-string v3, "virus_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget v7, Lmt;->a:I

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    sget-object v9, Lmt;->h:Ljava/lang/String;

    iget-object v11, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v11, v11, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lmt;->e:Ljava/lang/String;

    iget-object v11, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v11, v11, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v9, Lmt;->g:Ljava/lang/String;

    iget-object v11, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v11, v11, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lmt;->i:Ljava/lang/String;

    iget-object v11, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v11, v11, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lmt;->j:Ljava/lang/String;

    iget-object v11, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v11, v11, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lmt;->k:Ljava/lang/String;

    iget-object v11, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v11, v11, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lmt;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lmt;->f:Ljava/lang/String;

    iget-object v5, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v5, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lmt;->l:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lmt;->m:Ljava/lang/String;

    iget-object v5, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v5, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3, v12, v8}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lacp;->c:Lkl;

    sget v3, Lmt;->a:I

    invoke-virtual {v0, v3}, Lkl;->a(I)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lacp;->c:Lkl;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lkl;->a(Landroid/content/Context;Ljava/util/List;)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lacp;->c:Lkl;

    invoke-static {v0}, Lkl;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    iput v6, v2, Lmu;->d:I

    iput v6, v2, Lmu;->g:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    iget-object v0, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget v0, v2, Lmu;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lmu;->g:I

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    :sswitch_1
    iget v0, v2, Lmu;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lmu;->d:I

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v2, Lmu;->f:I

    iput-object v3, v2, Lmu;->i:Ljava/util/List;

    :cond_3
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v1, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    if-ne v1, v13, :cond_4

    invoke-virtual {v0, v10, v2}, Lov;->b(Ljava/lang/String;Lmu;)V

    :goto_3
    invoke-virtual {v0}, Lov;->i()V

    :goto_4
    iget-object v0, p0, Lacp;->e:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V

    return-void

    :cond_4
    invoke-virtual {v0, v10, v2}, Lov;->a(Ljava/lang/String;Lmu;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lacp;->d:Lov;

    invoke-virtual {v0, v10}, Lov;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v1, v12

    move-object v2, v12

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lacp;->b:Lho;

    invoke-virtual {v0}, Lho;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lacp;->b:Lho;

    invoke-virtual {v1}, Lho;->aC()Z

    move-result v1

    iget-object v2, p0, Lacp;->e:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    new-instance v3, Lacq;

    invoke-direct {v3, p0, p1}, Lacq;-><init>(Lacp;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lacp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lacp;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
