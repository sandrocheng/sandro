.class Lcom/avast/android/mobilesecurity/app/filter/x;
.super Ljava/lang/Object;
.source "SmsBlockOfferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/x;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/x;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;Z)Z

    .line 145
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/x;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/x;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/x;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/x;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->d(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/filter/x;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->e(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 146
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/x;->a:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->f(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)V

    .line 147
    return-void
.end method
