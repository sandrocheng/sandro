.class final Lbbm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbbl;


# direct methods
.method constructor <init>(Lbbl;)V
    .locals 0

    iput-object p1, p0, Lbbm;->a:Lbbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbbm;->a:Lbbl;

    iget-object v0, v0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->a(Lbbk;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbm;->a:Lbbl;

    iget-object v0, v0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->a(Lbbk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lbbm;->a:Lbbl;

    iget-object v0, v0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->a(Lbbk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lbbm;->a:Lbbl;

    iget-object v0, v0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->a(Lbbk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbbm;->a:Lbbl;

    iget-object v0, v0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->b(Lbbk;)Lcom/tencent/tmsecure/module/network/NetworkManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->clearTrafficInfo([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
