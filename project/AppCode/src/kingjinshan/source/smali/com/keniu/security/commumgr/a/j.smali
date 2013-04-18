.class final Lcom/keniu/security/commumgr/a/j;
.super Ljava/lang/Object;
.source "RpCtrl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/keniu/security/util/w;

.field final synthetic c:Lcom/keniu/security/util/ap;

.field final synthetic d:Lcom/keniu/security/commumgr/a/g;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/a/g;Landroid/view/View;Lcom/keniu/security/util/w;Lcom/keniu/security/util/ap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/j;->d:Lcom/keniu/security/commumgr/a/g;

    iput-object p2, p0, Lcom/keniu/security/commumgr/a/j;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/keniu/security/commumgr/a/j;->b:Lcom/keniu/security/util/w;

    iput-object p4, p0, Lcom/keniu/security/commumgr/a/j;->c:Lcom/keniu/security/util/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f080174

    .line 182
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/j;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 183
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/keniu/security/commumgr/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/j;->d:Lcom/keniu/security/commumgr/a/g;

    iget-object v0, v0, Lcom/keniu/security/commumgr/a/g;->a:Landroid/app/Activity;

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/keniu/security/commumgr/a/j;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/j;->b:Lcom/keniu/security/util/w;

    invoke-interface {v0}, Lcom/keniu/security/util/w;->a()V

    .line 190
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/j;->c:Lcom/keniu/security/util/ap;

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->dismiss()V

    goto :goto_0
.end method
