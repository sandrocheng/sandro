.class final Lqi;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;


# instance fields
.field private synthetic a:Lqc$a;


# direct methods
.method constructor <init>(Lqc$a;)V
    .locals 0

    iput-object p1, p0, Lqi;->a:Lqc$a;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 2

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Llc;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Llc;->d:Ljava/lang/Object;

    iget-object v1, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Lqi;->a:Lqc$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqi;->a:Lqc$a;

    invoke-interface {v1, v0}, Lqc$a;->a(Llc;)V

    :cond_0
    return-void
.end method

.method public final onScanStarted()V
    .locals 2

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Llc;->a:I

    iget-object v1, p0, Lqi;->a:Lqc$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqi;->a:Lqc$a;

    invoke-interface {v1, v0}, Lqc$a;->c(Llc;)V

    :cond_0
    return-void
.end method
