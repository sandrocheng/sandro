.class Lcom/avast/android/mobilesecurity/app/scanner/p;
.super Ljava/lang/Object;
.source "ScanResultHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/scanner/o;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/o;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->b:Lcom/avast/android/mobilesecurity/app/scanner/o;

    iput p2, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f0f0014

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 290
    new-instance v0, Lcom/avast/android/generic/notification/AvastPendingIntent;

    sget-object v1, Lcom/avast/android/generic/notification/s;->a:Lcom/avast/android/generic/notification/s;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Lcom/avast/android/generic/notification/s;Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    invoke-virtual {v0}, Lcom/avast/android/generic/notification/AvastPendingIntent;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "notificationId"

    const v3, 0x7f0b000e

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->b:Lcom/avast/android/mobilesecurity/app/scanner/o;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Lcom/avast/android/mobilesecurity/app/scanner/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 295
    new-instance v2, Lcom/avast/android/generic/notification/a;

    const-wide/32 v3, 0x7f0b000e

    iget v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->a:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1, v10, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/avast/android/generic/notification/a;-><init>(JLjava/lang/CharSequence;)V

    .line 297
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->b:Lcom/avast/android/mobilesecurity/app/scanner/o;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Lcom/avast/android/mobilesecurity/app/scanner/o;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c01ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->a:I

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v10, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/avast/android/generic/notification/AvastPendingIntent;)V

    .line 299
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->b:Lcom/avast/android/mobilesecurity/app/scanner/o;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Lcom/avast/android/mobilesecurity/app/scanner/o;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/notification/j;->a(Lcom/avast/android/generic/notification/a;)V

    .line 301
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/p;->b:Lcom/avast/android/mobilesecurity/app/scanner/o;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Lcom/avast/android/mobilesecurity/app/scanner/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avast.android.mobilesecurity.app.scanner.ACTION_PROBLEM_FOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 303
    return-void
.end method
