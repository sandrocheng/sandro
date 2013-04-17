.class public final Liu;
.super Lit;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lit;-><init>(Landroid/content/Context;)V

    const-string v0, "type = 1"

    iput-object v0, p0, Liu;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, v3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "date"

    iget-object v2, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "data"

    iget-wide v2, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "imsi"

    iget-object v2, p0, Liu;->c:Landroid/content/Context;

    invoke-static {v2}, Ldc;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final clearAll()V
    .locals 4

    iget-object v0, p0, Liu;->d:Lhs;

    const-string v1, "networK"

    iget-object v2, p0, Liu;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Liu;->d:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    return-void
.end method

.method public final getAll()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Liu;->getClosingDayForMonth()I

    move-result v1

    invoke-static {v0, v1}, La;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "date<"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND date>="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Liu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Liu;->d:Lhs;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM networK WHERE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ORDER BY data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Liu;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Liu;->d:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v5, :cond_2

    add-int/lit8 v0, v4, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    add-int/lit8 v0, v4, -0x1

    move v3, v2

    move v2, v0

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    if-eq v3, v2, :cond_3

    iget-object v6, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v6

    iget-object v7, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v7

    if-ne v6, v7, :cond_3

    iget-object v6, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v6

    iget-object v7, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v7

    if-ne v6, v7, :cond_3

    iget-object v6, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v6

    iget-object v7, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v7

    if-ne v6, v7, :cond_3

    iget-wide v6, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    iget-wide v8, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v2, v4, -0x1

    move v10, v3

    move v3, v2

    move v2, v10

    :goto_2
    add-int/lit8 v0, v0, -0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-object v5

    :cond_3
    move v0, v2

    move v2, v3

    move v3, v4

    goto :goto_2
.end method

.method public final getLastNetDataEntity()Lcom/tencent/tmsecure/module/network/NetDataEntity;
    .locals 4

    new-instance v0, Lcom/tencent/tmsecure/module/network/NetDataEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/NetDataEntity;-><init>()V

    iget-object v1, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v2, "gprs_receiver"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiver:J

    iget-object v1, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v2, "gprs_receiver_pks"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiverPks:J

    iget-object v1, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v2, "gprs_translate"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslate:J

    iget-object v1, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v2, "gprs_translate_pks"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslatePks:J

    return-object v0
.end method

.method public final getSystemTimeChange(Ljava/util/Date;)Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Liu;->u()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    :goto_0
    invoke-virtual {p0}, Liu;->getTotalForMonth()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iget-object v0, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v2, "temp_gprs_used_for_day"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    return-object v1

    :cond_0
    invoke-virtual {p0}, Liu;->getUsedForMonth()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    goto :goto_0
.end method

.method public final getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;
    .locals 6

    new-instance v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;-><init>()V

    invoke-virtual {p0}, Liu;->getTotalForMonth()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iget-object v1, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v2, "temp_gprs_used_for_day"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-virtual {p0}, Liu;->getUsedForMonth()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iget-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iget-wide v3, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mRetialForMonth:J

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v3, "temp_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getTotalForMonth()J
    .locals 4

    iget-object v0, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v1, "total_gprs"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUsedForMonth()J
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v0, p0, Liu;->a:Landroid/content/SharedPreferences;

    const-string v1, "str_gprs_used_for_month_data"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "str_gprs_used_for_month"

    iget-object v6, p0, Liu;->a:Landroid/content/SharedPreferences;

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Liu;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit$a;

    iget-wide v7, v0, Lit$a;->a:J

    int-to-long v9, v4

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    iget-wide v7, v0, Lit$a;->b:J

    int-to-long v9, v5

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    iget-wide v0, v0, Lit$a;->c:J

    :goto_1
    const-string v4, "str_gprs_used_for_month"

    iget-object v5, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-wide v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v2, v3}, Liu;->setUsedForMonth(J)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    goto :goto_2
.end method

