.class public final Lcom/keniu/security/main/a/ad;
.super Lcom/keniu/security/main/a/aa;
.source "PrefManuCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/keniu/security/main/a/aa;-><init>()V

    .line 136
    const-string v0, "\u5783\u573e\u77ed\u4fe1\u626b\u63cf"

    iput-object v0, p0, Lcom/keniu/security/main/a/ad;->a:Ljava/lang/String;

    .line 137
    const-string v0, "\u7acb\u5373\u626b\u63cf"

    iput-object v0, p0, Lcom/keniu/security/main/a/ad;->b:Ljava/lang/String;

    .line 138
    const-string v0, "\u5df2\u626b\u63cf"

    iput-object v0, p0, Lcom/keniu/security/main/a/ad;->c:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/keniu/security/main/a/ad;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/main/a/ad;->d:Ljava/lang/String;

    .line 140
    const-string v0, "\u672a\u626b\u63cf"

    iput-object v0, p0, Lcom/keniu/security/main/a/ad;->e:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v1, "FirewallLogTabActivity_force_rubbish_scan"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 145
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->v()Z

    move-result v0

    return v0
.end method
