.class Lcom/avast/android/generic/ui/widget/n;
.super Landroid/os/Handler;
.source "PasswordTextView.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/PasswordTextView;


# direct methods
.method private constructor <init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/n;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;Lcom/avast/android/generic/ui/widget/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/avast/android/generic/ui/widget/n;-><init>(Lcom/avast/android/generic/ui/widget/PasswordTextView;)V

    return-void
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 94
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 95
    if-lt v0, p2, :cond_0

    if-lt v0, p3, :cond_1

    .line 96
    :cond_0
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 94
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/n;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->b()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/n;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->getSelectionStart()I

    move-result v1

    .line 77
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 78
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 83
    invoke-direct {p0, v0, v2, v3}, Lcom/avast/android/generic/ui/widget/n;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/n;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v2, v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/avast/android/generic/ui/widget/n;->a:Lcom/avast/android/generic/ui/widget/PasswordTextView;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->setSelection(I)V

    .line 90
    :cond_0
    return-void
.end method
