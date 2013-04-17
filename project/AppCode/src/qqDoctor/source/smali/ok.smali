.class public final Lok;
.super Ljava/lang/Object;


# static fields
.field public static a:Lok;


# instance fields
.field public b:Landroid/content/Context;

.field final c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field public d:Lacj;

.field public e:Lacj$a;

.field public f:Lkf;

.field public g:Z

.field h:Landroid/os/Handler;

.field public i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation
.end field

.field public k:Labv$a;

.field private l:Lho;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lok;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v1, p0, Lok;->f:Lkf;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lok;->g:Z

    new-instance v0, Lom;

    invoke-direct {v0, p0}, Lom;-><init>(Lok;)V

    iput-object v0, p0, Lok;->h:Landroid/os/Handler;

    iput-object v1, p0, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iput-object v1, p0, Lok;->j:Ljava/util/List;

    new-instance v0, Labv$a;

    invoke-direct {v0, p0}, Labv$a;-><init>(Lok;)V

    iput-object v0, p0, Lok;->k:Labv$a;

    iput-object p1, p0, Lok;->b:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lok;->l:Lho;

    iget-object v0, p0, Lok;->l:Lho;

    invoke-virtual {v0}, Lho;->ds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lok;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lok;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lok;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lok;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lok;->d:Lacj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lok;->d:Lacj;

    invoke-virtual {v0}, Lacj;->a()V

    iput-object v6, p0, Lok;->d:Lacj;

    :cond_1
    iput-object v6, p0, Lok;->e:Lacj$a;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lok;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iput-object v0, p0, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v0, p0, Lok;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance v0, Lms;

    invoke-direct {v0}, Lms;-><init>()V

    iget-object v1, p0, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iput-object v1, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    const-string v1, "\"%s\""

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lok;->b:Landroid/content/Context;

    new-instance v2, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;-><init>(Lok;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;)V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    if-eq v1, v5, :cond_5

    iget-object v0, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    if-nez v0, :cond_2

    :cond_5
    iget-object v0, p0, Lok;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003a

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080090

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b02e6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/widget/Toast;

    iget-object v2, p0, Lok;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v1, p0, Lok;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4348

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v0, v5, v4, v1}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lok;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lok;->f:Lkf;

    if-nez v0, :cond_1

    new-instance v0, Lkf;

    invoke-direct {v0}, Lkf;-><init>()V

    iput-object v0, p0, Lok;->f:Lkf;

    :cond_1
    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    iget-object v1, p0, Lok;->k:Labv$a;

    invoke-virtual {v0, v1}, Labv;->a(Labv$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lok;->g:Z

    goto :goto_0
.end method
