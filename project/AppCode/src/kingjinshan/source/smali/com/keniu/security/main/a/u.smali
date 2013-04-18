.class public final Lcom/keniu/security/main/a/u;
.super Lcom/keniu/security/main/a/v;
.source "PrefBooleanCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/keniu/security/main/a/v;-><init>()V

    .line 140
    const-string v0, "\u9a9a\u6270\u62e6\u622a\u76d1\u63a7"

    iput-object v0, p0, Lcom/keniu/security/main/a/u;->a:Ljava/lang/String;

    .line 141
    const-string v0, "\u662f\u5426\u5f00\u542f\u9a9a\u6270\u62e6\u622a\u76d1\u63a7"

    iput-object v0, p0, Lcom/keniu/security/main/a/u;->f:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Z)V

    .line 159
    const-string v0, "\u5f00\u542f\u9a9a\u6270\u62e6\u622a\u76d1\u63a7"

    iput-object v0, p0, Lcom/keniu/security/main/a/u;->a:Ljava/lang/String;

    .line 160
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    const-string v1, "\u9a9a\u6270\u62e6\u622a\u76d1\u63a7"

    iput-object v1, p0, Lcom/keniu/security/main/a/u;->a:Ljava/lang/String;

    .line 152
    :goto_0
    return v0

    .line 151
    :cond_0
    const-string v1, "\u672a\u5f00\u542f\u9a9a\u6270\u62e6\u622a\u76d1\u63a7"

    iput-object v1, p0, Lcom/keniu/security/main/a/u;->a:Ljava/lang/String;

    goto :goto_0
.end method
