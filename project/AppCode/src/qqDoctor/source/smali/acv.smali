.class final Lacv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lacr$a;

.field private synthetic b:Lacr;


# direct methods
.method constructor <init>(Lacr;Lacr$a;)V
    .locals 0

    iput-object p1, p0, Lacv;->b:Lacr;

    iput-object p2, p0, Lacv;->a:Lacr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lacv;->b:Lacr;

    sget-object v1, Lacr$b;->a:Lacr$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lacr;->a(Lacr;Lacr$b;I)V

    iget-object v0, p0, Lacv;->b:Lacr;

    iget-object v1, p0, Lacv;->b:Lacr;

    invoke-static {v1, v3}, Lacr;->b(Lacr;I)Ljava/util/Timer;

    move-result-object v1

    invoke-static {v0, v1}, Lacr;->a(Lacr;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lacv;->a:Lacr$a;

    sget-object v1, Lacr$a;->a:Lacr$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lacv;->b:Lacr;

    invoke-static {v0}, Lacr;->c(Lacr;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v0

    iget-object v1, p0, Lacv;->b:Lacr;

    invoke-static {v1}, Lacr;->k(Lacr;)Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lacv;->b:Lacr;

    invoke-static {v0}, Lacr;->c(Lacr;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v0

    iget-object v1, p0, Lacv;->b:Lacr;

    invoke-static {v1}, Lacr;->k(Lacr;)Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanGlobal(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    goto :goto_0
.end method
