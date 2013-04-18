.class final Lcom/keniu/security/main/at;
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
    .line 1764
    iput-object p1, p0, Lcom/keniu/security/main/at;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/keniu/security/main/at;->a:Lcom/keniu/security/main/MainActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/MainActivity;->removeDialog(I)V

    .line 1768
    return-void
.end method
