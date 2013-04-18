.class public final Lcom/keniu/security/main/a/p;
.super Lcom/keniu/security/main/a/v;
.source "PrefBooleanCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/keniu/security/main/a/v;-><init>()V

    .line 199
    const-string v0, "\u81ea\u52a8\u8054\u7f51\u4e91\u67e5\u6740"

    iput-object v0, p0, Lcom/keniu/security/main/a/p;->a:Ljava/lang/String;

    .line 200
    const-string v0, "\u662f\u5426\u5f00\u542f\u81ea\u52a8\u4e91\u67e5\u6740"

    iput-object v0, p0, Lcom/keniu/security/main/a/p;->f:Ljava/lang/String;

    .line 201
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    invoke-static {p1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->aJ()V

    .line 217
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-static {p1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/keniu/security/a;->aI()Z

    move-result v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    const-string v1, "\u81ea\u52a8\u8054\u7f51\u4e91\u67e5\u6740"

    iput-object v1, p0, Lcom/keniu/security/main/a/p;->a:Ljava/lang/String;

    .line 211
    :goto_0
    return v0

    .line 210
    :cond_0
    const-string v1, "\u672a\u5f00\u542f\u81ea\u52a8\u4e91\u67e5\u6740"

    iput-object v1, p0, Lcom/keniu/security/main/a/p;->a:Ljava/lang/String;

    goto :goto_0
.end method
