.class final Lcom/keniu/security/commumgr/a/h;
.super Ljava/lang/Object;
.source "RpCtrl.java"

# interfaces
.implements Lcom/keniu/security/util/w;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/keniu/security/commumgr/a/g;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/a/g;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/h;->b:Lcom/keniu/security/commumgr/a/g;

    iput-object p2, p0, Lcom/keniu/security/commumgr/a/h;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/h;->a:Landroid/view/View;

    const v1, 0x7f080174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 149
    iget-object v1, p0, Lcom/keniu/security/commumgr/a/h;->a:Landroid/view/View;

    const v2, 0x7f080175

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 150
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v0}, Lcom/keniu/security/commumgr/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    invoke-static {}, Lcom/keniu/security/commumgr/a/e;->c()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v2, Lcom/keniu/security/commumgr/a/t;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/keniu/security/commumgr/a/t;-><init>(I)V

    .line 158
    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/commumgr/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/h;->b:Lcom/keniu/security/commumgr/a/g;

    iget-object v0, v0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    new-instance v1, Lcom/keniu/security/commumgr/a/i;

    invoke-direct {v1, p0}, Lcom/keniu/security/commumgr/a/i;-><init>(Lcom/keniu/security/commumgr/a/h;)V

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/keniu/security/commumgr/a/e;->a(Landroid/content/Context;Lcom/keniu/security/commumgr/a/t;Lcom/keniu/security/commumgr/a/k;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
