.class public Lcom/avast/android/mobilesecurity/app/messageshield/MessageScannerService;
.super Landroid/app/Service;
.source "MessageScannerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 38
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aj()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageScannerService;->stopSelf()V

    .line 44
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 41
    :cond_0
    const-string v0, "MessageScannerService: Old messages scan started."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/avast/android/mobilesecurity/app/messageshield/o;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/messageshield/a;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/messageshield/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/messageshield/o;-><init>(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/messageshield/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/messageshield/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
