.class Lcom/avast/android/mobilesecurity/app/account/f;
.super Landroid/os/AsyncTask;
.source "AntivirusActivityHelper.java"


# instance fields
.field a:Landroid/content/ContentResolver;

.field b:Lcom/avast/android/generic/internet/c/a/av;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/internet/c/a/av;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/account/f;->a:Landroid/content/ContentResolver;

    .line 40
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/account/f;->b:Lcom/avast/android/generic/internet/c/a/av;

    .line 41
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 45
    aget-object v0, p1, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 46
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 48
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/account/e;->a()Ljava/util/Calendar;

    move-result-object v9

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    div-long/2addr v3, v10

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scan_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/f;->b:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/av;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/f;->a:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/g;->a()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "infected"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 58
    const-string v0, "scanned"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 60
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 63
    :goto_1
    add-int v1, v6, v7

    .line 64
    add-int/2addr v0, v8

    .line 66
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string v5, "date"

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    const-string v5, "scan_type"

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/account/f;->b:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v6}, Lcom/avast/android/generic/internet/c/a/av;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v5, "infected"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v1, "scanned"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/account/f;->a:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/g;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_2
    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v3, "AntivirusActivityHelper IllegalArgumentException"

    invoke-virtual {v1, v3, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const-string v1, "AntivirusActivityHelper"

    const-string v3, "Caught exception that doesn\'t make any sense."

    invoke-static {v1, v3, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/account/f;->a([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
