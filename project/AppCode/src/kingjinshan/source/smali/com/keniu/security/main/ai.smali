.class final Lcom/keniu/security/main/ai;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/keniu/security/main/ai;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/keniu/security/main/ai;->a:Lcom/keniu/security/main/MainActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/keniu/security/main/MainActivity;->g:Z

    .line 1530
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1531
    return-void
.end method
