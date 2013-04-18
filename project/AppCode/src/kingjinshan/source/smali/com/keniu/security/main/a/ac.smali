.class public final Lcom/keniu/security/main/a/ac;
.super Lcom/keniu/security/main/a/aa;
.source "PrefManuCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/keniu/security/main/a/aa;-><init>()V

    .line 163
    const-string v0, "\u6263\u8d39\u4e1a\u52a1"

    iput-object v0, p0, Lcom/keniu/security/main/a/ac;->a:Ljava/lang/String;

    .line 164
    const-string v0, "\u7acb\u5373\u67e5\u8be2"

    iput-object v0, p0, Lcom/keniu/security/main/a/ac;->b:Ljava/lang/String;

    .line 165
    const-string v0, "\u5df2\u67e5\u8be2"

    iput-object v0, p0, Lcom/keniu/security/main/a/ac;->c:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/keniu/security/main/a/ac;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/main/a/ac;->d:Ljava/lang/String;

    .line 167
    const-string v0, "\u672a\u67e5\u8be2"

    iput-object v0, p0, Lcom/keniu/security/main/a/ac;->e:Ljava/lang/String;

    .line 168
    const-string v0, "\u672c\u673a\u662f\u5426\u8ba2\u9605\u6263\u8d39\u4e1a\u52a1"

    iput-object v0, p0, Lcom/keniu/security/main/a/ac;->f:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallQuerySpActivity;->a(Landroid/content/Context;Z)V

    .line 179
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-static {p1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->aO()Z

    move-result v0

    return v0
.end method
