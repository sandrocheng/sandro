.class Lcom/avast/android/generic/notification/n;
.super Landroid/os/AsyncTask;
.source "AvastNotificationManager.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/notification/j;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/notification/j;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/avast/android/generic/notification/n;->a:Lcom/avast/android/generic/notification/j;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/avast/android/generic/notification/n;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/notification/n;->a:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/j;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/e;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 344
    return-object v2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 340
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/notification/n;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
