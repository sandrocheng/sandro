.class Lcom/avast/android/generic/i;
.super Ljava/lang/Object;
.source "NotificationIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/notification/a;

.field final synthetic b:Lcom/avast/android/generic/NotificationIntentService;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/NotificationIntentService;Lcom/avast/android/generic/notification/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/avast/android/generic/i;->b:Lcom/avast/android/generic/NotificationIntentService;

    iput-object p2, p0, Lcom/avast/android/generic/i;->a:Lcom/avast/android/generic/notification/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/avast/android/generic/i;->b:Lcom/avast/android/generic/NotificationIntentService;

    invoke-static {v0}, Lcom/avast/android/generic/NotificationIntentService;->a(Lcom/avast/android/generic/NotificationIntentService;)Lcom/avast/android/generic/notification/j;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/i;->a:Lcom/avast/android/generic/notification/a;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/notification/j;->b(Lcom/avast/android/generic/notification/a;)V

    .line 70
    return-void
.end method
