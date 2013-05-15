.class Lcom/avast/android/mobilesecurity/app/filter/ad;
.super Ljava/lang/Object;
.source "TelBlockOfferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/ad;->a:Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/ad;->a:Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/TelBlockOfferActivity;->finish()V

    .line 93
    return-void
.end method
