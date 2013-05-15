.class public Lcom/google/analytics/tracking/android/TrackedExpandableListActivity;
.super Landroid/app/ExpandableListActivity;
.source "TrackedExpandableListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStart()V

    .line 28
    invoke-static {}, Lcom/google/analytics/tracking/android/p;->a()Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/p;->a(Landroid/app/Activity;)V

    .line 29
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStop()V

    .line 37
    invoke-static {}, Lcom/google/analytics/tracking/android/p;->a()Lcom/google/analytics/tracking/android/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/p;->b(Landroid/app/Activity;)V

    .line 38
    return-void
.end method
