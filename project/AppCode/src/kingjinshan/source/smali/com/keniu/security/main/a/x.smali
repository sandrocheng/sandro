.class public final Lcom/keniu/security/main/a/x;
.super Lcom/keniu/security/main/a/v;
.source "PrefBooleanCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/keniu/security/main/a/v;-><init>()V

    .line 225
    const-string v0, "\u75c5\u6bd2\u76d1\u63a7"

    iput-object v0, p0, Lcom/keniu/security/main/a/x;->a:Ljava/lang/String;

    .line 226
    const-string v0, "\u662f\u5426\u5f00\u542f\u75c5\u6bd2\u76d1\u63a7"

    iput-object v0, p0, Lcom/keniu/security/main/a/x;->f:Ljava/lang/String;

    .line 227
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    invoke-static {p1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->i()V

    .line 243
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 231
    invoke-static {p1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/keniu/security/a;->g()Z

    move-result v0

    .line 233
    if-eqz v0, :cond_0

    .line 234
    const-string v1, "\u5f00\u542f\u75c5\u6bd2\u76d1\u63a7"

    iput-object v1, p0, Lcom/keniu/security/main/a/x;->a:Ljava/lang/String;

    .line 237
    :goto_0
    return v0

    .line 236
    :cond_0
    const-string v1, "\u672a\u5f00\u542f\u75c5\u6bd2\u76d1\u63a7"

    iput-object v1, p0, Lcom/keniu/security/main/a/x;->a:Ljava/lang/String;

    goto :goto_0
.end method
