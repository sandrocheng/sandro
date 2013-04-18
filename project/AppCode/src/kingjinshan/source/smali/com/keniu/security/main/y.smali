.class final Lcom/keniu/security/main/y;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/keniu/security/main/y;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/keniu/security/main/y;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->e(Lcom/keniu/security/main/MainActivity;)Lcom/keniu/security/main/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/bi;->a()V

    .line 251
    iget-object v0, p0, Lcom/keniu/security/main/y;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->f(Lcom/keniu/security/main/MainActivity;)Z

    .line 252
    iget-object v0, p0, Lcom/keniu/security/main/y;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->g(Lcom/keniu/security/main/MainActivity;)V

    .line 254
    return-void
.end method
