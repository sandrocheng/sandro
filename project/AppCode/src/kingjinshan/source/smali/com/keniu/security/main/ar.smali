.class final Lcom/keniu/security/main/ar;
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
    .line 1713
    iput-object p1, p0, Lcom/keniu/security/main/ar;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/keniu/security/main/ar;->a:Lcom/keniu/security/main/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 1717
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1718
    return-void
.end method
