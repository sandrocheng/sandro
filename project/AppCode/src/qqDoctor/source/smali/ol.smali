.class final Lol;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;


# instance fields
.field private synthetic a:Lok;


# direct methods
.method constructor <init>(Lok;)V
    .locals 0

    iput-object p1, p0, Lol;->a:Lok;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanFinished(Ljava/util/ArrayList;)V
    .locals 1
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

    iget-object v0, p0, Lol;->a:Lok;

    iput-object p1, v0, Lok;->j:Ljava/util/List;

    iget-object v0, p0, Lol;->a:Lok;

    invoke-static {v0}, Lok;->a(Lok;)V

    return-void
.end method
