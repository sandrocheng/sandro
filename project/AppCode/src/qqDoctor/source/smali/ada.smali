.class final Lada;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/market/IMarketManagerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/market/IMarketManagerListener",
        "<",
        "Lcom/tencent/tmsecure/module/market/ResponseInfo;",
        "Lcom/tencent/tmsecure/module/market/CategoryEx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/util/ArrayList;

.field private synthetic d:Lacz;


# direct methods
.method constructor <init>(Lacz;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lada;->d:Lacz;

    iput-object p2, p0, Lada;->a:Ljava/lang/String;

    iput-object p3, p0, Lada;->b:Ljava/lang/String;

    iput-object p4, p0, Lada;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lada;->d:Lacz;

    iget v0, v0, Lacz;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WeekRecService requestWeekRecData RenetTimes currentNetTimes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lada;->d:Lacz;

    iget v1, v1, Lacz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lada;->d:Lacz;

    iget v1, v0, Lacz;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lacz;->a:I

    iget-object v0, p0, Lada;->d:Lacz;

    iget-object v1, p0, Lada;->a:Ljava/lang/String;

    iget-object v2, p0, Lada;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lacz;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lada;->d:Lacz;

    const/4 v1, 0x0

    iput v1, v0, Lacz;->a:I

    invoke-static {p2}, La;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " WeekRecService requestWeekRecData categoryInfoList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lada;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
