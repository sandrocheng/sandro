.class Lcom/avast/android/generic/notification/m;
.super Landroid/os/AsyncTask;
.source "AvastNotificationManager.java"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/avast/android/generic/notification/j;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/notification/j;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/avast/android/generic/notification/m;->b:Lcom/avast/android/generic/notification/j;

    iput-wide p2, p0, Lcom/avast/android/generic/notification/m;->a:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 300
    iget-object v0, p0, Lcom/avast/android/generic/notification/m;->b:Lcom/avast/android/generic/notification/j;

    invoke-static {v0}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/j;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/notification/m;->b:Lcom/avast/android/generic/notification/j;

    invoke-static {v1}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/j;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/avast/android/generic/notification/m;->a:J

    invoke-static {v1, v2, v3}, Lcom/avast/android/generic/e;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    return-object v4
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 297
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/notification/m;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
