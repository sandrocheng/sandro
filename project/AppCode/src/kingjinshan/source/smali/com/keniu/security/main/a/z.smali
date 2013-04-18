.class public final Lcom/keniu/security/main/a/z;
.super Lcom/keniu/security/main/a/aa;
.source "PrefManuCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/keniu/security/main/a/aa;-><init>()V

    .line 261
    const-string v0, "\u624b\u673a\u5185\u5bb9\u5907\u4efd"

    iput-object v0, p0, Lcom/keniu/security/main/a/z;->a:Ljava/lang/String;

    .line 262
    const-string v0, "\u7acb\u5373\u5907\u4efd"

    iput-object v0, p0, Lcom/keniu/security/main/a/z;->b:Ljava/lang/String;

    .line 263
    const-string v0, "\u5df2\u5907\u4efd"

    iput-object v0, p0, Lcom/keniu/security/main/a/z;->c:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/keniu/security/main/a/z;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/main/a/z;->d:Ljava/lang/String;

    .line 265
    const-string v0, "\u672a\u5907\u4efd"

    iput-object v0, p0, Lcom/keniu/security/main/a/z;->e:Ljava/lang/String;

    .line 266
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/sync/ui/SyncMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 270
    invoke-static {}, Lcom/keniu/security/sync/ui/SyncHistoryActivity;->a()Z

    move-result v0

    return v0
.end method
