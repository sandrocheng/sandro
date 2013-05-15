.class Lcom/avast/android/generic/app/account/b;
.super Ljava/lang/Object;
.source "AccountDisconnectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/AccountDisconnectDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/AccountDisconnectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avast/android/generic/app/account/b;->a:Lcom/avast/android/generic/app/account/AccountDisconnectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/generic/app/account/b;->a:Lcom/avast/android/generic/app/account/AccountDisconnectDialog;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;->a(Lcom/avast/android/generic/app/account/AccountDisconnectDialog;)V

    .line 61
    return-void
.end method
