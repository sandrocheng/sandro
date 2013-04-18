.class public final Lcom/keniu/security/sync/c/l;
.super Lcom/keniu/security/sync/c/g;
.source "SettingsRestoreTask.java"


# instance fields
.field a:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    const v0, 0x7f0b08e1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/c/l;->a:I

    .line 24
    const-string v0, "firewall_user_rules.db"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/l;->d:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 34
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keniu/security/sync/r;->aH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x2729

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/c/l;->d:Ljava/lang/String;

    sget-object v1, Lcom/keniu/security/sync/r;->aH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/sync/r;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 37
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/l;->a(I)V

    .line 38
    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/a/e;->a()V

    .line 41
    iget-object v0, p0, Lcom/keniu/security/sync/c/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/l;->a(I)V

    .line 47
    new-instance v0, Lcom/keniu/security/sync/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/sync/c/l;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shared_prefs/com.ijinshan.mguard_preferences.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/keniu/security/sync/b/a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/keniu/security/sync/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 48
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/l;->a(I)V

    .line 49
    if-nez v0, :cond_2

    const/16 v0, 0x2716

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    sget-object v1, Lcom/keniu/security/sync/r;->aG:Ljava/lang/String;

    invoke-static {v1}, Lcom/keniu/security/sync/l;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/sync/l;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 51
    const/16 v2, 0x46

    invoke-virtual {p0, v2}, Lcom/keniu/security/sync/c/l;->a(I)V

    .line 52
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/16 v0, 0x2715

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_4
    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 54
    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/l;->a(I)V

    .line 55
    invoke-static {v0}, Lcom/keniu/security/sync/l;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/sync/c/l;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "shared_prefs/com.ijinshan.mguard_preferences.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 56
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/l;->a(I)V

    .line 57
    if-eqz v0, :cond_5

    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x2718

    goto :goto_1
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> settings#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/keniu/security/sync/c/l;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/l;->c:Landroid/os/Handler;

    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void

    .line 63
    :cond_0
    const/16 v3, -0x271b

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/l;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/l;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/keniu/security/sync/c/g;->onPreExecute()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/l;->a(I)V

    .line 30
    return-void
.end method
