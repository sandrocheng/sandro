.class Lcom/avast/android/generic/ui/x;
.super Ljava/lang/Object;
.source "PasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/PasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/PasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/avast/android/generic/ui/x;->a:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 315
    return-void
.end method
