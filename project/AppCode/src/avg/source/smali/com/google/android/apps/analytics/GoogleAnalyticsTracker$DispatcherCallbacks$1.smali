.class Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks$1;->this$1:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks$1;->this$1:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;

    iget-object v0, v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchFinished()V

    return-void
.end method
