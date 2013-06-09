.class final Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/Dispatcher$Callbacks;


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchFinished()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    #getter for: Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->access$000(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks$1;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hitDispatched(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    #getter for: Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;
    invoke-static {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->access$100(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Lcom/google/android/apps/analytics/HitStore;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/analytics/HitStore;->deleteHit(J)V

    return-void
.end method
