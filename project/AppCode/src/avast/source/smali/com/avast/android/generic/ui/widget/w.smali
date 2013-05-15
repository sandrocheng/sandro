.class Lcom/avast/android/generic/ui/widget/w;
.super Ljava/lang/Object;
.source "SelectorRow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/w;->a:Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 494
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/w;->a:Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->a(Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;)I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I

    .line 495
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 496
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/w;->a:Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/SelectorRow$SelectorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/s;->a(Landroid/os/Message;)Z

    .line 498
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 499
    return-void
.end method
