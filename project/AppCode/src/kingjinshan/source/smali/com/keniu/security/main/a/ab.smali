.class public final Lcom/keniu/security/main/a/ab;
.super Lcom/keniu/security/main/a/aa;
.source "PrefManuCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/keniu/security/main/a/aa;-><init>()V

    .line 212
    const-string v0, "\u9632\u76d7\u529f\u80fd"

    iput-object v0, p0, Lcom/keniu/security/main/a/ab;->a:Ljava/lang/String;

    .line 213
    const-string v0, "\u7acb\u5373\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/ab;->b:Ljava/lang/String;

    .line 214
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/ab;->c:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/keniu/security/main/a/ab;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/main/a/ab;->d:Ljava/lang/String;

    .line 216
    const-string v0, "\u672a\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/ab;->e:Ljava/lang/String;

    .line 217
    const-string v0, "\u662f\u5426\u5f00\u542f\u624b\u673a\u9632\u76d7\u4fdd\u62a4"

    iput-object v0, p0, Lcom/keniu/security/main/a/ab;->f:Ljava/lang/String;

    .line 218
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 235
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;)V

    .line 237
    const-string v0, "\u5f00\u542f\u624b\u673a\u9632\u76d7\u4fdd\u62a4"

    iput-object v0, p0, Lcom/keniu/security/main/a/ab;->a:Ljava/lang/String;

    .line 254
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 240
    const-string v0, "pt"

    const-string v1, "5"

    invoke-static {p1, v0, v1}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;)Z

    move-result v0

    .line 245
    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ui/PreventTheftFirstVisitActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 222
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    sget v0, Lcom/keniu/security/main/a/k;->c:I

    iput v0, p0, Lcom/keniu/security/main/a/aa;->g:I

    .line 225
    :cond_0
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    .line 226
    if-eqz v0, :cond_1

    .line 227
    const-string v1, "\u624b\u673a\u9632\u76d7"

    iput-object v1, p0, Lcom/keniu/security/main/a/ab;->a:Ljava/lang/String;

    .line 230
    :goto_0
    return v0

    .line 229
    :cond_1
    const-string v1, "\u672a\u5f00\u542f\u624b\u673a\u9632\u76d7\u4fdd\u62a4"

    iput-object v1, p0, Lcom/keniu/security/main/a/ab;->a:Ljava/lang/String;

    goto :goto_0
.end method
