.class Lcom/avast/android/mobilesecurity/app/filter/z;
.super Landroid/os/AsyncTask;
.source "SmsBlockOfferActivity.java"


# instance fields
.field a:Z

.field final synthetic b:Landroid/content/ContentResolver;

.field final synthetic c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->b:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->a:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Long;)Ljava/lang/Void;
    .locals 6
    .parameter

    .prologue
    .line 385
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 393
    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/aa;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/aa;-><init>(Lcom/avast/android/mobilesecurity/app/filter/z;Landroid/content/Context;J)V

    .line 451
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/f;->a(Ljava/lang/String;)V

    .line 453
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->a:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->d(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->e(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 458
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->g(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/z;->a([Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
