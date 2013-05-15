.class Lcom/avast/android/generic/ui/d;
.super Ljava/lang/Object;
.source "ChangePasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/ChangePasswordDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/ChangePasswordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/avast/android/generic/ui/d;->a:Lcom/avast/android/generic/ui/ChangePasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 171
    return-void
.end method
