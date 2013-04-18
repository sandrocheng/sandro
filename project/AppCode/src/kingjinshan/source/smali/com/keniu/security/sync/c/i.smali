.class public final Lcom/keniu/security/sync/c/i;
.super Lcom/keniu/security/sync/c/g;
.source "SMSBackupTask.java"


# instance fields
.field private a:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const v0, 0x7f0b08b1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 35
    iput p3, p0, Lcom/keniu/security/sync/c/i;->a:I

    .line 36
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    iget v0, p0, Lcom/keniu/security/sync/c/i;->a:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/keniu/security/sync/r;->aI:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/keniu/security/sync/c/i;->d:Ljava/lang/String;

    .line 49
    const/4 v0, 0x7

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "status"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "read"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "subject"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "body"

    aput-object v1, v2, v0

    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/c/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 53
    :goto_1
    iget-object v2, p0, Lcom/keniu/security/sync/c/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v2, v3}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v2

    .line 54
    array-length v3, v2

    add-int/2addr v3, v1

    .line 56
    invoke-virtual {p0, v3}, Lcom/keniu/security/sync/c/i;->b(I)V

    .line 58
    invoke-virtual {p0}, Lcom/keniu/security/sync/c/i;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 60
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_2
    return-object v0

    .line 46
    :cond_1
    sget-object v0, Lcom/keniu/security/sync/r;->aJ:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v8

    .line 51
    goto :goto_1

    .line 63
    :cond_3
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 64
    if-eqz v0, :cond_9

    if-lez v1, :cond_9

    move v1, v6

    .line 65
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    const-string v5, "msg_type"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    const-string v5, "type"

    const-string v6, "type"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    const-string v5, "status"

    const-string v6, "status"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string v5, "read"

    const-string v6, "read"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v5, "address"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    const-string v6, "address"

    if-nez v5, :cond_5

    const-string v5, ""

    :cond_5
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v5, "date"

    const-string v6, "date"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    const-string v5, "subject"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    const-string v6, "subject"

    if-nez v5, :cond_6

    const-string v5, ""

    :cond_6
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v5, "body"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    const-string v6, "body"

    if-nez v5, :cond_7

    const-string v5, ""

    :cond_7
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 81
    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/i;->a(I)V

    .line 82
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/keniu/security/sync/c/i;->publishProgress([Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/keniu/security/sync/c/i;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_8
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    move v1, v6

    .line 89
    :cond_a
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_b
    array-length v0, v2

    move v5, v1

    move v1, v8

    :goto_3
    if-ge v1, v0, :cond_e

    aget-object v6, v2, v1

    .line 92
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 93
    const-string v8, "msg_type"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v8, "id"

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string v8, "address"

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, ""

    :goto_4
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v8, "body"

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v8, "date"

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string v8, "status"

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/l;->g()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string v8, "type"

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v8, "list_type"

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/l;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/keniu/security/sync/c/i;->a(I)V

    .line 104
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/keniu/security/sync/c/i;->publishProgress([Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lcom/keniu/security/sync/c/i;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 95
    :cond_c
    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 91
    :cond_d
    add-int/lit8 v1, v1, 0x1

    move v5, v6

    goto/16 :goto_3

    .line 109
    :cond_e
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/c/i;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, -0x271f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 111
    :cond_f
    iget-object v0, p0, Lcom/keniu/security/sync/c/i;->d:Ljava/lang/String;

    sget-object v1, Lcom/keniu/security/sync/r;->aK:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/keniu/security/sync/l;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 112
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/sync/r;->aK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 115
    :cond_10
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/sync/r;->aK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 116
    const/16 v0, -0x2720

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_2

    .line 118
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/16 v0, -0x2721

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> result#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/i;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/i;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    :cond_0
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/i;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/i;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/keniu/security/sync/c/g;->onPreExecute()V

    .line 40
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/i;->b(I)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/i;->a(I)V

    .line 42
    return-void
.end method
