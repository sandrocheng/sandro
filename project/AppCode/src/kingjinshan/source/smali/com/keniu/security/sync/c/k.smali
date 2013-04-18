.class public final Lcom/keniu/security/sync/c/k;
.super Lcom/keniu/security/sync/c/g;
.source "SettingsBackupTask.java"


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
    const v0, 0x7f0b08e0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/c/k;->a:I

    .line 24
    const-string v0, "firewall_user_rules.db"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/c/k;->d:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    iget-object v0, p0, Lcom/keniu/security/sync/c/k;->d:Ljava/lang/String;

    sget-object v1, Lcom/keniu/security/sync/r;->aH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/sync/r;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/k;->a(I)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/sync/c/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/../"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shared_prefs/com.ijinshan.mguard_preferences.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/keniu/security/sync/b/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/keniu/security/sync/b/a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/keniu/security/sync/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 39
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/k;->a(I)V

    .line 40
    invoke-static {v0}, Lcom/keniu/security/sync/l;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 41
    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/k;->a(I)V

    .line 42
    sget-object v1, Lcom/keniu/security/sync/r;->aG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/keniu/security/sync/r;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    .line 43
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/k;->a(I)V

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> setting#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/c/k;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/k;->c:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/k;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/k;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/keniu/security/sync/c/g;->onPreExecute()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/k;->a(I)V

    .line 30
    return-void
.end method
