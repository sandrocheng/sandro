.class final Lwp;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;


# instance fields
.field private synthetic a:Lmb;

.field private synthetic b:Lmb$a;

.field private synthetic c:Lwn;


# direct methods
.method constructor <init>(Lwn;Lmb;Lmb$a;)V
    .locals 0

    iput-object p1, p0, Lwp;->c:Lwn;

    iput-object p2, p0, Lwp;->a:Lmb;

    iput-object p3, p0, Lwp;->b:Lmb$a;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanFinished(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanFinished(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lwp;->c:Lwn;

    invoke-static {v0, p1}, Lwn;->a(Lwn;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lwp;->c:Lwn;

    iget-object v1, p0, Lwp;->a:Lmb;

    iget-object v2, p0, Lwp;->b:Lmb$a;

    invoke-static {v0, v1, v2}, Lwn;->a(Lwn;Lmb;Lmb$a;)V

    return-void
.end method
