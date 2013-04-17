.class public final Lbd;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss E"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbd;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(IIJ)V
    .locals 5

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v1, Lca$a;->p:Lca$a;

    invoke-interface {v0, v1, p2, p3}, Lca;->a(Lca$a;J)V

    const-string v1, "CommUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveNotifyTimeAndTypes currentTime = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lbd;->a:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lca$a;->q:Lca$a;

    invoke-interface {v0, v1, p0}, Lca;->a(Lca$a;I)V

    sget-object v1, Lca$a;->r:Lca$a;

    invoke-interface {v0, v1, p1}, Lca;->a(Lca$a;I)V

    return-void
.end method

.method private static a(JJLjava/lang/String;)Z
    .locals 11

    const/4 v1, 0x1

    const-string v0, "CommUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isNeedShowNotification enter currentTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyInterval=1296000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentLoginedAccount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lbe;->a()Lbe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbe;->b()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v2, "CommUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNeedShowNotification currentTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notifyInterval=1296000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbe;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CommUtils"

    const-string v2, "isNeedShowNotification need notify *******************************"

    invoke-static {v0, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbf;->f()V

    invoke-virtual {v0}, Lbf;->c()J

    move-result-wide v3

    sub-long v5, p0, v3

    const-string v7, "CommUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isNeedShowNotification currentTime = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lbd;->a:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lastNotifyTimeOfOther="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lbd;->a:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deltaTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v3, 0x4d3f6400

    cmp-long v3, v5, v3

    if-gez v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-ltz v3, :cond_2

    const-string v3, "CommUtils"

    const-string v4, "isNeedShowNotification no need notify *******************************"

    invoke-static {v3, v4}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbf;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CommUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isNeedShowNotification otherAccount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CommUtils"

    const-string v3, "isNeedShowNotification same account"

    invoke-static {v0, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const-string v1, "CommUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "askAllRemoteLastNotification account = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "askAllRemoteLastNotification packageName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lbf;

    invoke-direct {v2}, Lbf;-><init>()V

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v3

    sget-object v4, Lca$a;->o:Lca$a;

    invoke-interface {v3, v4}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lca$a;->p:Lca$a;

    invoke-interface {v3, v5}, Lca;->c(Lca$a;)J

    move-result-wide v5

    sget-object v7, Lca$a;->q:Lca$a;

    invoke-interface {v3, v7}, Lca;->b(Lca$a;)I

    move-result v7

    sget-object v8, Lca$a;->r:Lca$a;

    invoke-interface {v3, v8}, Lca;->b(Lca$a;)I

    move-result v3

    invoke-virtual {v2, v4}, Lbf;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lbf;->b(J)V

    invoke-virtual {v2, v7}, Lbf;->b(I)V

    invoke-virtual {v2, v3}, Lbf;->c(I)V

    invoke-virtual {v2, v1}, Lbf;->a(Ljava/lang/String;)V

    invoke-static {}, Lbe;->a()Lbe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbe;->a(Z)V

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, La;->a(Landroid/content/Context;ILandroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CommUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "askAllRemoteLastNotification broadcast ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lbe;->a()Lbe;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbe;->a(Z)V

    const-wide/32 v0, 0x4d3f6400

    invoke-static {p1, p2, v0, v1, p3}, Lbd;->a(JJLjava/lang/String;)Z

    move-result v0

    const-string v1, "CommUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "askAllRemoteLastNotification isNeedShowNotification ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "CommUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "askAllRemoteLastNotification leave needShow ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CommUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncAskAllRemoteLastNotification(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
