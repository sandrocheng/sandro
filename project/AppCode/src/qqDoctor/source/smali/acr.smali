.class public final Lacr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacr$d;,
        Lacr$b;,
        Lacr$a;,
        Lacr$c;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Lacr$c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/Timer;

.field private k:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field private l:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

.field private m:Lacr$d;

.field private n:Lho;

.field private o:Lmu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lacr;->a:I

    const/4 v0, 0x2

    sput v0, Lacr;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lacr$c;->a:Lacr$c;

    iput-object v0, p0, Lacr;->c:Lacr$c;

    iput v1, p0, Lacr;->e:I

    iput-boolean v1, p0, Lacr;->g:Z

    new-instance v0, Lacs;

    invoke-direct {v0, p0}, Lacs;-><init>(Lacr;)V

    iput-object v0, p0, Lacr;->i:Landroid/os/Handler;

    new-instance v0, Lacu;

    invoke-direct {v0, p0}, Lacu;-><init>(Lacr;)V

    iput-object v0, p0, Lacr;->l:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    iput-object p1, p0, Lacr;->h:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lacr;->n:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lacr;->k:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    return-void
.end method

.method static synthetic a(Lacr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lacr;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lacr;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lacr;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lacr;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lacr;->j:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lacr;I)V
    .locals 6

    const/16 v5, 0x8

    iget-object v0, p0, Lacr;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lacr;->h:Landroid/content/Context;

    const v4, 0x7f0b04cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lacr;->h:Landroid/content/Context;

    const v4, 0x7f0b04d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08001c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lacr;->h:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lacr;->h:Landroid/content/Context;

    const v3, 0x7f0b0452

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0033

    new-instance v2, Lacw;

    invoke-direct {v2, p0, v0}, Lacw;-><init>(Lacr;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0059

    new-instance v2, Lacx;

    invoke-direct {v2, p0, v0}, Lacx;-><init>(Lacr;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lacr;IIILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 8

    const v5, 0x7f0b02af

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Lacr;->m:Lacr$d;

    iget v3, p0, Lacr;->e:I

    iget v0, p4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x3

    :goto_0
    sget v4, Lacr;->a:I

    if-ne p1, v4, :cond_0

    iget-object v4, v2, Lacr$d;->a:Lbrp;

    iget-object v5, p4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v6, p4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0}, Lbrp;->a(Lbrp;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    iget-object v0, v2, Lacr$d;->a:Lbrp;

    invoke-static {v0, v3}, Lbrp;->b(Lbrp;I)I

    iget-object v0, v2, Lacr$d;->a:Lbrp;

    invoke-static {v0}, Lbrp;->J(Lbrp;)Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0b02c1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lacr$d;->a:Lbrp;

    iget-object v2, v2, Lacr$d;->a:Lbrp;

    invoke-static {v2}, Lbrp;->K(Lbrp;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v2, v0, v7}, Lbrp;->a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    return-void

    :sswitch_0
    const/4 v0, 0x2

    iget-object v4, v2, Lacr$d;->a:Lbrp;

    iget-object v4, v2, Lacr$d;->a:Lbrp;

    invoke-static {v4}, Lbrp;->G(Lbrp;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2, p3}, Lbrp;->a(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, v2, Lacr$d;->a:Lbrp;

    iget-object v6, v2, Lacr$d;->a:Lbrp;

    invoke-static {v6}, Lbrp;->H(Lbrp;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v5, v6, v4, v7}, Lbrp;->a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, v2, Lacr$d;->a:Lbrp;

    iget-object v0, v2, Lacr$d;->a:Lbrp;

    invoke-static {v0}, Lbrp;->I(Lbrp;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lbrp;->a(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v4, v2, Lacr$d;->a:Lbrp;

    iget-object v5, v2, Lacr$d;->a:Lbrp;

    invoke-static {v5}, Lbrp;->H(Lbrp;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v4, v5, v0, v7}, Lbrp;->a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lacr$d;->a:Lbrp;

    iget-object v5, p4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v6, p4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0}, Lbrp;->a(Lbrp;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lacr;Lacr$b;I)V
    .locals 1

    iget-object v0, p0, Lacr;->m:Lacr$d;

    invoke-virtual {v0, p1, p2}, Lacr$d;->a(Lacr$b;I)V

    return-void
.end method

.method static synthetic b(Lacr;)Lho;
    .locals 1

    iget-object v0, p0, Lacr;->n:Lho;

    return-object v0
.end method

.method static synthetic b(Lacr;I)Ljava/util/Timer;
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lacy;

    invoke-direct {v1, p0, p1}, Lacy;-><init>(Lacr;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-object v0
.end method

.method static synthetic c(Lacr;I)I
    .locals 0

    iput p1, p0, Lacr;->f:I

    return p1
.end method

.method static synthetic c(Lacr;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;
    .locals 1

    iget-object v0, p0, Lacr;->k:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    return-object v0
.end method

.method static synthetic d(Lacr;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lacr;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lacr;I)V
    .locals 1

    iget-object v0, p0, Lacr;->m:Lacr$d;

    iget-object v0, v0, Lacr$d;->a:Lbrp;

    invoke-static {v0, p1}, Lbrp;->a(Lbrp;I)V

    return-void
.end method

.method static synthetic e(Lacr;I)I
    .locals 1

    iget v0, p0, Lacr;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lacr;->f:I

    return v0
.end method

.method static synthetic e(Lacr;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lacr;->j:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic f(Lacr;)I
    .locals 1

    iget v0, p0, Lacr;->f:I

    return v0
.end method

.method static synthetic g(Lacr;)Lacr$d;
    .locals 1

    iget-object v0, p0, Lacr;->m:Lacr$d;

    return-object v0
.end method

.method static synthetic h(Lacr;)Lmu;
    .locals 1

    iget-object v0, p0, Lacr;->o:Lmu;

    return-object v0
.end method

.method static synthetic i(Lacr;)I
    .locals 2

    iget v0, p0, Lacr;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lacr;->e:I

    return v0
.end method

.method static synthetic j(Lacr;)I
    .locals 1

    iget v0, p0, Lacr;->e:I

    return v0
.end method

.method static synthetic k(Lacr;)Lcom/tencent/tmsecure/module/qscanner/QScanListener;
    .locals 1

    iget-object v0, p0, Lacr;->l:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    return-object v0
.end method

.method static synthetic l(Lacr;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lacr;->g:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lacr;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacr;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public final a(Lacr$a;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lacr$c;->b:Lacr$c;

    iput-object v0, p0, Lacr;->c:Lacr$c;

    iput v2, p0, Lacr;->e:I

    new-instance v0, Lmu;

    invoke-direct {v0}, Lmu;-><init>()V

    iput-object v0, p0, Lacr;->o:Lmu;

    iput v2, p0, Lacr;->f:I

    iput-boolean v2, p0, Lacr;->g:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lacv;

    invoke-direct {v1, p0, p1}, Lacv;-><init>(Lacr;Lacr$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lacr$b;->j:Lacr$b;

    iget-object v1, p0, Lacr;->m:Lacr$d;

    invoke-virtual {v1, v0, v2}, Lacr$d;->a(Lacr$b;I)V

    return-void
.end method

.method public final a(Lacr$c;)V
    .locals 0

    iput-object p1, p0, Lacr;->c:Lacr$c;

    return-void
.end method

.method public final a(Lacr$d;)V
    .locals 0

    iput-object p1, p0, Lacr;->m:Lacr$d;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lacr;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacr;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    sget-object v0, Lacr$c;->f:Lacr$c;

    iput-object v0, p0, Lacr;->c:Lacr$c;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lacr;->k:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    sget-object v0, Lacr$c;->c:Lacr$c;

    iput-object v0, p0, Lacr;->c:Lacr$c;

    sget-object v0, Lacr$b;->c:Lacr$b;

    iget-object v1, p0, Lacr;->m:Lacr$d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lacr$d;->a(Lacr$b;I)V

    return-void
.end method

.method public final d()V
    .locals 1

    sget-object v0, Lacr$c;->a:Lacr$c;

    iput-object v0, p0, Lacr;->c:Lacr$c;

    const/4 v0, -0x1

    iput v0, p0, Lacr;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lacr;->o:Lmu;

    iget-object v0, p0, Lacr;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lacr;->c:Lacr$c;

    sget-object v1, Lacr$c;->b:Lacr$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lacr;->c:Lacr$c;

    sget-object v1, Lacr$c;->c:Lacr$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lacr;->c:Lacr$c;

    sget-object v1, Lacr$c;->a:Lacr$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lacr;->g:Z

    return v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lacr;->k:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    iget-object v0, p0, Lacr;->k:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V

    return-void
.end method

.method public final j()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lacr;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v3, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v3, Lms;

    invoke-direct {v3}, Lms;-><init>()V

    iput-object v0, v3, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    const/4 v4, 0x0

    iput v4, v3, Lms;->b:I

    iget v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lacr;->h:Landroid/content/Context;

    const v5, 0x7f0b02c8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
