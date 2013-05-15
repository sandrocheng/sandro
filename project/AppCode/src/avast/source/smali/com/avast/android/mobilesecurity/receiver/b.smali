.class Lcom/avast/android/mobilesecurity/receiver/b;
.super Landroid/os/AsyncTask;
.source "BootCompletedService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/receiver/b;->a:Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/receiver/b;->a:Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->e(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/receiver/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
