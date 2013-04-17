.class final Lacq;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lacp;


# direct methods
.method constructor <init>(Lacp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lacq;->b:Lacp;

    iput-object p2, p0, Lacq;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanFinished(Ljava/util/ArrayList;)V
    .locals 4
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

    iget-object v0, p0, Lacq;->b:Lacp;

    iput-object p1, v0, Lacp;->a:Ljava/util/List;

    iget-object v0, p0, Lacq;->b:Lacp;

    iget-object v0, v0, Lacp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b02c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lacq;->b:Lacp;

    iget-object v1, p0, Lacq;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacp;->a(Lacp;Ljava/lang/String;)V

    return-void
.end method
