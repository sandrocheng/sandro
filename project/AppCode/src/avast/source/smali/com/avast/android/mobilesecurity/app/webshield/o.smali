.class Lcom/avast/android/mobilesecurity/app/webshield/o;
.super Landroid/database/ContentObserver;
.source "WebshieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

.field private final b:Lcom/avast/android/mobilesecurity/app/webshield/n;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;Landroid/os/Handler;Lcom/avast/android/mobilesecurity/app/webshield/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/o;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    .line 737
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 738
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/webshield/o;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 739
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 743
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 744
    if-eqz p1, :cond_0

    .line 751
    :goto_0
    return-void

    .line 748
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 749
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/o;->b:Lcom/avast/android/mobilesecurity/app/webshield/n;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 750
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/o;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;)Lcom/avast/android/mobilesecurity/app/webshield/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/app/webshield/m;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