.method public final insert(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 10

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v2, 0x0

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iget-object v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 v1, 0xe

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    iget-object v3, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->clear(I)V

    invoke-virtual {v1, v8}, Ljava/util/GregorianCalendar;->clear(I)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->clear(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "date > "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and date < "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "select id from networK where "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Liu;->d:Lhs;

    invoke-virtual {v1, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v4, p0, Liu;->d:Lhs;

    const-string v5, "networK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    iget-object v1, p0, Liu;->d:Lhs;

    const-string v3, "networK"

    invoke-virtual {p0, p1}, Liu;->a(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select id from networK where "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Liu;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " order by date desc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_3
    iget-object v2, p0, Liu;->d:Lhs;

    invoke-virtual {v2, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v0, 0x190

    :try_start_4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v3, p0, Liu;->d:Lhs;

    const-string v4, "networK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_1

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Liu;->d:Lhs;

    invoke-virtual {v0}, Lhs;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    return-void

    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v0, p0, Liu;->d:Lhs;

    invoke-virtual {v0}, Lhs;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_7
    if-eqz v1, :cond_6

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v1, p0, Liu;->d:Lhs;

    invoke-virtual {v1}, Lhs;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_1
.end method

.method public final resetToDayNetworkInfoEntity()V
    .locals 4

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "temp_gprs_used_for_day"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "temp_date"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setLastNetDataEntity(Lcom/tencent/tmsecure/module/network/NetDataEntity;)V
    .locals 5

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gprs_receiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiver:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gprs_receiver_pks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mReceiverPks:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gprs_translate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gprs_translate_pks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/network/NetDataEntity;->mTranslatePks:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setTodayNetworkInfoEntity(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 4

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "temp_gprs_used_for_day"

    iget-wide v2, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-wide v0, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iget-object v2, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "str_gprs_used_for_month_data"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "temp_date"

    iget-object v2, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setTotalForMonth(J)V
    .locals 2

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "total_gprs"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final setUsedForMonth(J)V
    .locals 2

    iget-object v0, p0, Liu;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "str_gprs_used_for_month_data"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final t()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0}, Liu;->getAll()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    :goto_1
    if-lez v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v5, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v5, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Liu;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0}, Liu;->getClosingDayForMonth()I

    move-result v2

    invoke-static {v0, v2}, La;->a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-static {v0, v2}, La;->b(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    const/16 v0, 0x23

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    :goto_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-virtual {v3, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-ne v0, v6, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    if-eq v0, v6, :cond_3

    :cond_2
    new-instance v6, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {v6}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;-><init>()V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v6, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iput-wide v9, v6, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->add(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    :goto_4
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;-><init>()V

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iput-wide v9, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v7, v8}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_4

    :cond_5
    return-object v5
.end method

.method public final u()J
    .locals 11

    const/4 v10, 0x5

    const/4 v1, 0x1

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Liu;->c:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    invoke-virtual {v0}, Lwr;->f()Z

    move-result v4

    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0}, Lwr;->g()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v3, -0x7

    invoke-virtual {v0, v10, v3}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v8, 0x7

    invoke-virtual {v3, v10, v8}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v7, v0}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7, v3}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Liu;->getClosingDayForMonth()I

    move-result v3

    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {v8, v3}, La;->a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v9

    invoke-static {v8, v3}, La;->b(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v8

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_1
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    if-nez v3, :cond_7

    :cond_0
    invoke-virtual {p0}, Liu;->p()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    move v1, v2

    :cond_1
    :goto_2
    if-nez v1, :cond_6

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Liu;->a(J)V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->getAll()Ljava/util/ArrayList;

    move-result-object v7

    move-wide v3, v5

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    cmp-long v8, v0, v5

    if-gez v8, :cond_2

    move-wide v0, v5

    :cond_2
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v7, v9}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Liu;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    add-long/2addr v0, v3

    :goto_4
    return-wide v0

    :cond_6
    invoke-virtual {p0}, Liu;->getUsedForMonth()J

    move-result-wide v0

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Liu;->getUsedForMonth()J

    move-result-wide v0

    goto :goto_4

    :cond_8
    move v3, v2

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_0
.end method
