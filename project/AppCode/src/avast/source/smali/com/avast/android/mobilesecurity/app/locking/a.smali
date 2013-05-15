.class Lcom/avast/android/mobilesecurity/app/locking/a;
.super Ljava/lang/Object;
.source "BlockAvastPasswordActivity.java"

# interfaces
.implements Lcom/avast/android/generic/ui/ad;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/util/s;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;Lcom/avast/android/generic/util/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/a;->b:Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/locking/a;->a:Lcom/avast/android/generic/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/a;->a:Lcom/avast/android/generic/util/s;

    const v1, 0x7f07002b

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/a;->b:Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->a(Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;)Landroid/os/Handler$Callback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    .line 68
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/a;->b:Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->b()V

    .line 50
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/locking/a;->c()V

    .line 51
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/a;->b:Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->c()V

    .line 56
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/locking/a;->c()V

    .line 57
    return-void
.end method
