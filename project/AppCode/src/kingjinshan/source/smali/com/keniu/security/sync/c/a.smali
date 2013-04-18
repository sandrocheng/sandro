.class public final Lcom/keniu/security/sync/c/a;
.super Lcom/keniu/security/sync/c/g;
.source "ContactBackupTask.java"


# instance fields
.field a:I

.field private d:Lcom/keniu/security/sync/d;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    const v0, 0x7f0b08b0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/c/a;->a:I

    .line 27
    invoke-static {p2}, Lcom/keniu/security/sync/r;->a(Landroid/content/Context;)Lcom/keniu/security/sync/d;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/a;->d:Lcom/keniu/security/sync/d;

    .line 28
    iput p3, p0, Lcom/keniu/security/sync/c/a;->e:I

    .line 29
    return-void
.end method

.method private a(Landroid/database/Cursor;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, -0x2720

    const/4 v4, 0x0

    .line 73
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 75
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/keniu/security/sync/c/a;->d:Lcom/keniu/security/sync/d;

    invoke-virtual {v1, p1}, Lcom/keniu/security/sync/d;->a(Landroid/database/Cursor;)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/c/a;->a:I

    .line 79
    iget v1, p0, Lcom/keniu/security/sync/c/a;->a:I

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/a;->a(I)V

    .line 80
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/keniu/security/sync/c/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/a;->publishProgress([Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/keniu/security/sync/c/a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_2
    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const/16 v0, -0x271e

    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/c/a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/sync/r;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, -0x271f

    goto :goto_0

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/sync/c/a;->f:Ljava/lang/String;

    sget-object v1, Lcom/keniu/security/sync/r;->aE:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/keniu/security/sync/l;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v5

    goto :goto_0

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/sync/c/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/keniu/security/sync/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    goto :goto_0

    :cond_6
    move v0, v4

    .line 93
    goto :goto_0
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 40
    iget v0, p0, Lcom/keniu/security/sync/c/a;->e:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/keniu/security/sync/r;->aC:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/keniu/security/sync/c/a;->f:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/keniu/security/sync/c/a;->d:Lcom/keniu/security/sync/d;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d;->b()Landroid/database/Cursor;

    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    const/16 v0, -0x271d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 63
    :goto_1
    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lcom/keniu/security/sync/r;->aD:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 45
    const/4 v2, 0x1

    iput v2, p0, Lcom/keniu/security/sync/c/a;->a:I

    .line 48
    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/a;->b(I)V

    .line 50
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/keniu/security/sync/c/a;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/c/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_3
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 58
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/keniu/security/sync/c/a;->a(Landroid/database/Cursor;I)I

    move-result v2

    .line 59
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/keniu/security/sync/r;->aE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 60
    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 68
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

    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/c/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/a;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    :cond_0
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/a;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/keniu/security/sync/c/g;->onPreExecute()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/a;->a(I)V

    .line 34
    return-void
.end method
