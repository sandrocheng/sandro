.class final Lcom/keniu/security/main/aw;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2092
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 2094
    iget-object v1, p0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 2096
    iget-object v1, p0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    const v2, 0x7f0b0837

    invoke-virtual {v1, v2}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 2098
    iget-object v1, p0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    const v2, 0x7f0b0432

    invoke-virtual {v1, v2}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/keniu/security/main/ax;

    invoke-direct {v2, p0}, Lcom/keniu/security/main/ax;-><init>(Lcom/keniu/security/main/aw;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 2112
    iget-object v1, p0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    const v2, 0x7f0b042e

    invoke-virtual {v1, v2}, Lcom/keniu/security/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 2116
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 2123
    :goto_0
    return-void

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/aw;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/Context;)Lcom/keniu/security/main/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/a;->c()V

    goto :goto_0
.end method
