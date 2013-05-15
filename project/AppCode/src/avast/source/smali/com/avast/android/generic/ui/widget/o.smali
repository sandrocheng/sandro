.class Lcom/avast/android/generic/ui/widget/o;
.super Ljava/lang/Object;
.source "PasswordTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/PasswordTextView;


# direct methods
.method private constructor <init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/o;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;Lcom/avast/android/generic/ui/widget/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/o;-><init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-static {}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->b()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/o;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a(Lcom/avast/android/generic/ui/widget/PasswordTextView;)Lcom/avast/android/generic/ui/widget/n;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/o;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-static {v1}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a(Lcom/avast/android/generic/ui/widget/PasswordTextView;)Lcom/avast/android/generic/ui/widget/n;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2}, Lcom/avast/android/generic/ui/widget/n;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/generic/ui/widget/n;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 150
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    if-le p4, p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->b()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/o;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a(Lcom/avast/android/generic/ui/widget/PasswordTextView;)Lcom/avast/android/generic/ui/widget/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/n;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/o;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-static {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a(Lcom/avast/android/generic/ui/widget/PasswordTextView;)Lcom/avast/android/generic/ui/widget/n;

    move-result-object v0

    add-int v1, p2, p4

    invoke-virtual {v0, v2, p2, v1}, Lcom/avast/android/generic/ui/widget/n;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    return-void
.end method
