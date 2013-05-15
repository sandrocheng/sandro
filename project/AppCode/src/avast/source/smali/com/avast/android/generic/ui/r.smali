.class Lcom/avast/android/generic/ui/r;
.super Ljava/lang/Object;
.source "CustomNumberDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/CustomNumberDialog;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/CustomNumberDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/avast/android/generic/ui/r;->a:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avast/android/generic/ui/r;->a:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-static {v0, p2}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Lcom/avast/android/generic/ui/CustomNumberDialog;Z)V

    .line 155
    iget-object v0, p0, Lcom/avast/android/generic/ui/r;->a:Lcom/avast/android/generic/ui/CustomNumberDialog;

    iget-object v1, p0, Lcom/avast/android/generic/ui/r;->a:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-static {v1}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Lcom/avast/android/generic/ui/CustomNumberDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Lcom/avast/android/generic/ui/CustomNumberDialog;Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method
