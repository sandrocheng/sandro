.class final Lcom/keniu/security/main/ao;
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
    .line 1651
    iput-object p1, p0, Lcom/keniu/security/main/ao;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1654
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1655
    return-void
.end method
