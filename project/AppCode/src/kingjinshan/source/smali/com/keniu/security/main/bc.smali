.class final Lcom/keniu/security/main/bc;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/a/m;

.field final synthetic b:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;Lcom/keniu/security/main/a/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3009
    iput-object p1, p0, Lcom/keniu/security/main/bc;->b:Lcom/keniu/security/main/MainActivity;

    iput-object p2, p0, Lcom/keniu/security/main/bc;->a:Lcom/keniu/security/main/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 3012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/main/bc;->a:Lcom/keniu/security/main/a/m;

    sget v2, Lcom/keniu/security/main/a/k;->o:I

    invoke-interface {v1, v2}, Lcom/keniu/security/main/a/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/bc;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->K(Lcom/keniu/security/main/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3016
    iget-object v1, p0, Lcom/keniu/security/main/bc;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->K(Lcom/keniu/security/main/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3017
    return-void
.end method
