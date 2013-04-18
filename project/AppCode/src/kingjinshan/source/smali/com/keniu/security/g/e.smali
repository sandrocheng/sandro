.class final Lcom/keniu/security/g/e;
.super Ljava/lang/Object;
.source "UpdateUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/f/t;

.field final synthetic b:Lcom/keniu/security/g/a;


# direct methods
.method constructor <init>(Lcom/keniu/security/g/a;Lcom/keniu/security/f/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/keniu/security/g/e;->b:Lcom/keniu/security/g/a;

    iput-object p2, p0, Lcom/keniu/security/g/e;->a:Lcom/keniu/security/f/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/keniu/security/g/e;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->h(Lcom/keniu/security/g/a;)Lcom/keniu/security/util/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/keniu/security/g/e;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->h(Lcom/keniu/security/g/a;)Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/keniu/security/g/e;->b:Lcom/keniu/security/g/a;

    invoke-static {v0}, Lcom/keniu/security/g/a;->h(Lcom/keniu/security/g/a;)Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->dismiss()V

    .line 441
    :cond_0
    new-instance v0, Lcom/keniu/security/g/i;

    iget-object v1, p0, Lcom/keniu/security/g/e;->b:Lcom/keniu/security/g/a;

    invoke-direct {v0, v1}, Lcom/keniu/security/g/i;-><init>(Lcom/keniu/security/g/a;)V

    .line 442
    iget-object v1, p0, Lcom/keniu/security/g/e;->a:Lcom/keniu/security/f/t;

    invoke-virtual {v0, v1}, Lcom/keniu/security/g/i;->a(Lcom/keniu/security/f/t;)V

    .line 443
    return-void
.end method
