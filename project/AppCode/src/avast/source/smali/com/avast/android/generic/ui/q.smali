.class Lcom/avast/android/generic/ui/q;
.super Ljava/lang/Object;
.source "CustomNumberDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/p;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/p;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/avast/android/generic/ui/q;->a:Lcom/avast/android/generic/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/avast/android/generic/ui/q;->a:Lcom/avast/android/generic/ui/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/p;->b:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Lcom/avast/android/generic/ui/CustomNumberDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/q;->a:Lcom/avast/android/generic/ui/p;

    iget-object v1, v1, Lcom/avast/android/generic/ui/p;->b:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-static {v1}, Lcom/avast/android/generic/ui/CustomNumberDialog;->b(Lcom/avast/android/generic/ui/CustomNumberDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 114
    sget v0, Lcom/avast/android/generic/t;->V:I

    iput v0, v1, Landroid/os/Message;->what:I

    .line 115
    iget-object v0, p0, Lcom/avast/android/generic/ui/q;->a:Lcom/avast/android/generic/ui/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/p;->b:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->b(Lcom/avast/android/generic/ui/CustomNumberDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 116
    iget-object v0, p0, Lcom/avast/android/generic/ui/q;->a:Lcom/avast/android/generic/ui/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/p;->b:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Lcom/avast/android/generic/ui/CustomNumberDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/avast/android/generic/ui/q;->a:Lcom/avast/android/generic/ui/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/p;->b:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/s;->a(Landroid/os/Message;)Z

    .line 119
    iget-object v0, p0, Lcom/avast/android/generic/ui/q;->a:Lcom/avast/android/generic/ui/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/p;->b:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/q;->a:Lcom/avast/android/generic/ui/p;

    iget-object v0, v0, Lcom/avast/android/generic/ui/p;->b:Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v1, "Error dismissing custom number dialog."

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
