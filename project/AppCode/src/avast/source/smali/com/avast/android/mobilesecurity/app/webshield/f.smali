.class Lcom/avast/android/mobilesecurity/app/webshield/f;
.super Landroid/os/AsyncTask;
.source "SiteCorrectActivity.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/f;->a:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/f;->a:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/f;->a:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->c(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/webshield/f;->a:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->f(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Lcom/avast/android/mobilesecurity/engine/ah;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;ZZ)V

    .line 133
    return-object v1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 128
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/webshield/f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
