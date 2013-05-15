.class Lcom/avast/android/generic/ui/ae;
.super Landroid/os/Handler;
.source "PasswordDialog.java"


# instance fields
.field a:Lcom/avast/android/generic/ae;

.field b:Z

.field final synthetic c:Lcom/avast/android/generic/ui/PasswordDialog;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/ui/PasswordDialog;Lcom/avast/android/generic/ae;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/avast/android/generic/ui/ae;->c:Lcom/avast/android/generic/ui/PasswordDialog;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/ae;->b:Z

    .line 104
    iput-object p2, p0, Lcom/avast/android/generic/ui/ae;->a:Lcom/avast/android/generic/ae;

    .line 105
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avast/android/generic/ui/ae;->c:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Lcom/avast/android/generic/ui/PasswordDialog;)Lcom/avast/android/generic/ui/widget/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/PasswordTextView;->a()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/avast/android/generic/ui/ae;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/generic/ui/ae;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ae;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/ae;->b:Z

    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/ui/ae;->c:Lcom/avast/android/generic/ui/PasswordDialog;

    invoke-static {v0}, Lcom/avast/android/generic/ui/PasswordDialog;->b(Lcom/avast/android/generic/ui/PasswordDialog;)V

    .line 127
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/ae;->b:Z

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/avast/android/generic/ui/ae;->a()V

    .line 118
    :cond_0
    return-void
.end method
