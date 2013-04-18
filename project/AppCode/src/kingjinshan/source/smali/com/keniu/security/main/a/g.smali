.class public final Lcom/keniu/security/main/a/g;
.super Ljava/lang/Object;
.source "BlockerCheckModule.java"

# interfaces
.implements Lcom/keniu/security/main/a/m;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "\u6709\u5f85\u5904\u7406\u7684\u62e6\u622a\u4fe1\u606f"

    iput-object v0, p0, Lcom/keniu/security/main/a/g;->a:Ljava/lang/String;

    .line 14
    const-string v0, "\u67e5\u770b"

    iput-object v0, p0, Lcom/keniu/security/main/a/g;->b:Ljava/lang/String;

    .line 15
    const-string v0, "\u5df2\u67e5\u770b"

    iput-object v0, p0, Lcom/keniu/security/main/a/g;->c:Ljava/lang/String;

    .line 16
    const-string v0, "\u5df2\u67e5\u770b"

    iput-object v0, p0, Lcom/keniu/security/main/a/g;->d:Ljava/lang/String;

    .line 17
    const-string v0, "\u6ca1\u6709\u5f85\u5904\u7406\u7684\u62e6\u622a\u4fe1\u606f"

    iput-object v0, p0, Lcom/keniu/security/main/a/g;->e:Ljava/lang/String;

    .line 19
    sget v0, Lcom/keniu/security/main/a/k;->e:I

    iput v0, p0, Lcom/keniu/security/main/a/g;->f:I

    return-void
.end method

.method private static j()Z
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->a()I

    move-result v0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->c()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/keniu/security/main/a/g;->f:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/keniu/security/main/a/g;->a:Ljava/lang/String;

    .line 67
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/keniu/security/main/a/g;->b:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/keniu/security/main/a/g;->c:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/keniu/security/main/a/g;->d:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_5

    .line 62
    invoke-virtual {p0}, Lcom/keniu/security/main/a/g;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/keniu/security/main/a/g;->a:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/main/a/g;->e:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/core/h;->a()I

    move-result v0

    .line 102
    if-lez v0, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 88
    invoke-static {}, Lcom/keniu/security/main/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget v0, Lcom/keniu/security/main/a/k;->h:I

    iput v0, p0, Lcom/keniu/security/main/a/g;->g:I

    .line 95
    :goto_0
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 96
    return-void

    .line 91
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/g;->g:I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 138
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/keniu/security/main/a/g;->g:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-static {}, Lcom/keniu/security/main/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget v0, Lcom/keniu/security/main/a/k;->h:I

    iput v0, p0, Lcom/keniu/security/main/a/g;->g:I

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/g;->g:I

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/keniu/security/main/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/keniu/security/main/a/g;->g:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/g;->g:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method
