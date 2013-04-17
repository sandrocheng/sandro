.class final Ladc;
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
        "Lcom/tencent/tmsecure/module/market/SoftSimpleInfoEx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/market/MarketManager;

.field private synthetic b:Lla;

.field private synthetic c:Lacz;


# direct methods
.method constructor <init>(Lacz;Lcom/tencent/tmsecure/module/market/MarketManager;Lla;)V
    .locals 0

    iput-object p1, p0, Ladc;->c:Lacz;

    iput-object p2, p0, Ladc;->a:Lcom/tencent/tmsecure/module/market/MarketManager;

    iput-object p3, p0, Ladc;->b:Lla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceive(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 9

    const-wide/16 v7, -0x1

    check-cast p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;

    iget v0, p1, Lcom/tencent/tmsecure/module/market/ResponseInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ladc;->c:Lacz;

    iget v0, v0, Lacz;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WeekRecService requestOneWeekSoftListData RenetTimes currentNetTimes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ladc;->c:Lacz;

    iget v1, v1, Lacz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Ladc;->c:Lacz;

    iget v1, v0, Lacz;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lacz;->a:I

    iget-object v0, p0, Ladc;->c:Lacz;

    iget-object v1, p0, Ladc;->a:Lcom/tencent/tmsecure/module/market/MarketManager;

    iget-object v2, p0, Ladc;->b:Lla;

    invoke-static {v0, v1, v2}, Lacz;->a(Lacz;Lcom/tencent/tmsecure/module/market/MarketManager;Lla;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ladc;->c:Lacz;

    const/4 v1, 0x0

    iput v1, v0, Lacz;->a:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, La;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WeekRecService requestOneWeekSoftListData appList "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkw;->b(I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ladc;->c:Lacz;

    iget-object v1, v0, Lacz;->c:Ljt;

    iget-object v0, p0, Ladc;->b:Lla;

    invoke-virtual {v0}, Lla;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Ljt;->a:Lhs;

    new-instance v0, Ljy;

    invoke-direct/range {v0 .. v5}, Ljy;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v6, v0}, Lhs;->a(Ldv;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ladc;->b:Lla;

    invoke-virtual {v1}, Lla;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " toAppInfo mMarketDao.getLastWeekTime() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ladc;->c:Lacz;

    iget-object v1, v1, Lacz;->b:Lis;

    iget-object v1, v1, Lis;->b:Landroid/content/SharedPreferences;

    const-string v2, "last_week_time"

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Ladc;->b:Lla;

    invoke-virtual {v0}, Lla;->j()J

    move-result-wide v0

    iget-object v2, p0, Ladc;->c:Lacz;

    iget-object v2, v2, Lacz;->b:Lis;

    iget-object v2, v2, Lis;->b:Landroid/content/SharedPreferences;

    const-string v3, "last_week_time"

    invoke-interface {v2, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Ladc;->c:Lacz;

    iget-object v0, v0, Lacz;->b:Lis;

    iget-object v1, p0, Ladc;->b:Lla;

    invoke-virtual {v1}, Lla;->j()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MarketDao setLastWeekTime lastWeekTime "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, v0, Lis;->a:Landroid/content/SharedPreferences$Editor;

    const-string v3, "last_week_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
