.class final Lcom/keniu/security/main/ag;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/keniu/security/main/ag;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/keniu/security/main/ag;->a:Lcom/keniu/security/main/MainActivity;

    iget-boolean v0, v0, Lcom/keniu/security/main/MainActivity;->f:Z

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/keniu/security/main/ag;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->u(Lcom/keniu/security/main/MainActivity;)V

    .line 1460
    :cond_0
    return-void
.end method
